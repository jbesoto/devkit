#!/bin/bash

TEMPLATES_DIR='~/.dotfiles/crepo/templates'
TARGET=$@

cd ${TARGET}
git init .

# List templates
# Select template
# Parse `struct.yaml`
# Replace blueprints