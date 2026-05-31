---
title: Portainer Stack Deploy Action
date: 2026-05-31 06:33:40 +00:00
tags:
  - cssnr
  - GitHub Actions
draft: false
repo: https://github.com/cssnr/portainer-stack-deploy-action
marketplace: https://github.com/marketplace/actions/portainer-stack-deploy-action
version: v2.0.0
dependentsNumber: "27"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/cssnr/portainer-stack-deploy-action** to version **v2.0.0**.

- This action is used across all versions by **27** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/portainer-stack-deploy-action) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment of Docker stacks to Portainer, a container management platform. It simplifies the process of updating and managing containerized applications by integrating stack deployment directly into CI/CD workflows. Key capabilities include streamlined stack configuration and deployment without manual intervention.

## What's Changed

- Update to Node 24
- Update Dependencies
- Convert to ESM

> [!NOTE]  
> GitHub Hosted runners are not effected by this upgrade.  
> Only if you use a custom runner that does not support `node24`.
> Reference: [Deprecation of Node 20 on GitHub Actions runners](https://github.blog/changelog/2025-09-19-deprecation-of-node-20-on-github-actions-runners/).

## What's Changed
* Add Portainer Types to JSDocs by @smashedr in https://github.com/cssnr/portainer-stack-deploy-action/pull/31
* Updates for v2 and node24 by @smashedr in https://github.com/cssnr/portainer-stack-deploy-action/pull/32


**Full Changelog**: https://github.com/cssnr/portainer-stack-deploy-action/compare/v1.3.1...v2.0.0

🚀 Use this release with these tags:

```text
cssnr/portainer-stack-deploy-action@latest
cssnr/portainer-stack-deploy-action@v2
cssnr/portainer-stack-deploy-action@v2.0
cssnr/portainer-stack-deploy-action@v2.0.0
cssnr/portainer-stack-deploy-action@08a2399c37369f461c258deef9cc8a1cf2db3271 # v2.0.0
```

❤️ Please [report any issues](https://github.com/cssnr/portainer-stack-deploy-action/issues) you find.

### Package Changes

<details><summary>Click Here to View Changes</summary>

Changes for: [package-lock.json](package-lock.json)

| Package&nbsp;Name              |  ❔  | Operation | Before  | After  |
| :----------------------------- | :-: | :-------: | :------ | :----- |
| @humanfs/types                 |  🆕 |   Added   |         | 0.15.0 |
| @types/esrecurse               |  🆕 |   Added   |         | 4.3.1  |
| agent-base                     |  🆕 |   Added   |         | 6.0.2  |
| https-proxy-agent              |  🆕 |   Added   |         | 5.0.1  |
| @actions/core                  |  ✅  |  Upgraded | 1.11.1  | 3.0.1  |
| @actions/exec                  |  ✅  |  Upgraded | 1.1.1   | 3.0.0  |
| @actions/http-client           |  ✅  |  Upgraded | 2.2.3   | 4.0.1  |
| @actions/io                    |  ✅  |  Upgraded | 1.1.3   | 3.0.2  |
| @eslint-community/eslint-utils |  ✅  |  Upgraded | 4.9.0   | 4.9.1  |
| @eslint/config-array           |  ✅  |  Upgraded | 0.21.1  | 0.23.5 |
| @eslint/config-helpers         |  ✅  |  Upgraded | 0.4.2   | 0.6.0  |
| @eslint/core                   |  ✅  |  Upgraded | 0.17.0  | 1.2.1  |
| @eslint/js                     |  ✅  |  Upgraded | 9.39.0  | 10.0.1 |
| @eslint/object-schema          |  ✅  |  Upgraded | 2.1.7   | 3.0.5  |
| @eslint/plugin-kit             |  ✅  |  Upgraded | 0.4.1   | 0.7.2  |
| @humanfs/core                  |  ✅  |  Upgraded | 0.19.1  | 0.19.2 |
| @humanfs/node                  |  ✅  |  Upgraded | 0.16.7  | 0.16.8 |
| @types/estree                  |  ✅  |  Upgraded | 1.0.8   | 1.0.9  |
| acorn                          |  ✅  |  Upgraded | 8.15.0  | 8.16.0 |
| ajv                            |  ✅  |  Upgraded | 6.12.6  | 6.15.0 |
| axios                          |  ✅  |  Upgraded | 1.13.1  | 1.16.1 |
| balanced-match                 |  ✅  |  Upgraded | 1.0.2   | 4.0.4  |
| brace-expansion                |  ✅  |  Upgraded | 1.1.12  | 5.0.6  |
| dotenv                         |  ✅  |  Upgraded | 17.2.3  | 17.4.2 |
| es-object-atoms                |  ✅  |  Upgraded | 1.1.1   | 1.1.2  |
| eslint                         |  ✅  |  Upgraded | 9.39.0  | 10.4.1 |
| eslint-scope                   |  ✅  |  Upgraded | 8.4.0   | 9.1.2  |
| eslint-visitor-keys            |  ✅  |  Upgraded | 4.2.1   | 5.0.1  |
| espree                         |  ✅  |  Upgraded | 10.4.0  | 11.2.0 |
| esquery                        |  ✅  |  Upgraded | 1.6.0   | 1.7.0  |
| flatted                        |  ✅  |  Upgraded | 3.3.3   | 3.4.2  |
| follow-redirects               |  ✅  |  Upgraded | 1.15.11 | 1.16.0 |
| form-data                      |  ✅  |  Upgraded | 4.0.4   | 4.0.5  |
| hasown                         |  ✅  |  Upgraded | 2.0.2   | 2.0.4  |
| js-yaml                        |  ✅  |  Upgraded | 4.1.0   | 4.1.1  |
| minimatch                      |  ✅  |  Upgraded | 3.1.2   | 10.2.5 |
| prettier                       |  ✅  |  Upgraded | 3.6.2   | 3.8.3  |
| proxy-from-env                 |  ✅  |  Upgraded | 1.1.0   | 2.1.0  |
| undici                         |  ✅  |  Upgraded | 5.29.0  | 6.26.0 |
| @eslint/eslintrc               |  ⛔  |  Removed  | 3.3.1   |        |
| @fastify/busboy                |  ⛔  |  Removed  | 2.1.1   |        |
| ansi-styles                    |  ⛔  |  Removed  | 4.3.0   |        |
| callsites                      |  ⛔  |  Removed  | 3.1.0   |        |
| chalk                          |  ⛔  |  Removed  | 4.1.2   |        |
| color-convert                  |  ⛔  |  Removed  | 2.0.1   |        |
| color-name                     |  ⛔  |  Removed  | 1.1.4   |        |
| concat-map                     |  ⛔  |  Removed  | 0.0.1   |        |
| globals                        |  ⛔  |  Removed  | 14.0.0  |        |
| has-flag                       |  ⛔  |  Removed  | 4.0.0   |        |
| import-fresh                   |  ⛔  |  Removed  | 3.3.1   |        |
| lodash.merge                   |  ⛔  |  Removed  | 4.6.2   |        |
| parent-module                  |  ⛔  |  Removed  | 1.0.1   |        |
| resolve-from                   |  ⛔  |  Removed  | 4.0.0   |        |
| strip-json-comments            |  ⛔  |  Removed  | 3.1.1   |        |
| supports-color                 |  ⛔  |  Removed  | 7.2.0   |        |

</details>


