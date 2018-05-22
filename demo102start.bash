#! /bin/bash

# Source executables
source devel/setup.bash

#Create a roscore and pause to finish
#roscore &
#sleep 5

# Run decompression of video stream
rosrun image_transport republish compressed in:=/ximea_cam/image_raw/ out:=/ximea_cam/image_raw2 &

# Launch SVO
roslaunch svo_ros ximea_102.launch > /dev/null &

# Launch REMODE
roslaunch rpg_open_remode ximea_102.launch > remode.txt  &
sleep 1
tail -f remode.txt
