#!/bin/bash
set -e  # exit on first error

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


cd $SCRIPT_DIR && git checkout master && git pull
git push
git checkout xenial_local && git merge master && git push
git checkout xenial_ros_kinetic && git merge master && git push
git checkout xenial_ros_kinetic_local && git merge master && git push
git checkout master 
