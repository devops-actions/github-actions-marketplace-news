---
title: AWS SES Templates Uploader
date: 2023-10-20 03:13:34 +00:00
tags:
  - nishilcygbit
  - GitHub Actions
draft: false
repo: nishilcygbit/aws-ses-template-uploader
marketplace: https://github.com/marketplace/actions/aws-ses-templates-uploader
version: v1.0.4
dependentsNumber: "?"
---


Version updated for **nishilcygbit/aws-ses-template-uploader** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aws-ses-templates-uploader) to find the latest changes.

## Release notes

Created Github Action to deploy - create/update - SES templates on the fly by supplying folder that contains SES Template JSON files - and an optional attribute which adds the prefix.

You can use prefix to supply env based markers. So if a template TemplateA needs to be created in dev, it can be supplied with prefix dev, such that in dev env it is named as devTemplateA, in staging - stagingTemplateA.
