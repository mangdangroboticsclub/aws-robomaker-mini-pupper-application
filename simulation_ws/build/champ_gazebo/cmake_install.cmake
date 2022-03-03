# Install script for directory: /home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/install/champ_gazebo")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/champ_gazebo/catkin_generated/installspace/champ_gazebo.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/champ_gazebo/cmake" TYPE FILE FILES
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/champ_gazebo/catkin_generated/installspace/champ_gazeboConfig.cmake"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/champ_gazebo/catkin_generated/installspace/champ_gazeboConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/champ_gazebo" TYPE FILE FILES "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo" TYPE PROGRAM FILES
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo/scripts/imu_sensor.py"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo/scripts/odometry_tf.py"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo/scripts/odometry.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo/contact_sensor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo/contact_sensor")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo/contact_sensor"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo" TYPE EXECUTABLE FILES "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/champ_gazebo/devel/lib/champ_gazebo/contact_sensor")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo/contact_sensor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo/contact_sensor")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo/contact_sensor"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-9/plugins:/opt/ros/melodic/lib/liburdf.so:/usr/lib/x86_64-linux-gnu/liburdfdom_sensor.so:/usr/lib/x86_64-linux-gnu/liburdfdom_model_state.so:/usr/lib/x86_64-linux-gnu/liburdfdom_model.so:/usr/lib/x86_64-linux-gnu/liburdfdom_world.so:/usr/lib/x86_64-linux-gnu/libtinyxml.so:/opt/ros/melodic/lib/libclass_loader.so:/usr/lib/libPocoFoundation.so:/usr/lib/x86_64-linux-gnu/libdl.so:/opt/ros/melodic/lib/libroslib.so:/opt/ros/melodic/lib/librospack.so:/usr/lib/x86_64-linux-gnu/libpython2.7.so:/usr/lib/x86_64-linux-gnu/libboost_program_options.so:/usr/lib/x86_64-linux-gnu/libtinyxml2.so:/opt/ros/melodic/lib/librosconsole_bridge.so:/opt/ros/melodic/lib/libroscpp.so:/usr/lib/x86_64-linux-gnu/libboost_filesystem.so:/opt/ros/melodic/lib/librosconsole.so:/opt/ros/melodic/lib/librosconsole_log4cxx.so:/opt/ros/melodic/lib/librosconsole_backend_interface.so:/usr/lib/x86_64-linux-gnu/liblog4cxx.so:/usr/lib/x86_64-linux-gnu/libboost_regex.so:/opt/ros/melodic/lib/libxmlrpcpp.so:/opt/ros/melodic/lib/libroscpp_serialization.so:/opt/ros/melodic/lib/librostime.so:/opt/ros/melodic/lib/libcpp_common.so:/usr/lib/x86_64-linux-gnu/libboost_system.so:/usr/lib/x86_64-linux-gnu/libboost_thread.so:/usr/lib/x86_64-linux-gnu/libboost_chrono.so:/usr/lib/x86_64-linux-gnu/libboost_date_time.so:/usr/lib/x86_64-linux-gnu/libboost_atomic.so:/usr/lib/x86_64-linux-gnu/libpthread.so:/usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/champ_gazebo/contact_sensor")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/champ_gazebo" TYPE DIRECTORY FILES
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo/launch"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo/config"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/champ_gazebo/worlds" TYPE DIRECTORY FILES "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/champ/champ_gazebo/worlds/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/champ_gazebo/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/champ_gazebo/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
