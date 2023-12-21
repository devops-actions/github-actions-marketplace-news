---
title: Env file to ElasticBeanstalk with Transcrypt
date: 2023-12-21 19:16:19 +00:00
tags:
  - galadrimteam
  - GitHub Actions
draft: false
repo: galadrimteam/env-to-eb-with-transcrypt
marketplace: https://github.com/marketplace/actions/env-file-to-elasticbeanstalk-with-transcrypt
version: v1
dependentsNumber: "?"
---


Version updated for **galadrimteam/env-to-eb-with-transcrypt** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/env-file-to-elasticbeanstalk-with-transcrypt) to find the latest changes.

## Release notes

# Add transcrypt encoded file to ElasticBeanstalk

Decrypt the file and add it to the ebconfig file. The default path for the config elasticbeanstalk is `.ebextensions/options.config`. If the file is in the folder backend, pass `backend/.ebextensions/options.config` with the eb_config_path argument.

## Requirements

- You must have your transcrypt key
- To obtain it run `transcrypt --display`, it's the PASSWORD

## Setup

Example workflow setup:

```yaml
steps:
  ...
  - uses: galadrimteam/env-to-eb-with-transcrypt@1
    with:
      env_file: backend/.env.staging
      transcrypt_key: ${{ secrets.TRANSCRYPT_KEY }}
      eb_config_path: backend/.ebextensions/options.config
```

