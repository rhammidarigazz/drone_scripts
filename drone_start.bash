#! /bin/bash

# Source executables
source devel/setup.bash

# Create roscore and pause for 5 seconds
nohup roscore > /dev/null &
sleep 5

# Launch Camera
nohup roslaunch ximea_ros_cam example_cam.launch > /dev/null &

# Launch recording script
# nohup ./SCRIPTNAME > /dev/null &
