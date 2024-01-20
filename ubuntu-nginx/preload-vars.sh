#!/bin/bash
export Y_TOKEN=$(yc config list | grep token | awk '{print $2}')
export Y_FOLDERID=$(yc config list | grep folder-id | awk '{print $2}')
export Y_SUBNETID=$(yc vpc subnet list | grep default-ru-central1-a | awk '{print $2}')
