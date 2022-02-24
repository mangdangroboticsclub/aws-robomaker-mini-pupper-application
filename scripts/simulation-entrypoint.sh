#!/bin/bash
source /opt/ros/melodic/setup.bash
source /usr/share/gazebo-9/setup.sh
source ./install/local_setup.sh
printenv

exec "${@:1}"