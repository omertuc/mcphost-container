#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

REPO_NAME="quay.io/otuchfel/mcphost"
TAG="0.9.2"

podman build -f "$SCRIPT_DIR/Containerfile" -t "$REPO_NAME:$TAG" "$SCRIPT_DIR"

podman push "$REPO_NAME:$TAG"
