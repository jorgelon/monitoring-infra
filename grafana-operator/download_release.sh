#!/bin/bash
set -euf -o pipefail

echo "Showing release tags"
curl -Ls "https://api.github.com/repos/grafana-operator/grafana-operator/tags" | jq -r ".[].name"
read -p "Tell me the release tag to be downloaded: " release

echo "Cleaning"
rm -rf ${release}
mkdir -p ${release}

curl -fSsL https://github.com/grafana/grafana-operator/releases/download/${release}/kustomize-namespace_scoped.yaml -o ${release}/kustomize-namespace_scoped.yaml

cat <<EOF >>${release}/kustomization.yaml
resources:
- kustomize-namespace_scoped.yaml
EOF
