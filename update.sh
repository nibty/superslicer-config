#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ${SCRIPT_DIR}
git fetch --all
git reset --hard origin/master

sed -i -e "s#/Users/nick/projects/superslicer-configs#${SCRIPT_DIR}#g" "$SCRIPT_DIR/print/Standard.ini" &&
 rm "$SCRIPT_DIR/print/Standard.ini-e"

sed -i -e "s#/Users/nick/projects/superslicer-configs#${SCRIPT_DIR}#g" "$SCRIPT_DIR/print/Flexible.ini" &&
 rm "$SCRIPT_DIR/print/Flexible.ini-e"

sed -i -e "s#/Users/nick/projects/superslicer-configs#${SCRIPT_DIR}#g" "$SCRIPT_DIR/print/Slow.ini" &&
 rm "$SCRIPT_DIR/print/Slow.ini-e"

sed "s#SCRIPT_DIR=#SCRIPT_DIR=${SCRIPT_DIR}#" superslicer.sh > /Applications/SuperSlicer.app/Contents/MacOS/superslicer.sh
sed -i -e "s#<string>parameterized-app.sh</string>#<string>superslicer.sh</string>#" \
	/Applications/SuperSlicer.app/Contents/Info.plist &&
	rm /Applications/SuperSlicer.app/Contents/Info.plist-e

sed -i -e "s#scripts/klipper_estimator#scripts/klipper_estimator_$(uname)#" "$SCRIPT_DIR/print/Standard.ini" &&
  rm "$SCRIPT_DIR/print/Standard.ini-e"
sed -i -e "s#scripts/klipper_estimator#scripts/klipper_estimator_$(uname)#" "$SCRIPT_DIR/print/Flexible.ini" &&
	rm "$SCRIPT_DIR/print/Flexible.ini-e"
sed -i -e "s#scripts/klipper_estimator#scripts/klipper_estimator_$(uname)#" "$SCRIPT_DIR/print/Slow.ini" &&
	rm "$SCRIPT_DIR/print/Slow.ini-e"