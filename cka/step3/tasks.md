# Usefull Resources: [pods](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/)

## for this question, please set context to kubernetes-admin@kubernetes

> `kubectl config use-context kubernetes-admin@kubernetes`{{exec}}

## get alll pods and check the pod named nginx-pod1 and make it running by using pod.yaml only.

<details>
    <summary>HINT</summary>
    <p><b>Check if you can check logs of what is wrong</b></p>
    <p><b>Check if you can export the pod in yaml format and save it to file</b></p>
    <p><b>delete current pod and create new pod using command and args arguments</b></p>
</details>

<details>
    <summary>Solution</summary>
    <p><b>once you will see logs you will observe some wrong parameter pass</b></p>
    <p><b>go to docer hub and check dockerfile for this image</b></p>
    <p><b>update yaml with command: ["sleep"] and args:["3600"]</b></p>
</details>

