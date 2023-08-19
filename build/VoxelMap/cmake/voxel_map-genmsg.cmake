# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "voxel_map: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ivoxel_map:/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(voxel_map_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg" NAME_WE)
add_custom_target(_voxel_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxel_map" "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg" ""
)

get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg" NAME_WE)
add_custom_target(_voxel_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxel_map" "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxel_map
)
_generate_msg_cpp(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxel_map
)

### Generating Services

### Generating Module File
_generate_module_cpp(voxel_map
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxel_map
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(voxel_map_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(voxel_map_generate_messages voxel_map_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_cpp _voxel_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_cpp _voxel_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxel_map_gencpp)
add_dependencies(voxel_map_gencpp voxel_map_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxel_map_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxel_map
)
_generate_msg_eus(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxel_map
)

### Generating Services

### Generating Module File
_generate_module_eus(voxel_map
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxel_map
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(voxel_map_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(voxel_map_generate_messages voxel_map_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_eus _voxel_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_eus _voxel_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxel_map_geneus)
add_dependencies(voxel_map_geneus voxel_map_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxel_map_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxel_map
)
_generate_msg_lisp(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxel_map
)

### Generating Services

### Generating Module File
_generate_module_lisp(voxel_map
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxel_map
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(voxel_map_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(voxel_map_generate_messages voxel_map_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_lisp _voxel_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_lisp _voxel_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxel_map_genlisp)
add_dependencies(voxel_map_genlisp voxel_map_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxel_map_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxel_map
)
_generate_msg_nodejs(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxel_map
)

### Generating Services

### Generating Module File
_generate_module_nodejs(voxel_map
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxel_map
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(voxel_map_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(voxel_map_generate_messages voxel_map_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_nodejs _voxel_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_nodejs _voxel_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxel_map_gennodejs)
add_dependencies(voxel_map_gennodejs voxel_map_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxel_map_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxel_map
)
_generate_msg_py(voxel_map
  "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxel_map
)

### Generating Services

### Generating Module File
_generate_module_py(voxel_map
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxel_map
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(voxel_map_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(voxel_map_generate_messages voxel_map_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/Pose6D.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_py _voxel_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap/msg/States.msg" NAME_WE)
add_dependencies(voxel_map_generate_messages_py _voxel_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxel_map_genpy)
add_dependencies(voxel_map_genpy voxel_map_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxel_map_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxel_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxel_map
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(voxel_map_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxel_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxel_map
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(voxel_map_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxel_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxel_map
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(voxel_map_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxel_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxel_map
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(voxel_map_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxel_map)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxel_map\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxel_map
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(voxel_map_generate_messages_py geometry_msgs_generate_messages_py)
endif()
