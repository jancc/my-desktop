#!/bin/bash
echo $1 > "/sys/class/backlight/amdgpu_bl0/brightness"
