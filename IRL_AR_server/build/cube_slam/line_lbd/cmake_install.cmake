# Install script for directory: /home/brian/catkin_ws/src/cube_slam/line_lbd

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/brian/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/line_lbd/msg" TYPE FILE FILES
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
    "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/line_lbd/cmake" TYPE FILE FILES "/home/brian/catkin_ws/build/cube_slam/line_lbd/catkin_generated/installspace/line_lbd-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/brian/catkin_ws/devel/include/line_lbd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/brian/catkin_ws/devel/share/roseus/ros/line_lbd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/brian/catkin_ws/devel/share/common-lisp/ros/line_lbd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/brian/catkin_ws/devel/share/gennodejs/ros/line_lbd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/brian/catkin_ws/devel/lib/python2.7/dist-packages/line_lbd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/brian/catkin_ws/devel/lib/python2.7/dist-packages/line_lbd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/brian/catkin_ws/build/cube_slam/line_lbd/catkin_generated/installspace/line_lbd.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/line_lbd/cmake" TYPE FILE FILES "/home/brian/catkin_ws/build/cube_slam/line_lbd/catkin_generated/installspace/line_lbd-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/line_lbd/cmake" TYPE FILE FILES
    "/home/brian/catkin_ws/build/cube_slam/line_lbd/catkin_generated/installspace/line_lbdConfig.cmake"
    "/home/brian/catkin_ws/build/cube_slam/line_lbd/catkin_generated/installspace/line_lbdConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/line_lbd" TYPE FILE FILES "/home/brian/catkin_ws/src/cube_slam/line_lbd/package.xml")
endif()

