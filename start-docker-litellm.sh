#!/bin/bash
docker run \
  -p 3000:8080 \
  --rm \
  --add-host=host.docker.internal:host-gateway \
  -e OPENAI_API_KEY=none \
  -e OPENAI_API_BASE_URL=http://host.docker.internal:4000 \
  -v open-webui:/app/backend/data \
  --name open-webui \
  ghcr.io/open-webui/open-webui:main

