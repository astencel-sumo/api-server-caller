#!/bin/bash

set -exuo pipefail

REGISTRY="agtestingregistry.azurecr.io"
IMAGE=${1-}
if [[ "$IMAGE" == "" ]]; then
    echo "Missing image name"
    exit 1
fi
ACR_IMAGE="$REGISTRY"/"$IMAGE"

docker tag "$IMAGE" "$ACR_IMAGE"
docker push "$ACR_IMAGE"
