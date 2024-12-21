#!/bin/bash

# Default input and output files
INPUT_FILE=${INPUT_FILE:-"/host/a.mp4"}
OUTPUT_FILE=${OUTPUT_FILE:-"/host/output.mp4"}
FACTOR=${FACTOR:-4}
MODEL=${MODEL:-"realesr-animevideov3"}

# Run the video upscale process
video2x -i "$INPUT_FILE" -o "$OUTPUT_FILE" -f realesrgan -r "$FACTOR" -m "$MODEL"
