#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. mac-env.sh
set -e
set -x
PYTHONPATH=backend/ python3.11 backend/open_webui/__init__.py serve --port 9090

