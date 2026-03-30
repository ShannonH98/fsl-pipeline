#!/bin/bash
# Full fMRI preprocessing pipeline
# Usage: ./fmri_preproc.sh

# Step 1: Motion Correction
./mcflirt.sh ../data/func.nii.gz ../data/func_mc.nii.gz

# Step 2: Coregistration
./coregister.sh ../data/output_brain.nii.gz ../data/func_mc.nii.gz ../data/func_coreg

echo "fMRI preprocessing pipeline complete."
