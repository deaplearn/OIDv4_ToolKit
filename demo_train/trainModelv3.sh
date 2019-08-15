#! /bin/bash

if [[ ! -f darknet53.conv.74 ]]; then
	echo 'not find  darknet53.conv.74'
	wget https://pjreddie.com/media/files/darknet53.conv.74
fi

if [[ ! -f yolov3.cfg ]]; then
	echo 'not find yolov3.cfg'
	wget https://github.com/deaplearn/darknet/blob/master/cfg/yolov3.cfg?raw=true -O yolov3.cfg
fi

# ori_darknet='../../darknet/darknet'

if [[ $1 ]]; then
	ori_darknet=$1
else
	ori_darknet='/Users/xzm/refine_darknet/darknet/darknet'
fi

${ori_darknet} detector train obj.data yolov3-obj.cfg darknet53.conv.74