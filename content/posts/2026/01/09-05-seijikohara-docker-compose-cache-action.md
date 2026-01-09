---
title: Docker Compose Cache
date: 2026-01-09 05:46:43 +00:00
tags:
  - seijikohara
  - GitHub Actions
draft: false
repo: https://github.com/seijikohara/docker-compose-cache-action
marketplace: https://github.com/marketplace/actions/docker-compose-cache
version: v1.8.0
dependentsNumber: "?"
---


Version updated for **https://github.com/seijikohara/docker-compose-cache-action** to version **v1.8.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-compose-cache) to find the latest changes.

## Action Summary

The Docker Compose Cache Action is a GitHub Action designed to optimize CI/CD workflows by caching Docker images specified in Docker Compose files. It automates the parsing of Compose files, verifies image freshness using digests, and selectively pulls or restores images to reduce workflow execution time. This action addresses inefficiencies in Docker image caching, ensuring streamlined and reliable builds while minimizing redundant image pulls.

## Release notes

## What's Changed
* Bump version to 1.7.0 by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/97
* npm: bump @types/node from 24.0.3 to 24.0.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/98
* npm: bump eslint-plugin-prettier from 5.5.0 to 5.5.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/100
* npm: bump prettier from 3.6.0 to 3.6.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/99
* npm: bump jest from 30.0.2 to 30.0.3 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/101
* npm: bump @types/lodash from 4.17.18 to 4.17.19 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/102
* npm: bump @types/node from 24.0.4 to 24.0.6 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/103
* npm: bump prettier from 3.6.1 to 3.6.2 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/104
* npm: bump @eslint/js from 9.29.0 to 9.30.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/105
* npm: bump @typescript-eslint/parser from 8.35.0 to 8.35.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/106
* npm: bump @typescript-eslint/eslint-plugin from 8.35.0 to 8.35.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/107
* Add unit tests for utilities and Docker Compose service processing by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/110
* Update devDependencies to latest versions by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/111
* Update Dependabot schedule and simplify auto-merge workflow by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/112
* Fix Dependabot auto-merge workflow checkout issue by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/117
* Fix Dependabot merge permission issue by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/119
* npm: bump jest from 30.0.3 to 30.0.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/118
* npm: bump @types/node from 24.0.10 to 24.0.13 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/113
* npm: bump @typescript-eslint/eslint-plugin from 8.35.1 to 8.37.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/114
* npm: bump @eslint/js from 9.30.1 to 9.31.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/115
* npm: bump eslint from 9.30.1 to 9.31.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/116
* ci: migrate GitHub workflows from PAT to GitHub App authentication by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/120
* npm: bump @eslint/js from 9.31.0 to 9.32.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/124
* npm: bump lint-staged from 16.1.2 to 16.1.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/122
* npm: bump @typescript-eslint/parser from 8.37.0 to 8.39.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/123
* npm: bump jest from 30.0.4 to 30.0.5 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/125
* npm: bump form-data from 2.5.3 to 2.5.5 in the npm_and_yarn group by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/121
* npm: bump lint-staged from 16.1.4 to 16.1.5 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/130
* npm: bump eslint-plugin-prettier from 5.5.1 to 5.5.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/129
* npm: bump eslint-config-prettier from 10.1.5 to 10.1.8 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/128
* github-actions: bump actions/checkout from 4 to 5 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/126
* Fix Dependabot auto-merge workflow by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/132
* chore: update dependencies by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/133
* fix: improve Dependabot auto-merge workflow with enhanced security checks by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/155
* github-actions: bump actions/setup-node from 4 to 5 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/141
* npm: bump @eslint/js from 9.33.0 to 9.36.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/154
* npm: bump @typescript-eslint/parser from 8.39.1 to 8.44.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/153
* npm: bump @types/node from 24.2.1 to 24.5.2 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/150
* npm: bump eslint from 9.33.0 to 9.36.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/151
* npm: bump @typescript-eslint/eslint-plugin from 8.39.1 to 8.44.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/152
* npm: bump @types/node from 24.5.2 to 24.6.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/156
* npm: bump @typescript-eslint/eslint-plugin from 8.44.1 to 8.45.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/157
* npm: bump globals from 16.3.0 to 16.4.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/160
* npm: bump lint-staged from 16.1.5 to 16.2.3 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/161
* npm: bump ts-jest from 29.4.1 to 29.4.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/158
* npm: bump @vercel/ncc from 0.38.3 to 0.38.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/159
* npm: bump typescript from 5.9.2 to 5.9.3 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/164
* npm: bump jest from 30.0.5 to 30.2.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/165
* npm: bump @types/node from 24.6.0 to 24.7.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/166
* npm: bump @typescript-eslint/parser from 8.45.0 to 8.46.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/163
* npm: bump @actions/cache from 4.0.5 to 4.1.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/162
* npm: bump @eslint/js from 9.36.0 to 9.37.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/167
* npm: bump @typescript-eslint/parser from 8.46.0 to 8.46.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/170
* npm: bump eslint from 9.36.0 to 9.37.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/171
* npm: bump lint-staged from 16.2.3 to 16.2.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/168
* npm: bump @typescript-eslint/eslint-plugin from 8.45.0 to 8.46.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/169
* npm: bump @types/node from 24.7.0 to 24.7.2 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/172
* github-actions: bump actions/setup-node from 5 to 6 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/173
* npm: bump lint-staged from 16.2.4 to 16.2.5 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/174
* npm: bump @types/node from 24.7.2 to 24.9.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/176
* npm: bump @typescript-eslint/parser from 8.46.1 to 8.46.2 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/175
* npm: bump @eslint/js from 9.37.0 to 9.38.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/177
* npm: bump ts-jest from 29.4.4 to 29.4.5 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/178
* npm: bump eslint from 9.37.0 to 9.38.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/179
* npm: bump @typescript-eslint/eslint-plugin from 8.46.1 to 8.46.3 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/183
* npm: bump lint-staged from 16.2.5 to 16.2.6 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/180
* npm: bump eslint from 9.38.0 to 9.39.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/188
* npm: bump rimraf from 6.0.1 to 6.1.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/189
* npm: bump globals from 16.4.0 to 16.5.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/184
* npm: bump @types/node from 24.9.0 to 24.10.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/186
* Add dependency management scripts and update ESLint by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/190
* chore: use rebase merge for dependabot auto-merge by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/191
* npm: bump @typescript-eslint/parser from 8.46.3 to 8.46.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/192
* npm: bump @typescript-eslint/eslint-plugin from 8.46.3 to 8.46.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/193
* npm: bump @typescript-eslint/eslint-plugin from 8.46.4 to 8.47.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/195
* npm: bump @types/node from 24.10.0 to 24.10.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/197
* github-actions: bump actions/checkout from 5 to 6 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/199
* npm: bump lint-staged from 16.2.6 to 16.2.7 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/200
* npm: bump js-yaml from 4.1.0 to 4.1.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/202
* npm: bump @typescript-eslint/parser from 8.47.0 to 8.48.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/201
* npm: bump rimraf from 6.1.0 to 6.1.2 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/203
* npm: bump @typescript-eslint/eslint-plugin from 8.47.0 to 8.48.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/205
* npm: bump prettier from 3.6.2 to 3.7.3 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/208
* npm: bump @types/lodash from 4.17.20 to 4.17.21 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/206
* npm: bump ts-jest from 29.4.5 to 29.4.6 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/207
* npm: bump @typescript-eslint/eslint-plugin from 8.48.0 to 8.49.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/209
* npm: bump prettier from 3.7.3 to 3.7.4 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/211
* npm: bump @types/node and @typescript-eslint/parser by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/212
* npm: bump @types/node from 24.10.2 to 25.0.2 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/213
* npm: bump @actions/core from 1.11.1 to 2.0.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/216
* npm: bump @actions/cache from 4.1.0 to 5.0.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/217
* npm: bump eslint from 9.39.1 to 9.39.2 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/215
* npm: bump @typescript-eslint/eslint-plugin from 8.49.0 to 8.50.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/214
* npm: bump @actions/exec from 1.1.1 to 2.0.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/218
* npm: bump @typescript-eslint/eslint-plugin from 8.50.0 to 8.50.1 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/219
* npm: bump @types/node from 25.0.2 to 25.0.3 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/220
* npm: bump @typescript-eslint/eslint-plugin from 8.50.1 to 8.51.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/222
* npm: bump @typescript-eslint/parser from 8.51.0 to 8.52.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/224
* npm: bump globals from 16.5.0 to 17.0.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/225
* npm: bump @typescript-eslint/eslint-plugin from 8.51.0 to 8.52.0 by @dependabot[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/226
* npm: bump @eslint/js from 9.39.1 to 9.39.2 by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/227
* refactor: migrate from Husky to Lefthook by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/228
* chore: upgrade Node.js from 22 to 24 by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/229
* refactor: migrate from ESLint to Biome by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/230
* fix: include image digest in cache key to prevent stale cache issues by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/237
* refactor: rename skip-latest-check to skip-digest-verification by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/238
* feat: add force-refresh option to bypass cache by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/239
* feat: support wildcard patterns in exclude-images by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/240
* docs: add cache limitations and error handling documentation by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/241
* feat: add registry unavailable fallback for skip-digest-verification mode by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/242


**Full Changelog**: https://github.com/seijikohara/docker-compose-cache-action/compare/v1.7.0...v1.8.0
