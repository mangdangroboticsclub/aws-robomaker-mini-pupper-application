# Install script for directory: /home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/minipupper_ros/mini_pupper_gazebo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/install/mini_pupper_gazebo")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/mini_pupper_gazebo/catkin_generated/installspace/mini_pupper_gazebo.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mini_pupper_gazebo/cmake" TYPE FILE FILES
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/mini_pupper_gazebo/catkin_generated/installspace/mini_pupper_gazeboConfig.cmake"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/mini_pupper_gazebo/catkin_generated/installspace/mini_pupper_gazeboConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mini_pupper_gazebo" TYPE FILE FILES "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/minipupper_ros/mini_pupper_gazebo/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mini_pupper_gazebo" TYPE DIRECTORY FILES
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/minipupper_ros/mini_pupper_gazebo/config"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/minipupper_ros/mini_pupper_gazebo/launch"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/minipupper_ros/mini_pupper_gazebo/maps"
    "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/src/minipupper_ros/mini_pupper_gazebo/worlds"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/mini_pupper_gazebo/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ubuntu/environment/aws-robomaker-mini-pupper-application/simulation_ws/build/mini_pupper_gazebo/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
