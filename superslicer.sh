#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

exec /Applications/SuperSlicer.app/Contents/MacOS/SuperSlicer --datadir ${SCRIPT_DIR}
