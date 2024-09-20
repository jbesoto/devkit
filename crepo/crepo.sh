#!/bin/bash

set -euo pipefail

readonly TEMPLATES_DIR="${HOME}/.dotfiles/crepo/templates"
readonly TARGET_DIR="$1"

main() {
  if [[ ! -d "${TARGET_DIR}" ]]; then
    mkdir -p "${TARGET_DIR}"
  fi

  if [[ ! -d ".git" ]]; then
    git init "${TARGET_DIR}"
  fi

  template="$(select_template)"
  readonly template
}

select_template() {
  local template

  template="$(find "${TEMPLATES_DIR}" -mindepth 1 -maxdepth 1 -type d \
    | awk -F/ '{print $NF "\t" $0}' \
    | fzf --with-nth 1 --prompt "Template: " \
    | cut -f2)"

  if [[ -z "${template}" ]]; then
    echo "crepo: Template not selected."
    exit 1
  fi

  if [[ ! -e "${template}/structure.yaml" ]]; then
    echo "crepo: Repository structure not found."
    exit 1
  fi

  echo "${template}"
}

if [[ $# -ne 1 ]]; then
  echo "Usage: crepo <TARGET>"
  exit 1
fi

main "${TARGET_DIR}"