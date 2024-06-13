#!/bin/bash

for i in {1..6}
do
  kubectl run "nginx$i" --image nginx:1.18 -l application=feapp
done

for i in {10..14}
do
  kubectl run "nginx$i" --image nginx:1.18 -l application=beapp 
done

echo "add file" >> /opt/fepod.txt