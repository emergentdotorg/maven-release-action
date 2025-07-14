#!/bin/sh -l

# transform binary-path from relative to absolute
#SCRIPT=$(realpath -s "$0")
#SCRIPTPATH=$(dirname "$SCRIPT")
#FULLPATH=$(readlink -f "$1")

DEST_DIR="/github/workspace/${INPUT_RESOURCES_DEST}"
mkdir -p "${DEST_DIR}"
cp -a "$SRC_DIR"/* "${DEST_DIR}/"

# Use INPUT_<INPUT_NAME> to get the value of an input
#GREETING="Hello, $INPUT_WHO_TO_GREET!"

# Use workflow commands to do things like set debug messages
#echo "::notice file=entrypoint.sh,line=7::$GREETING"

printf '%s\n' \
  "time=$(date)" \
  "maven_user_settings=${INPUT_RESOURCES_DEST}/settings.xml" \
  >> "$GITHUB_OUTPUT"

exit 0
