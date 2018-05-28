#!/bin/bash
source /opt/ros/kinetic/setup.bash
source /home/nvidia/catkin_ws/devel/setup.bash
sleep 5
#roscore&
gnome-terminal --command "roscore"&
sleep 5
#roslaunch zed_wrapper zed_camera.launch svo_file:="/home/nvidia/Videos/18majtest/test4.svo"&
roslaunch zed_wrapper zed.launch&
roslaunch yolo_depth_fusion relay.launch&
roslaunch darknet_ros darknet_ros.launch&
rosrun blindy_findy blindy_findy_node /depth/depth_registered:=/zed/depth/depth_registered &
#rosrun blindy_findy dummy_blindy_findy_node /depth/depth_registered:=/zed/depth/depth_registered &
rosrun sound_play soundplay_node.py&
rosrun robospeak main&
#gnome-terminal --command "rosrun --prefix 'gdb -ex run --args' priority_ai priority_ai"
rosrun priority_ai priority_ai
