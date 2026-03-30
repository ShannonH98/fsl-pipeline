#!/bin/bash
# Motion correction using FSL's MCFLIRT
# Usage: ./mcflirt.sh <functional_input> <output_name>

FUNC_INPUT=$1
OUTPUT=$2

# Motion correction
mcflirt -in $FUNC_INPUT -out $OUTPUT -plots

echo "Motion correction complete. Output: $OUTPUT"
