# Monitoring infra

This is a non production implementation of prometheus - kubernetes metrics stack

Based on:

- kustomize
- prometheus-operator
- grafana-operator
- official prometheus-adapter manifests
- hand made kube-state-metrics manifests

It will deploy almost inside the monitoring namespace

Inspired but not clearly compatible with:

- kube-prometheus
- kube-promtheus-stack

## Argocd waves

- Wave -5:

prometheus-operator
grafana-operator

- Wave -3:

prometheus

- Wave 0 (default)
  
Other stuff
