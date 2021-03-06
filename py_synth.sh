#!/bin/bash
speed=$1
step=$2
if [ -z $speed ];then
	speed=1.0
fi

if [ -z $step ];then
	step=300000
fi
python synthesize.py --with_hanzi 0 --model_file ./ckpt/pinyin/checkpoint_$step.pth.tar --text_file ./input.txt --channel 2 --duration_control $speed --output_dir ./outputs/py_step$step-dur$speed

