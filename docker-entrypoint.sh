#!/bin/bash
# Interpreter identifier

# Exit on fail
set -e

pushd . > /dev/null
cd functions
npm install
popd  > /dev/null

if [ $# -eq 0 ]; then
  exec /bin/bash
else
  echo "exec command => $@"
  exec "$@"
fi