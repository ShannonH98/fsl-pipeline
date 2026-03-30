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


## **Pipeline Overview**

1. **Motion Correction** (`mcflirt.sh`)  
   - Corrects for subject head motion over time in the fMRI data.  
   - Input: `func.nii.gz`  
   - Output: `func_mc.nii.gz`  

2. **Coregistration** (`coregister.sh`)  
   - Aligns functional MRI to structural T1 MRI.  
   - Input: `func_mc.nii.gz` + `output_brain.nii.gz`  
   - Output: `func_coreg.nii.gz` + `func_coreg.mat`  

3. **Full Pipeline** (`fmri_preproc.sh`)  
   - Runs motion correction and coregistration automatically.  

---

## **Setup Instructions**

1. **Install dependencies**  
   - FSL (https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation)  
   - Python 3 with `nibabel` and `nilearn` (optional for demo data)

```bash
pip install nibabel nilearn

