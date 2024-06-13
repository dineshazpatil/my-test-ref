#!/bin/bash


kubectl run "nginx-pod1" --image dineshppatil/nginx:ktask3 -l task=podissue3

sleep 30

echo "add file" >> /opt/fepod.txt