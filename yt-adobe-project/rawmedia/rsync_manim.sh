#!/usr/bin/env bash

OUTPUT_PATH="/home/bachir/Youtube/SGD/manim/output_pngs"
HOST="MS-CAFFE"

CMD="rsync  -av $HOST:$OUTPUT_PATH/  manim --delete"
echo $CMD
$CMD  | tqdm --unit_scale | wc -l
