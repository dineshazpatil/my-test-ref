#!/bin/bash

# expected image and command

expected_podname='cka-nginx'
expected_image='nginx:1.18'

# verify pod status
pod_status=$(kubectl get pod $expected_podname -o=jsonpath='{.status.phase}')
if [ "$pod_status" == "Running" ]; then
   echo "Pod $expected_podname is in Running state."
else
   echo "Pod $expected_podname is in not Running ."
   exit 1
fi

# get the image of the pod
actual_image=$(kubectl get pods $expected_podname -o=jsonpath='{.spec.containers[0].image}')

# Check if the actual image and command match the expected values
if [ "$actual_image" == "$expected_image" ] && [ "$pod_status" == "Running" ]; then
    echo "Validation passed: Pod $expected_podname is running with the correct image"
    exit 0
else
    echo "Validation failed: Pod $expected_podname is not running with the correct image."
    exit 1
fi
