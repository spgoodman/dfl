#!/usr/bin/env bash
conda activate deepfacelab
export DFL_ROOT="$(dirname "$(dirname "$(realpath "$0")")")"
export DFL_SRC=$DFL_ROOT

cd "$DFL_ROOT"
export DFL_PYTHON="python3.7"
export DFL_WORKSPACE="$DFL_ROOT/workspace/"

if [ ! -d "$DFL_WORKSPACE" ]; then
    mkdir "$DFL_WORKSPACE"
    mkdir "$DFL_WORKSPACE/data_src"
    mkdir "$DFL_WORKSPACE/data_src/aligned"
    mkdir "$DFL_WORKSPACE/data_src/aligned_debug"
    mkdir "$DFL_WORKSPACE/data_dst"
    mkdir "$DFL_WORKSPACE/data_dst/aligned"
    mkdir "$DFL_WORKSPACE/data_dst/aligned_debug"
    mkdir "$DFL_WORKSPACE/model"
fi
