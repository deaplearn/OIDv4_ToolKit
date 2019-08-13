#! /bin/bash
if [[ ! -f yolov3-tiny.weights ]]; then
	echo 'not find yolov3-tiny.weights'
	wget https://pjreddie.com/media/files/yolov3-tiny.weights
fi

if [[ ! -f yolov3-tiny.cfg ]]; then
	echo 'not find yolov3-tiny.cfg'
	wget https://github.com/deaplearn/darknet/blob/master/cfg/yolov3-tiny.cfg?raw=true -O yolov3-tiny.cfg
fi

# ori_darknet='../../darknet/darknet'
ori_darknet='/Users/xzm/refine_darknet/darknet/darknet'

${ori_darknet} partial yolov3-tiny.cfg yolov3-tiny.weights yolov3-tiny.conv.15 15 

${ori_darknet} detector train obj.data yolov3-tiny-cp.cfg yolov3-tiny.conv.15