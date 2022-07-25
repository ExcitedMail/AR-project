# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "line_lbd: 10 messages, 0 services")

set(MSG_I_FLAGS "-Iline_lbd:/home/brian/catkin_ws/src/cube_slam/line_lbd/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(line_lbd_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg" ""
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg" ""
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg" ""
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg" "line_lbd/Keyline"
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg" "sensor_msgs/Image:line_lbd/combined_boxes:std_msgs/Header"
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg" ""
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg" ""
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg" ""
)

get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg" NAME_WE)
add_custom_target(_line_lbd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_lbd" "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg" "line_lbd/anchor_pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)
_generate_msg_cpp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
)

### Generating Services

### Generating Module File
_generate_module_cpp(line_lbd
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(line_lbd_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(line_lbd_generate_messages line_lbd_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_cpp _line_lbd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_lbd_gencpp)
add_dependencies(line_lbd_gencpp line_lbd_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_lbd_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)
_generate_msg_eus(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
)

### Generating Services

### Generating Module File
_generate_module_eus(line_lbd
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(line_lbd_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(line_lbd_generate_messages line_lbd_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_eus _line_lbd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_lbd_geneus)
add_dependencies(line_lbd_geneus line_lbd_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_lbd_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)
_generate_msg_lisp(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
)

### Generating Services

### Generating Module File
_generate_module_lisp(line_lbd
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(line_lbd_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(line_lbd_generate_messages line_lbd_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_lisp _line_lbd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_lbd_genlisp)
add_dependencies(line_lbd_genlisp line_lbd_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_lbd_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)
_generate_msg_nodejs(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
)

### Generating Services

### Generating Module File
_generate_module_nodejs(line_lbd
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(line_lbd_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(line_lbd_generate_messages line_lbd_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_nodejs _line_lbd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_lbd_gennodejs)
add_dependencies(line_lbd_gennodejs line_lbd_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_lbd_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)
_generate_msg_py(line_lbd
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg"
  "${MSG_I_FLAGS}"
  "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
)

### Generating Services

### Generating Module File
_generate_module_py(line_lbd
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(line_lbd_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(line_lbd_generate_messages line_lbd_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_mat.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/My_image.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/updateServer.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/Keyline_vec.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/final_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/combined_boxes.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/my_pose.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brian/catkin_ws/src/cube_slam/line_lbd/msg/anchor_objects.msg" NAME_WE)
add_dependencies(line_lbd_generate_messages_py _line_lbd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_lbd_genpy)
add_dependencies(line_lbd_genpy line_lbd_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_lbd_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_lbd
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(line_lbd_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(line_lbd_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_lbd
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(line_lbd_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(line_lbd_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_lbd
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(line_lbd_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(line_lbd_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_lbd
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(line_lbd_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(line_lbd_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_lbd
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(line_lbd_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(line_lbd_generate_messages_py sensor_msgs_generate_messages_py)
endif()
