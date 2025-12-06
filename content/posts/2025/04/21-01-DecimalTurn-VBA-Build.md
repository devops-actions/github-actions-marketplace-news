---
title: VBA Build
date: 2025-04-21 01:14:15 +00:00
tags:
  - DecimalTurn
  - GitHub Actions
draft: false
repo: https://github.com/DecimalTurn/VBA-Build
marketplace: https://github.com/marketplace/actions/vba-build
version: v1.0.0
dependentsNumber: "2"
---


Version updated for **https://github.com/DecimalTurn/VBA-Build** to version **v1.0.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vba-build) to find the latest changes.

## Release notes

Updated demo: [VBA-Build-Demo](https://github.com/DecimalTurn/VBA-Build-Demo/tree/v1.0.0)

## What's Changed
This action now supports:
* Word (.docm) and PowerPoint (.pptm) Files
* More Excel File Formats
* Forms (.frm) and Class Modules (.cls) Files
* Custom File Names


### Word (.docm) and PowerPoint (.pptm) Files
The CI workflow will auto-detect the Office application needed to generate the file based on the file extension in the name of the folder where your source code is located.

### More Excel File Formats
Regarding Excel, the following extensions are now suported: 
* .xlsm
* .xlam
* .xlsb

### Forms (.frm) and Class Modules (.cls) Files
Forms (.frm) files can now be imported into the project. Note that the .frx file with the same file name needs to be in the same folder for it to work properly.

Class Modules (.cls) files can now be imported. Note that Excel or Word objects such as Workbooks, Worksheets and Documents exported as .cls files are not yet supported.

### Custom File Names
You can now use any file name for the folder that contains source code and it will use the same name for the generated file.


**Full Changelog**: https://github.com/DecimalTurn/VBA-Build/compare/v0.1.0...v1.0.0
