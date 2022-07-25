# run this if "from cv_bridge.boost.cv_bridge_boost import getCvType" failed
cd ~/catkin_workspace
catkin build cv_bridge
source install/setup.bash --extend
cp -r ./install/ ~/catkin_ws/install/
cp -r ./src/vision_opencv/ ~/catkin_ws/src/vision_opencv/
cd
source catkin_ws/devel/setup.bash catkin_ws/install/setup.bash --extend
source catkin_ws/my_env/bin/activate