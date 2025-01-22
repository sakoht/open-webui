# Required for the front end to build (default Mac is too new.)
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"

export OPEN_WEBUI_REPO=$HOME/open-webui

# Required for the dev environment to work.
export FRONTEND_BUILD_DIR=$OPEN_WEBUI_REPO/build
export DATA_DIR=$OPEN_WEBUI_REPO/backend/data

# Redirect to LiteLLM where all models are exposed as OpenAI compatible interfaces.
export OPENAI_API_KEY=none
export OPENAI_API_BASE_URL=http://0.0.0.0:4000


