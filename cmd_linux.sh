#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# activate env
bash --init-file <(echo "source ~/.bashrc; source \"linux/env.sh\"")
