#!/bin/bash

# Simple FSL BET automation script
# Usage: ./run_bet.sh

# Paths
INPUT="../data/input.nii.gz"
OUTPUT="../data/output_brain.nii.gz"

# Run Brain Extraction Tool
bet $INPUT $OUTPUT -F

echo "Brain extraction complete. Output saved as $OUTPUT"
