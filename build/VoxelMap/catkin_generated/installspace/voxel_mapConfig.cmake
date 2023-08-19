# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(voxel_map_CONFIG_INCLUDED)
  return()
endif()
set(voxel_map_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(voxel_map_SOURCE_PREFIX /home/kim-james/ROS_Space/voxelmap_ws/src/VoxelMap)
  set(voxel_map_DEVEL_PREFIX /home/kim-james/ROS_Space/voxelmap_ws/devel)
  set(voxel_map_INSTALL_PREFIX "")
  set(voxel_map_PREFIX ${voxel_map_DEVEL_PREFIX})
else()
  set(voxel_map_SOURCE_PREFIX "")
  set(voxel_map_DEVEL_PREFIX "")
  set(voxel_map_INSTALL_PREFIX /home/kim-james/ROS_Space/voxelmap_ws/install)
  set(voxel_map_PREFIX ${voxel_map_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'voxel_map' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(voxel_map_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include;/usr/include/eigen3;/usr/local/include/pcl-1.12;/usr/include;/usr/local/include/vtk-8.2 " STREQUAL " ")
  set(voxel_map_INCLUDE_DIRS "")
  set(_include_dirs "include;/usr/include/eigen3;/usr/local/include/pcl-1.12;/usr/include;/usr/local/include/vtk-8.2")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Fu Zhang <fuzhang@hku.hk>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${voxel_map_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'voxel_map' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'voxel_map' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(voxel_map_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "/usr/local/lib/libpcl_common.so;/usr/local/lib/libpcl_kdtree.so;/usr/local/lib/libpcl_octree.so;/usr/local/lib/libpcl_search.so;/usr/local/lib/libpcl_sample_consensus.so;/usr/local/lib/libpcl_filters.so;/usr/local/lib/libpcl_io.so;/usr/local/lib/libpcl_features.so;/usr/local/lib/libpcl_ml.so;/usr/local/lib/libpcl_segmentation.so;/usr/local/lib/libpcl_visualization.so;/usr/local/lib/libpcl_surface.so;/usr/local/lib/libpcl_registration.so;/usr/local/lib/libpcl_keypoints.so;/usr/local/lib/libpcl_tracking.so;/usr/local/lib/libpcl_recognition.so;/usr/local/lib/libpcl_stereo.so;/usr/local/lib/libpcl_outofcore.so;/usr/local/lib/libpcl_people.so;optimized;/usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0;debug;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;optimized;/usr/lib/x86_64-linux-gnu/libqhull_r.so;debug;/usr/lib/x86_64-linux-gnu/libqhull_r.so;/usr/local/lib/libvtkChartsCore-8.2.so.1;/usr/local/lib/libvtkCommonColor-8.2.so.1;/usr/local/lib/libvtkCommonCore-8.2.so.1;/usr/local/lib/libvtksys-8.2.so.1;/usr/local/lib/libvtkCommonDataModel-8.2.so.1;/usr/local/lib/libvtkCommonMath-8.2.so.1;/usr/local/lib/libvtkCommonMisc-8.2.so.1;/usr/local/lib/libvtkCommonSystem-8.2.so.1;/usr/local/lib/libvtkCommonTransforms-8.2.so.1;/usr/local/lib/libvtkCommonExecutionModel-8.2.so.1;/usr/local/lib/libvtkFiltersGeneral-8.2.so.1;/usr/local/lib/libvtkCommonComputationalGeometry-8.2.so.1;/usr/local/lib/libvtkFiltersCore-8.2.so.1;/usr/local/lib/libvtkInfovisCore-8.2.so.1;/usr/local/lib/libvtkFiltersExtraction-8.2.so.1;/usr/local/lib/libvtkFiltersStatistics-8.2.so.1;/usr/local/lib/libvtkImagingFourier-8.2.so.1;/usr/local/lib/libvtkImagingCore-8.2.so.1;/usr/local/lib/libvtkRenderingContext2D-8.2.so.1;/usr/local/lib/libvtkRenderingCore-8.2.so.1;/usr/local/lib/libvtkFiltersGeometry-8.2.so.1;/usr/local/lib/libvtkFiltersSources-8.2.so.1;/usr/local/lib/libvtkRenderingFreeType-8.2.so.1;/usr/local/lib/libvtkfreetype-8.2.so.1;/usr/local/lib/libvtkzlib-8.2.so.1;/usr/local/lib/libvtkFiltersModeling-8.2.so.1;/usr/local/lib/libvtkImagingSources-8.2.so.1;/usr/local/lib/libvtkInteractionStyle-8.2.so.1;/usr/local/lib/libvtkInteractionWidgets-8.2.so.1;/usr/local/lib/libvtkFiltersHybrid-8.2.so.1;/usr/local/lib/libvtkImagingColor-8.2.so.1;/usr/local/lib/libvtkImagingGeneral-8.2.so.1;/usr/local/lib/libvtkImagingHybrid-8.2.so.1;/usr/local/lib/libvtkIOImage-8.2.so.1;/usr/local/lib/libvtkDICOMParser-8.2.so.1;/usr/local/lib/libvtkmetaio-8.2.so.1;/usr/local/lib/libvtkjpeg-8.2.so.1;/usr/local/lib/libvtkpng-8.2.so.1;/usr/local/lib/libvtktiff-8.2.so.1;/usr/local/lib/libvtkRenderingAnnotation-8.2.so.1;/usr/local/lib/libvtkRenderingVolume-8.2.so.1;/usr/local/lib/libvtkIOXML-8.2.so.1;/usr/local/lib/libvtkIOCore-8.2.so.1;/usr/local/lib/libvtkdoubleconversion-8.2.so.1;/usr/local/lib/libvtklz4-8.2.so.1;/usr/local/lib/libvtklzma-8.2.so.1;/usr/local/lib/libvtkIOXMLParser-8.2.so.1;/usr/local/lib/libvtkexpat-8.2.so.1;/usr/local/lib/libvtkIOGeometry-8.2.so.1;/usr/local/lib/libvtkIOLegacy-8.2.so.1;/usr/local/lib/libvtkIOPLY-8.2.so.1;/usr/local/lib/libvtkRenderingLOD-8.2.so.1;/usr/local/lib/libvtkViewsCore-8.2.so.1;/usr/local/lib/libvtkViewsContext2D-8.2.so.1;/usr/local/lib/libvtkRenderingOpenGL2-8.2.so.1;/usr/local/lib/libvtkglew-8.2.so.1;/usr/lib/x86_64-linux-gnu/libflann_cpp_s.a")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND voxel_map_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND voxel_map_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT voxel_map_NUM_DUMMY_TARGETS)
      set(voxel_map_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::voxel_map::wrapped-linker-option${voxel_map_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR voxel_map_NUM_DUMMY_TARGETS "${voxel_map_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::voxel_map::wrapped-linker-option${voxel_map_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND voxel_map_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND voxel_map_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND voxel_map_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/kim-james/ROS_Space/voxelmap_ws/install/lib;/opt/ros/noetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(voxel_map_LIBRARY_DIRS ${lib_path})
      list(APPEND voxel_map_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'voxel_map'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND voxel_map_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(voxel_map_EXPORTED_TARGETS "voxel_map_generate_messages_cpp;voxel_map_generate_messages_eus;voxel_map_generate_messages_lisp;voxel_map_generate_messages_nodejs;voxel_map_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${voxel_map_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "geometry_msgs;nav_msgs;roscpp;rospy;std_msgs;message_runtime")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 voxel_map_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${voxel_map_dep}_FOUND)
      find_package(${voxel_map_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${voxel_map_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(voxel_map_INCLUDE_DIRS ${${voxel_map_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(voxel_map_LIBRARIES ${voxel_map_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${voxel_map_dep}_LIBRARIES})
  _list_append_deduplicate(voxel_map_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(voxel_map_LIBRARIES ${voxel_map_LIBRARIES})

  _list_append_unique(voxel_map_LIBRARY_DIRS ${${voxel_map_dep}_LIBRARY_DIRS})
  _list_append_deduplicate(voxel_map_EXPORTED_TARGETS ${${voxel_map_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "voxel_map-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${voxel_map_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
