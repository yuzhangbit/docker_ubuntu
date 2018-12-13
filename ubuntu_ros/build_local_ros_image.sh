#!/bin/bash
set -e # exit on first error

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASENAME=$(basename "$CURRENT_DIR")


cd ${CURRENT_DIR} && docker build -t local_xenial_ros_robot ./ -f Dockerfile.local 
