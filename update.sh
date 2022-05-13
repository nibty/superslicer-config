#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}
git fetch --all
git reset --hard origin/master

sed -i "s#/Users/nick/projects/superslicer-configs#$SCRIPT_DIR#g" "$SCRIPT_DIR/printer/Standard.ini"
sed -i "s#/Users/nick/projects/superslicer-configs#$SCRIPT_DIR#g" "$SCRIPT_DIR/print/Flexible.ini"
sed -i "s#/Users/nick/projects/superslicer-configs#$SCRIPT_DIR#g" "$SCRIPT_DIR/print/Standard.ini"