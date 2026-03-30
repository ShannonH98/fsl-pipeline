# fsl-pipeline (FSL First Pipeline)

## Overview
This project demonstrates a basic neuroimaging preprocessing step using FSL (FMRIB Software Library).  
The goal is to understand and apply core techniques used in MRI data analysis.

This is a first-step pipeline showing **brain extraction** from a T1-weighted MRI scan.

## Tools Used
- FSL (FMRIB Software Library)
- MRI data in NIfTI format (.nii.gz)

## Data
- MRI brain scan in NIfTI format (.nii.gz)
- - Stored in: `data/input.nii.gz`
- Original source: [Nilearn ICBM152 dataset](https://nilearn.github.io)

## Step 1: Brain Extraction (BET)

### Command used
```bash
bet data/input.nii.gz data/output_brain.nii.gz -F
ls data (to ensure it got dowloadded)
fsleyes data/output_brain.nii.gz (open in fsl eyes)


