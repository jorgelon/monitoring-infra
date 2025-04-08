In order to persist the settings, the kubeadm-config configmap in the kube-system namespace should also be edited to include the following:

```yaml
    controllerManager:
      extraArgs:
        bind-address: 0.0.0.0
    scheduler:
      extraArgs:
        bind-address: 0.0.0.0
```

<https://sysdig.com/blog/how-to-monitor-kube-controller-manager/>
