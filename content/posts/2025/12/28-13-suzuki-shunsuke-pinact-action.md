---
title: pinact
date: 2025-12-28 13:11:42 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: https://github.com/suzuki-shunsuke/pinact-action
marketplace: https://github.com/marketplace/actions/pinact
version: v1.3.0
dependentsNumber: "143"
---


Version updated for **https://github.com/suzuki-shunsuke/pinact-action** to version **v1.3.0**.
- This action is used across all versions by **143** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinact) to find the latest changes.

## Action Summary

The `pinact-action` GitHub Action automates the process of pinning specific versions of GitHub Actions and reusable workflows in workflow configuration files to ensure stability and reproducibility. It can either update the files and push changes to a repository or validate that all actions are properly pinned, failing the CI process if they are not. This action helps maintain consistent and secure workflows by preventing unintended updates or changes to dependencies.

## Release notes

[Issues](https://github.com/suzuki-shunsuke/pinact-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av1.3.0) | [Pull Requests](https://github.com/suzuki-shunsuke/pinact-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av1.3.0) | https://github.com/suzuki-shunsuke/pinact-action/compare/v1.2.0...v1.3.0 | [Base revision](https://github.com/suzuki-shunsuke/pinact-action/tree/95f45fdc20d23e7ef046bfd962d6ddbc414d4f10)

## Features

#854 Support Securefix Action

Now you can create commits via [Securefix Action](https://github.com/csm-actions/securefix-action) securely.
About Securefix Action, please see the document of Securefix Action.

e.g.

```yaml
- uses: suzuki-shunsuke/pinact-action@28aeb220eb3252ad0d4422dd5d9368e925acbd8d # v1.3.0
  with:
    securefix_app_id: ${{vars.SECUREFIX_ACTION_CLIENT_APP_ID}}
    securefix_app_private_key: ${{secrets.SECUREFIX_ACTION_CLIENT_APP_PRIVATE_KEY}}
    securefix_server_repository: securefix-server
```
