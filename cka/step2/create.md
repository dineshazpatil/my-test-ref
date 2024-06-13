# Usefull Resources: [pods](https://kubernetes.io/docs/concepts/workloads/pods/)

## for this question, please set context to kubernetes-admin@kubernetes

> `kubectl config use-context kubernetes-admin@kubernetes`{{exec}}

## get count of all pods with labels application and value feapp and save the count of pods in /tmp/fepodcount.txt


<details>
    <summary>HINT</summary>
    <p><b>check how to get pods only with specific labels</b></p>
    <p><b>check how can we remove header from output using parameter to kubectl</b></p>
    <p><b>check how can we save output to file</b></p>
</details>

<details>
    <summary>Solution</summary>
    <p><b>kubectl get pods -l application=feapp --no-headers | wc -l > /tmp/fepodcount.txt</b></p>
</details>
