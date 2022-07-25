// Generated by gencpp from file line_lbd/final_pose.msg
// DO NOT EDIT!


#ifndef LINE_LBD_MESSAGE_FINAL_POSE_H
#define LINE_LBD_MESSAGE_FINAL_POSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <line_lbd/combined_boxes.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/Image.h>

namespace line_lbd
{
template <class ContainerAllocator>
struct final_pose_
{
  typedef final_pose_<ContainerAllocator> Type;

  final_pose_()
    : id()
    , rot()
    , trans()
    , rot_tcw()
    , trans_tcw()
    , count(0)
    , boxes()
    , image_now()
    , image_raw()  {
    }
  final_pose_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , rot(_alloc)
    , trans(_alloc)
    , rot_tcw(_alloc)
    , trans_tcw(_alloc)
    , count(0)
    , boxes(_alloc)
    , image_now(_alloc)
    , image_raw(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _rot_type;
  _rot_type rot;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _trans_type;
  _trans_type trans;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _rot_tcw_type;
  _rot_tcw_type rot_tcw;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _trans_tcw_type;
  _trans_tcw_type trans_tcw;

   typedef uint32_t _count_type;
  _count_type count;

   typedef std::vector< ::line_lbd::combined_boxes_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::line_lbd::combined_boxes_<ContainerAllocator> >::other >  _boxes_type;
  _boxes_type boxes;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_now_type;
  _image_now_type image_now;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_raw_type;
  _image_raw_type image_raw;





  typedef boost::shared_ptr< ::line_lbd::final_pose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::line_lbd::final_pose_<ContainerAllocator> const> ConstPtr;

}; // struct final_pose_

typedef ::line_lbd::final_pose_<std::allocator<void> > final_pose;

typedef boost::shared_ptr< ::line_lbd::final_pose > final_posePtr;
typedef boost::shared_ptr< ::line_lbd::final_pose const> final_poseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::line_lbd::final_pose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::line_lbd::final_pose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::line_lbd::final_pose_<ContainerAllocator1> & lhs, const ::line_lbd::final_pose_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.rot == rhs.rot &&
    lhs.trans == rhs.trans &&
    lhs.rot_tcw == rhs.rot_tcw &&
    lhs.trans_tcw == rhs.trans_tcw &&
    lhs.count == rhs.count &&
    lhs.boxes == rhs.boxes &&
    lhs.image_now == rhs.image_now &&
    lhs.image_raw == rhs.image_raw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::line_lbd::final_pose_<ContainerAllocator1> & lhs, const ::line_lbd::final_pose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace line_lbd

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::line_lbd::final_pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::line_lbd::final_pose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::line_lbd::final_pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::line_lbd::final_pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::line_lbd::final_pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::line_lbd::final_pose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::line_lbd::final_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034751c78d84c01a4a6c3cdc829b038b";
  }

  static const char* value(const ::line_lbd::final_pose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034751c78d84c01aULL;
  static const uint64_t static_value2 = 0x4a6c3cdc829b038bULL;
};

template<class ContainerAllocator>
struct DataType< ::line_lbd::final_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "line_lbd/final_pose";
  }

  static const char* value(const ::line_lbd::final_pose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::line_lbd::final_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
"float32[] rot\n"
"float32[] trans\n"
"float32[] rot_tcw\n"
"float32[] trans_tcw\n"
"uint32 count\n"
"combined_boxes[] boxes\n"
"sensor_msgs/Image image_now\n"
"sensor_msgs/Image image_raw\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: line_lbd/combined_boxes\n"
"int8[] type_\n"
"float32[] BoundingBox2D\n"
"float32[] BoundingBox3D\n"
"string class_name\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::line_lbd::final_pose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::line_lbd::final_pose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.rot);
      stream.next(m.trans);
      stream.next(m.rot_tcw);
      stream.next(m.trans_tcw);
      stream.next(m.count);
      stream.next(m.boxes);
      stream.next(m.image_now);
      stream.next(m.image_raw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct final_pose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::line_lbd::final_pose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::line_lbd::final_pose_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "rot[]" << std::endl;
    for (size_t i = 0; i < v.rot.size(); ++i)
    {
      s << indent << "  rot[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.rot[i]);
    }
    s << indent << "trans[]" << std::endl;
    for (size_t i = 0; i < v.trans.size(); ++i)
    {
      s << indent << "  trans[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.trans[i]);
    }
    s << indent << "rot_tcw[]" << std::endl;
    for (size_t i = 0; i < v.rot_tcw.size(); ++i)
    {
      s << indent << "  rot_tcw[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.rot_tcw[i]);
    }
    s << indent << "trans_tcw[]" << std::endl;
    for (size_t i = 0; i < v.trans_tcw.size(); ++i)
    {
      s << indent << "  trans_tcw[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.trans_tcw[i]);
    }
    s << indent << "count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.count);
    s << indent << "boxes[]" << std::endl;
    for (size_t i = 0; i < v.boxes.size(); ++i)
    {
      s << indent << "  boxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::line_lbd::combined_boxes_<ContainerAllocator> >::stream(s, indent + "    ", v.boxes[i]);
    }
    s << indent << "image_now: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image_now);
    s << indent << "image_raw: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image_raw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LINE_LBD_MESSAGE_FINAL_POSE_H
