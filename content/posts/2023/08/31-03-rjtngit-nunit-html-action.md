---
title: NUnit HTML Report
date: 2023-08-31 03:09:02 +00:00
tags:
  - rjtngit
  - GitHub Actions
draft: false
repo: rjtngit/nunit-html-action
marketplace: https://github.com/marketplace/actions/nunit-html-report
version: v1.0.2
dependentsNumber: 3
---


Version updated for **rjtngit/nunit-html-action** to version **v1.0.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nunit-html-report) to find the latest changes.

## Release notes

- Pinned dependency version in requirements.txt
- Added setup-python step
- Fixed failure if target directory does not exist
- Added a check for xml input arg
- Removed sudo from python invocation

Note that because sudo was removed from the python invocation, you may need to change the permissions of the output folder if you are writing to an existing folder, i.e.:
```
  - name: Make output directory writable
    shell: bash
    run: sudo chmod a+w ${{ steps.download.outputs.download-path }}
```
