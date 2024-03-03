#!/bin/bash

# Set the path to your ROS2 workspace
ROS2_WS_PATH=~/ros2_ws

# Source ROS2 setup file
source /opt/ros/humble/setup.bash

# Source your workspace setup file
source $ROS2_WS_PATH/install/setup.bash

# Ensure read and write permissions for the serial device
sudo chmod 777 /dev/ttyUSB0

# Run rplidar node and visualize in RViz
ros2 launch rplidar_ros view_rplidar_c1_launch.py
