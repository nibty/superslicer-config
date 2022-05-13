#!/usr/bin/env bash

SCRIPT_DIR=

cd ${SCRIPT_DIR}
git fetch --all
git reset --hard origin/master

sh ${SCRIPT_DIR}/update.sh
exec /Applications/SuperSlicer.app/Contents/MacOS/SuperSlicer --datadir ${SCRIPT_DIR}
