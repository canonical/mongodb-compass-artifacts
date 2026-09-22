#!/usr/bin/env bash
set -euo pipefail

: "${ROCK_NAME:?ROCK_NAME must be set}"
: "${SNAP_CHANNEL:?SNAP_CHANNEL must be set}"

# Check that rockcraft.yaml has stage snaps for this rock pointing at the
# expected channel, e.g. "mongodb-compass/8/edge".
if ! yq \
    '.parts[] | select(has("stage-snaps")) | .["stage-snaps"][] | select(test("^" + env.ROCK_NAME + "/1/edge$"))' \
    "${ROCKCRAFT_FILE}" | grep -q .; then
  echo "No ${ROCK_NAME}/1/edge stage snap channel found in ${ROCKCRAFT_FILE}"
  exit 1
fi

# Rewrite rockcraft.yaml to point stage snaps at the PR snap channel. For
# example, "mongodb-compass/1/edge" becomes
# "mongodb-compass/1/edge/pr-123".
yq -Yi \
  '(.parts[] | select(has("stage-snaps")) | .["stage-snaps"][]) |= sub("/1/edge$"; "/" + env.SNAP_CHANNEL)' \
  "${ROCKCRAFT_FILE}"

git diff -- "${ROCKCRAFT_FILE}"
