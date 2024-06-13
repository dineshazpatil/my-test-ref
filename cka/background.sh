#!/bin/bash

# set -x # to test stderr output in /var/log/killercoda
# echo starting... # to test stdout output in /var/log/killercoda
# sleep 3
# echo done > /tmp/background0
# Start Kubernetes
echo "Waiting for cluster ready"
echo "done" >> /opt/.clustersetupstart
kubectl wait node --all --for=condition=Ready --timeout=60s
echo "done" >> /opt/.nodesreadys