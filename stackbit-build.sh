#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://widget.stackbit.com/init.js 5fe0b5d91723140016bae305

echo "stackbit-build.sh: finished build"
