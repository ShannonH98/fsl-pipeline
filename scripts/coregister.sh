#!/bin/bash
# Coregister functional to structural
# Usage: ./coregister.sh <structural_brain> <func_mc> <output_prefix>

STRUCT=$1       # e.g., ../data/output_brain.nii.gz
FUNC=$2         # e.g., ../data/func_mc.nii.gz
OUTPUT=$3       # e.g., ../data/func_coreg

# Coregister using FLIRT
flirt -in $FUNC -ref $STRUCT -out ${OUTPUT}.nii.gz -omat ${OUTPUT}.mat -dof 6

echo "Coregistration complete. Output: ${OUTPUT}.nii.gz"
