#!/bin/bash
TARGET=${1:-}

if [ "$TARGET" = "base" ]; then
    podman build -t registry.lab/osanwe:base \
        -f Containerfile.base \
        && podman push registry.lab/osanwe:base

else
    echo 'please choose an image to build'

fi