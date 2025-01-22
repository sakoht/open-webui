#!/bin/bash

# From: https://bhavikjikadara.medium.com/how-to-install-open-webui-without-docker-33eedbda9b96

# Note, newer Macs have 23.x.x, which is too new.
brew install node@22
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"

# Python 3.11 is the minimum for this, and 3.12 fails with some other projects, so sticking with 3.11.
brew install python@3.11

# Put the example config in place.
cp -RPp example.env .env

# Create a virtualenv:
python3.11 -m venv backend/venv-3.11
. backend/venv-3.11/bin/activate
pip install --upgrade pip
pip install -r backend/requirements.txt

# The ollama package lets the mac work w/ local LLMs efficiently.
brew install ollama

# Add the litellm module.  This gives us a uniform way to access remote LLMs via proxy, including to ollama/* from above.
pip install litellm

# Get this b/c it helps.
brew install jq

