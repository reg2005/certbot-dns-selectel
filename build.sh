#!/bin/bash
set -ex

WORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source "$WORK_DIR/lib/common"

CERTBOT_VERSION=$(GetCerbotVersionFromTag "$DOCKER_TAG")
PLUGIN_NAME=${DOCKER_REPO//*\//}

for TARGET_ARCH in "${ALL_TARGET_ARCH[@]}"; do
    BuildDockerPluginImage "${TARGET_ARCH}" "${CERTBOT_VERSION}" "${PLUGIN_NAME}"
done
