# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cmake_modules;roscpp;nav_msgs;sensor_msgs;message_filters;image_transport;cv_bridge;pcl_ros;pcl_conversions;detect_3d_cuboid;tictoc_profiler".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lorb_object_slam".split(';') if "-lorb_object_slam" != "" else []
PROJECT_NAME = "orb_object_slam"
PROJECT_SPACE_DIR = "/home/brian/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
