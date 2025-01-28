#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. mac-env.sh
set -e
set -x
litellm --config "$DIR"/litellm-config/litellm-config.yaml

