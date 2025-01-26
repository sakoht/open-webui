#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# Run docker in a sub-shell so we can monitor it and open browser tabs.

function run_docker() {
  if (which docker-compose 1>/dev/null); then
    CMD=docker-compose
  else
    CMD="docker compose"
  fi
  $CMD -f docker-compose.litellm.yaml up "$@"
}

run_docker &
CHILD_PID=$!



# The parent process is friendly and chatty...

while ! (curl http://0.0.0.0:4000/models | jq); do
  echo "Waiting for LiteLLM to come up..." 1>&2
  sleep 3
done
  
while ! (curl http://0.0.0.0:8080 > /dev/null); do
  echo "Waiting for Open-WebUI to come up..." 1>&2
  sleep 5
done

(set -x; open http://0.0.0.0:8080)

wait $CHILD_PID

echo "Docker completed." 1>&2

