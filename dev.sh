#!/bin/bash

set -e

cd `dirname "$(readlink -f "$0")"`

PROJECTS_DIR_PATH=$PWD/../..

cd $PROJECTS_DIR_PATH/paradicms/lib/py/ssg

poetry run $PROJECTS_DIR_PATH/spreadsheet-ssg-action/action.py \
  --data-dir-path $PROJECTS_DIR_PATH/paradicms/data/exhibitions \
  --dev \
  --pipeline-id exhibitions \
  --spreadsheet "1j2oaMvMxY4pnXO-sEH_fky2R2gm6TQeIev_Q8rVOD4M" \
  "$@"
