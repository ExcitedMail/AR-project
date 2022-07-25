#!/usr/bin/env python3
# -*- encoding: utf-8 -*-

import rospy
import json
import websockets
from uuid import uuid4
import asyncio
import numpy as np
import cv2
import base64
from MegaDepth.sample import Depth
# from GLPDepth.code.sample import Depth

from line_lbd.msg import final_pose
from line_lbd.msg import combined_boxes
from line_lbd.msg import My_image
from line_lbd.msg import updateServer

from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import Virtual_Angle as VA

def write2file(filepath, str):
    with open(filepath, 'a') as f:
        f.write(str)
    f.close()

wsSend = lambda ws, msg: ws.send(json.dumps(msg))
wsPub = lambda ws, topic, data: wsSend(ws, {'op':'publish', 'topic':topic, 'msg':{'data':data}})

br = CvBridge()

class Client_Server:
    def __init__(self, topic):
        self.sub = rospy.Subscriber("/final_pose", final_pose, self.return_callback)
        self.update_sub = rospy.Subscriber("/update_pose_python", updateServer, self.update_callback)
        self.net = Depth(640,480)
        self.topic = topic
        self.has_pose = False
        self.has_update = False
        self.has_host = False
        self.update_now = ""
        self.pose_now = ""
        self.save_ids = []
        self.file = "/home/brian/Documents/experiment/pose.txt"
        self.experiment = ""
        self.host_frame_id = 0
        self.save_id = 0
        self.VO = VA.Virtual_Angle(True,False)
        self.set_host_done = False
        self.has_viewer = False
        self.set_viewer_done = False
        self.has_initialize = False
        self.has_initialize_send = False
        self.relocalize = False

    def update_callback(self, data):
        # print("get update")
        update_id = data.id
        pose_rot = data.rot
        pose_trans = data.trans
        total_data = "UP,{}".format(update_id)
        # for i in range(size):
        update_rot = self.parse_to_string(pose_rot)
        update_trans = self.parse_to_string(pose_trans)
        total_data+=",{},{}".format(update_rot,update_trans)
        self.update_now = total_data
        # print("update data: ",self.update_now)
        self.has_update = True

    def return_callback(self,data):
        id_ = data.id
        # self.relocalize = (id_=="reloc")
        Rot_tmp = data.rot
        Trans_tmp = data.trans
        count = data.count
        boxes = data.boxes
        # boxes_type = data.types
        # boxes_2d = data.boxes_2d
        # boxes_3d = data.boxes_3d 
        Rot = self.parse_to_string(Rot_tmp)
        Trans = self.parse_to_string(Trans_tmp)
        total_data = "BB_{}_[{}]_[{}]_{}".format(id_,Rot,Trans,count)
        total_data_tmp = "BB_{}_[{}]_[{}]_{}".format(id_,Rot,Trans,count)
        
        if(count==0):
            total_data+="_"
            total_data_tmp+="_"

        for i in range(count):
            box_type = self.parse_to_string(boxes[i].type_)
            box_2d = self.parse_to_string(boxes[i].BoundingBox2D)
            box_3d = self.parse_to_string(boxes[i].BoundingBox3D)
            box_class = boxes[i].class_name
            total_data+="_[{}]_[{}]_[{}]".format(box_type,box_2d,box_3d)
            total_data_tmp+="_{}_[{}]_[{}]_[{}]".format(box_class,box_type,box_2d,box_3d)

        cv_image = br.imgmsg_to_cv2(data.image_now, "rgb8")

        if(self.has_host):
            self.VO.set_host(total_data_tmp,(340,240),1.0,cv_image)
            cv_image = br.imgmsg_to_cv2(data.image_now, "rgb8")
            depth_image = self.net.depth_estimate(cv_image)
            host_num = len(self.VO.host_classes)
            self.host_depth = depth_image.copy()
            # print(depth_image.shape)
            # if(host_num>1):
            if(True):
                write2file(self.file, f"host num: {host_num}, depth: 1.0\n")
                self.has_host = False
                self.set_host_done = True
        
        if(self.has_viewer):
            pose = self.VO.scene_check(total_data_tmp)
            if(len(pose)!=0):
                print("viewer done")
                cv_image = br.imgmsg_to_cv2(data.image_now, "rgb8")
                depth_image = self.net.depth_estimate(cv_image)
                # cv2.imwrite('/home/brian/Documents/experiment/host_depth.png', self.host_depth*255)
                # cv2.imwrite('/home/brian/Documents/experiment/view_depth.png', depth_image*255)
                depth_h = self.host_depth[self.VO.select_depth_center_host[0],self.VO.select_depth_center_host[1]]
                # self.viewer_depth = 1*(depth_image[self.VO.select_depth_center_viewer[0],self.VO.select_depth_center_viewer[1]]/depth_h)
                self.viewer_depth = depth_image[self.VO.select_depth_center_viewer[0],self.VO.select_depth_center_viewer[1]]
                # self.viewer_depth = "input depth"*(depth_image[self.VO.select_depth_center_viewer[0],self.VO.select_depth_center_viewer[1]]/depth_h)
                print(f"host depth: {depth_h}, depth ratio:{self.viewer_depth}")
                # if(self.viewer_depth<=1):
                #     self.viewer_depth = 1.2
                # self.viewer_pose = f"viewer_done,{pose[0]},{pose[1]},{self.viewer_depth}"
                self.viewer_pose = f"viewer_done,{pose[0]},{pose[1]},{self.VO.sm_angle}"
                write2file(self.file, f"pose: {pose[0]:.4f}, {pose[1]:.4f}, depth ratio: {self.viewer_depth:.4f}, angle: {self.VO.sm_angle}\n")
                self.set_viewer_done = True
                self.has_viewer = False

        if(self.has_initialize_send==False):
            self.has_initialize = True

        self.pose_now = total_data
        self.has_pose = True        
    
    def parse_to_string(self,data):
        return_data = ""
        for i in range(len(data)-1):
            return_data+=str(data[i])
            return_data+=","
        return_data+=str(data[len(data)-1])
        return return_data

    def set_host_frame_id(self,id_):
        self.host_frame_id = id_
        self.has_host = True

def parse(data):
    tmp = data.find("_")
    id_ = data[0:tmp]
    # print("===============================",id_)
    data = data[tmp+1:].strip()
    tmp = data.find("_")
    placeVO = data[0:tmp]
    # print("==============================={}=============".format(placeVO))
    image_raw = data[tmp+1:].strip()
    frame = bytes(image_raw,'utf-8')
    frame = base64.decodebytes(frame)
    frame = np.frombuffer(frame, np.int8)
    frame = cv2.imdecode(frame, -1)
    # frame = cv2.resize(frame,(640,480))
    frame = cv2.cvtColor(frame, cv2.COLOR_RGB2BGR)
    # mat = np.asarray(image_raw, dtype=np.uint8)
    return id_, placeVO, frame        
    # print 'Cols n Row ' + str(mat.shape[1]) + " " + str(mat.shape[0]

async def main_loop():
    async with websockets.connect('ws://localhost:9090') as websocket:
        rospy.init_node("test_publiser", anonymous=True)
        pub = rospy.Publisher('/camera/rgb/image_raw', Image,queue_size=10)
        my_pub = rospy.Publisher('/camera/rgb/My_image', My_image,queue_size=10)

        save_image = False
        topic = "/IRL_SLAM"
        server = Client_Server(topic)
        await wsSend(websocket, {
            'op':'advertise',
            'topic':topic,
            'type':'std_msgs/String'
        })

        await wsSend(websocket, {
            'op':'subscribe',
            'id': str(uuid4()),
            'topic':'/chatter',
            'type':'std_msgs/String',
            'queue_length':5
        })

        while True:
            try:
                # if(server.relocalize):
                    # server.has_pose = False
                    # print(server.pose_now)
                    # await wsPub(websocket, topic, "relocalize")

                if(server.has_initialize):
                    # server.has_pose = False
                    # print(server.pose_now)
                    await wsPub(websocket, topic, "initialize")
                    server.has_initialize_send = True
                    server.has_initialize = False
                
                if(server.has_update):
                    # print("send update !!!!!!!!!!!!!!!!!")
                    server.has_update = False
                    # print("++++++++++++++++++++++++",server.update_now)
                    await wsPub(websocket, topic, server.update_now)
                
                # print("++++++++++++++++++++++++",server.update_now)
                json_message = await websocket.recv()
                recv_message = json.loads(json_message)
                raw_data = recv_message['msg']['data']
                # print(raw_data)
                
                if(len(raw_data)!=0):
                    # print("publish image")
                    id_now, place_now, image_now = parse(raw_data)
                    if(place_now == "viewer"):
                        if(not server.relocalize):
                            print(f"has_host, relocalize")
                            await wsPub(websocket, topic, "relocalize")
                        else:
                            server.has_viewer = True
                            print(f"[virtual_angle/scene_check] start")

                    if(server.set_viewer_done):
                        print(f"{server.viewer_pose}")
                        server.set_viewer_done = False
                        # server.has_pose = False
                        # print(server.pose_now)
                        await wsPub(websocket, topic, server.viewer_pose)
                       
                    if(place_now == "host"):
                        # if(server.relocalize):
                        #     print(f"has_host, relocalize")
                        #     await wsPub(websocket, topic, "relocalize")
                        server.has_host = True

                    if(server.set_host_done):
                        # server.has_pose = False
                        # print(server.pose_now)
                        await wsPub(websocket, topic, "host_set")
                        server.set_host_done = False
                        server.relocalize = True
                        
                    msg = br.cv2_to_imgmsg(image_now, "rgb8")
                    msg.header.frame_id = id_now 
                    My_msg = My_image()
                    My_msg.id = id_now
                    My_msg.image_now = msg
                    pub.publish(msg)
                    my_pub.publish(My_msg)
            
            except Exception as e:
                print("connected loss", e)
                return

if __name__ == '__main__':
    asyncio.get_event_loop().run_until_complete(main_loop())