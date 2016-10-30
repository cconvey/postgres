#!/bin/bash

set -o errexit
set -o nounset

declare THIS_SCRIPT_DIR="$(readlink -f $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) )"
declare PG_REPO_DIR="$(readlink -f "${THIS_SCRIPT_DIR}/..")"

ctags-exuberant -f "${PG_REPO_DIR}/tags" --totals --languages=-sql "${PG_REPO_DIR}"

