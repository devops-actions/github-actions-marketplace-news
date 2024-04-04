---
title: Gitea List Pull Requests
date: 2024-04-04 18:59:23 +00:00
tags:
  - vicamo
  - GitHub Actions
draft: false
repo: vicamo/gitea-list-pull-requests
marketplace: https://github.com/marketplace/actions/gitea-list-pull-requests
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **vicamo/gitea-list-pull-requests** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitea-list-pull-requests) to find the latest changes.

## Release notes

## 1.0.0 (2024-04-04)

### 🚀 Features

- add pagination support ([0f392a2](https://github.com/vicamo/gitea-list-pull-requests/commit/0f392a2ee80b0b741c4c77fea188feb3fcc21073))
- separate implementation for mocking ([8bfaf4c](https://github.com/vicamo/gitea-list-pull-requests/commit/8bfaf4cdf2a2bcda616892669835e8db22bd2797))
- separate run function for testing ([1f26a04](https://github.com/vicamo/gitea-list-pull-requests/commit/1f26a04ce0a3fdb81b718d647a96934726819687))

### 🐛 Bugfixes

- accommodate to getMultilineInput ([847d4ab](https://github.com/vicamo/gitea-list-pull-requests/commit/847d4ab3f16d3da5dd9dec7c51baceda20987bd9))
- call getMultilineInput for multiline inputs instead ([d8b69ae](https://github.com/vicamo/gitea-list-pull-requests/commit/d8b69ae1488a5b4397a60ed10066021dfb5af708))
- ensure setError is call whenever we fails to enumerate pull requests ([97a35e1](https://github.com/vicamo/gitea-list-pull-requests/commit/97a35e1ca73b085110084a4632eb96099dab1755))
- http response may not have data ([25f75c1](https://github.com/vicamo/gitea-list-pull-requests/commit/25f75c1fcf257736c7325ea0cab1b77874b7fcbf))
- refine input value handling ([da10856](https://github.com/vicamo/gitea-list-pull-requests/commit/da108568053d95c2a583c996e978bd7b96744558))
- remove checks to never-called core.error mock ([35a83b9](https://github.com/vicamo/gitea-list-pull-requests/commit/35a83b90d27f5d947cda9f858ec4614be5824488))
- use union of string literals for state input option ([7736e84](https://github.com/vicamo/gitea-list-pull-requests/commit/7736e84f853de7335ef15cd1380853231e4a8af7))

### 🧰 Maintenance

- **deps-dev:** bump the npm-development group with 1 update ([cbd68cf](https://github.com/vicamo/gitea-list-pull-requests/commit/cbd68cfc60ec2a0132139d4e8c026e80e75763dd))
- **deps-dev:** bump the npm-development group with 5 updates ([abab095](https://github.com/vicamo/gitea-list-pull-requests/commit/abab095cf8b8135551e4339ff1e2b41a2b2fc19e))
- **deps:** bump @actions/<!-- textlint-disable terminology -->github<!-- textlint-enable terminology --> from 5.1.1 to 6.0.0 ([debc527](https://github.com/vicamo/gitea-list-pull-requests/commit/debc52717b9e26c38fd2ab9c6e2775352e4bffd1))

### 🧰 Testing

- add more runtime tests ([f7a6225](https://github.com/vicamo/gitea-list-pull-requests/commit/f7a62258287918e070341bf5d62dbc180cf5cf36))
- ensure we're talking to Gitea even on GitHub ([bc136c8](https://github.com/vicamo/gitea-list-pull-requests/commit/bc136c894fb8011764526f83494b8228165e2e8c))
- ESLint: add ignore patterns for no-unused-vars ([d26c12c](https://github.com/vicamo/gitea-list-pull-requests/commit/d26c12c19caf1a8cd08989f414068d3732f1faa7))
- extract common procedures as possible ([178c961](https://github.com/vicamo/gitea-list-pull-requests/commit/178c9614dbb2e67865119cc8b8779db5303ca53b))
- extract common test utility functions ([f31e895](https://github.com/vicamo/gitea-list-pull-requests/commit/f31e8954fbd36c4404e146af95bfe1349ff4cf4b))
- limit output to 1 ([adbd91d](https://github.com/vicamo/gitea-list-pull-requests/commit/adbd91d4e67d039036e0c7c9fe94dc4b25c09042))
- name timeout values ([5e545e2](https://github.com/vicamo/gitea-list-pull-requests/commit/5e545e24e80c7cede8f0ce2de680383bb83ee121))
- rename RANDOM_TOKEN to DEFAULT_TOKEN ([2c913a0](https://github.com/vicamo/gitea-list-pull-requests/commit/2c913a0b705541b055280d0a95fd2f2a978594a8))
- separate tests for main and implementation ([eff5cb5](https://github.com/vicamo/gitea-list-pull-requests/commit/eff5cb58883c896e616dd85e231e62fe6091d150))
- use gitea/tea repository instead ([9c72f5a](https://github.com/vicamo/gitea-list-pull-requests/commit/9c72f5a62e2f833d8b2ebf7b52dd937265475624))

### 🧰 Documentation

- correct README badge links ([452312d](https://github.com/vicamo/gitea-list-pull-requests/commit/452312dd4aa264be06c3ed59e58de9143967f7fc))
- prepare for v1 release ([537ad08](https://github.com/vicamo/gitea-list-pull-requests/commit/537ad08bbff09d95553efc2a9ad9de61a6972236))

### 🧰 Template

- Sync with [vicamo/gitea-actions-template@v1.0.4](https://github.com/vicamo/gitea-actions-template/releases/tag/v1.0.4)
