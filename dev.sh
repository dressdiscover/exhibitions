#!/bin/bash

set -e

cd `dirname "$(readlink -f "$0")"`

PROJECTS_DIR_PATH=$PWD/../..
DATA_DIR_PATH=$PROJECTS_DIR_PATH/paradicms/data/exhibitions

cd $PROJECTS_DIR_PATH/paradicms/lib/py/ssg

poetry run $PROJECTS_DIR_PATH/spreadsheet-etl-action/action.py \
  --data-directory-path $DATA_DIR_PATH \
  --pipeline-id exhibitions \
  --spreadsheet "1j2oaMvMxY4pnXO-sEH_fky2R2gm6TQeIev_Q8rVOD4M" \
  "$@"

poetry run $PROJECTS_DIR_PATH/ssg-action/action.py \
  --data-directory-path $DATA_DIR_PATH \
  --dev \
  --pipeline-id exhibitions

