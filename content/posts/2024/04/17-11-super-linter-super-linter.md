---
title: Super-Linter
date: 2024-04-17 11:29:03 +00:00
tags:
  - super-linter
  - GitHub Actions
draft: false
repo: super-linter/super-linter
marketplace: https://github.com/marketplace/actions/super-linter
version: v6.4.0
dependentsNumber: "2,055"
---


Version updated for **super-linter/super-linter** to version **v6.4.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2,055** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/super-linter) to find the latest changes.

## Release notes

## [6.4.0](https://github.com/super-linter/super-linter/compare/v6.3.1...v6.4.0) (2024-04-16)


### 🚀 Features

* add clang-format style configuration ([#5424](https://github.com/super-linter/super-linter/issues/5424)) ([0ae4572](https://github.com/super-linter/super-linter/commit/0ae457287495a435b3128c364e44ece8b145c47a))
* add support for astral-sh/ruff (https://github.com/super-linter/super-linter/pull/5456), closes [#5384](https://github.com/super-linter/super-linter/issues/5384) ([e71a37d](https://github.com/super-linter/super-linter/commit/e71a37d49d588b33a0d6e10f364a682e7704460e))
* support GoReleaser ([#5505](https://github.com/super-linter/super-linter/issues/5505)) ([6924988](https://github.com/super-linter/super-linter/commit/69249882f317128fb04a46d20bc8b1e289d5042a))


### 🐛 Bugfixes

* export test_case_run ([#5499](https://github.com/super-linter/super-linter/issues/5499)) ([cb109f4](https://github.com/super-linter/super-linter/commit/cb109f45f142b31b9c5e4796dbba383f662e1ff7)), closes [#5483](https://github.com/super-linter/super-linter/issues/5483)
* revert python_isort/python_bad_1.py ([ca2a416](https://github.com/super-linter/super-linter/commit/ca2a4167b8c0dbf2510b98cc41c470c9bd6f5621))
* test/linters/python_*/** ([#5502](https://github.com/super-linter/super-linter/issues/5502)) ([ca2a416](https://github.com/super-linter/super-linter/commit/ca2a4167b8c0dbf2510b98cc41c470c9bd6f5621))


### ⬆️ Dependency updates

* **bundler:** bump rubocop-rails from 2.24.0 to 2.24.1 in /dependencies ([#5443](https://github.com/super-linter/super-linter/issues/5443)) ([2a147fa](https://github.com/super-linter/super-linter/commit/2a147fa3e380c2e8e8dff7830e008c6eb36ed507))
* **bundler:** bump rubocop-rspec from 2.27.1 to 2.29.1 in /dependencies ([#5476](https://github.com/super-linter/super-linter/issues/5476)) ([5fe65e5](https://github.com/super-linter/super-linter/commit/5fe65e52cea8413e93b5144259a8a19b3f1a29c8))
* **dev-docker:** bump node in /dev-dependencies ([#5487](https://github.com/super-linter/super-linter/issues/5487)) ([aaf5f3d](https://github.com/super-linter/super-linter/commit/aaf5f3df0f6429b1b6d9365dbd935f90f5565e0e))
* **dev-npm:** bump @commitlint/cli in /dev-dependencies ([#5448](https://github.com/super-linter/super-linter/issues/5448)) ([6992ae7](https://github.com/super-linter/super-linter/commit/6992ae711886b63ffb82ab2eb9070469a1637851))
* **docker:** bump dart from 3.3.1-sdk to 3.3.3-sdk ([#5461](https://github.com/super-linter/super-linter/issues/5461)) ([41f1f2d](https://github.com/super-linter/super-linter/commit/41f1f2d22fe66f5b922aa6b79334f78efca6d814))
* **docker:** bump dotnet/sdk ([#5464](https://github.com/super-linter/super-linter/issues/5464)) ([4edb99e](https://github.com/super-linter/super-linter/commit/4edb99eac9ae056cdb809adc23ea04bf35192b93))
* **docker:** bump golang from 1.22.1-alpine to 1.22.2-alpine ([#5488](https://github.com/super-linter/super-linter/issues/5488)) ([e9d3471](https://github.com/super-linter/super-linter/commit/e9d347187e51f27d6c90793ee40600ec5fbfba46))
* **docker:** bump golangci/golangci-lint from v1.56.2 to v1.57.2 ([#5462](https://github.com/super-linter/super-linter/issues/5462)) ([0764966](https://github.com/super-linter/super-linter/commit/0764966580dcdc849c73690e084498605a444da2))
* **docker:** bump scalameta/scalafmt from v3.8.0 to v3.8.1 ([#5463](https://github.com/super-linter/super-linter/issues/5463)) ([613d661](https://github.com/super-linter/super-linter/commit/613d6614482fd8f3cc9fcbec581bbd16e8899a7a))
* **docker:** bump yoheimuta/protolint from 0.49.3 to 0.49.4 ([#5490](https://github.com/super-linter/super-linter/issues/5490)) ([62a763d](https://github.com/super-linter/super-linter/commit/62a763d7484bf4f9e51f126a86a149223d8e4d9f))
* **github-actions:** bump bobheadxi/deployments from 1.4.0 to 1.5.0 ([#5460](https://github.com/super-linter/super-linter/issues/5460)) ([fd2c7cc](https://github.com/super-linter/super-linter/commit/fd2c7cc16ebbb08e1840788c02ab735aff929cd0))
* **github-actions:** bump dependabot/fetch-metadata from 1 to 2 ([#5449](https://github.com/super-linter/super-linter/issues/5449)) ([b1e59ed](https://github.com/super-linter/super-linter/commit/b1e59ed1d42da087bd657453ee122a46651f85f9))
* **java:** bump com.google.googlejavaformat:google-java-format ([#5484](https://github.com/super-linter/super-linter/issues/5484)) ([4bc39d7](https://github.com/super-linter/super-linter/commit/4bc39d75018c3277466eefdebc286e9194965c9a))
* **java:** bump com.puppycrawl.tools:checkstyle ([#5457](https://github.com/super-linter/super-linter/issues/5457)) ([25cb7af](https://github.com/super-linter/super-linter/commit/25cb7af49d6692dbcb04aa2482544daa6b626c48))
* **npm:** bump @babel/eslint-parser in /dependencies ([#5434](https://github.com/super-linter/super-linter/issues/5434)) ([ebf7ad0](https://github.com/super-linter/super-linter/commit/ebf7ad0f3fed44978693e41b80bb1854f84a642e))
* **npm:** bump @babel/preset-react in /dependencies ([#5440](https://github.com/super-linter/super-linter/issues/5440)) ([809f6f4](https://github.com/super-linter/super-linter/commit/809f6f4abd371f2b0fb8d21e826748b5f3313843))
* **npm:** bump @babel/preset-typescript in /dependencies ([#5439](https://github.com/super-linter/super-linter/issues/5439)) ([87fe03b](https://github.com/super-linter/super-linter/commit/87fe03bc27ae5d2a07d9f80028fc763a9c9e85ef))
* **npm:** bump @ibm/tekton-lint from 1.0.1 to 1.0.2 in /dependencies ([#5485](https://github.com/super-linter/super-linter/issues/5485)) ([b26cd9f](https://github.com/super-linter/super-linter/commit/b26cd9f7e66e43f8b54647a01582bd55ad447a60))
* **npm:** bump @stoplight/spectral-cli in /dependencies ([#5492](https://github.com/super-linter/super-linter/issues/5492)) ([240e382](https://github.com/super-linter/super-linter/commit/240e3829ef1e9baf2c20468a2dce8fbd2efb40fb))
* **npm:** bump @typescript-eslint/eslint-plugin in /dependencies ([#5475](https://github.com/super-linter/super-linter/issues/5475)) ([019fa5f](https://github.com/super-linter/super-linter/commit/019fa5f6cefbd543c480b335346938af6b53a7e5))
* **npm:** bump eslint-plugin-jest in /dependencies ([#5495](https://github.com/super-linter/super-linter/issues/5495)) ([5db715d](https://github.com/super-linter/super-linter/commit/5db715d2423c04cae5ec766db6941d2799d8fb4c))
* **npm:** bump eslint-plugin-jsonc in /dependencies ([#5468](https://github.com/super-linter/super-linter/issues/5468)) ([f3d13bd](https://github.com/super-linter/super-linter/commit/f3d13bd6a2a39f1f8ac69f070bfc3416d493cfa2))
* **npm:** bump eslint-plugin-vue from 9.23.0 to 9.24.0 in /dependencies ([#5438](https://github.com/super-linter/super-linter/issues/5438)) ([89e55ba](https://github.com/super-linter/super-linter/commit/89e55ba7231d7e54ae5355909fbf21195e68d491))
* **npm:** bump eslint-plugin-vue from 9.24.0 to 9.24.1 in /dependencies ([#5489](https://github.com/super-linter/super-linter/issues/5489)) ([454e13a](https://github.com/super-linter/super-linter/commit/454e13a49a71e383036847f304d18eefa1ea943a))
* **npm:** bump next from 14.1.3 to 14.1.4 in /dependencies ([#5442](https://github.com/super-linter/super-linter/issues/5442)) ([9f97afa](https://github.com/super-linter/super-linter/commit/9f97afa529f1218d8c97478018a638da563ca074))
* **npm:** bump npm-groovy-lint from 14.2.4 to 14.4.0 in /dependencies ([#5469](https://github.com/super-linter/super-linter/issues/5469)) ([1eb4e8e](https://github.com/super-linter/super-linter/commit/1eb4e8edfa0ba5dbcf99f09b36f7f81f50927ee2))
* **npm:** bump react-intl from 6.6.2 to 6.6.4 in /dependencies ([#5470](https://github.com/super-linter/super-linter/issues/5470)) ([f9f8fdd](https://github.com/super-linter/super-linter/commit/f9f8fdd6e8c696e7796f8713d01f928bbb89895d))
* **npm:** bump react-intl from 6.6.4 to 6.6.5 in /dependencies ([#5493](https://github.com/super-linter/super-linter/issues/5493)) ([702428a](https://github.com/super-linter/super-linter/commit/702428a6d9ff3a6d3fb688628905f6672284dc5e))
* **npm:** bump renovate from 37.263.0 to 37.279.0 in /dependencies ([#5466](https://github.com/super-linter/super-linter/issues/5466)) ([f059252](https://github.com/super-linter/super-linter/commit/f0592520a15628dd65b52c76648b94e02ca1e03f))
* **npm:** bump renovate from 37.279.0 to 37.280.0 in /dependencies ([#5486](https://github.com/super-linter/super-linter/issues/5486)) ([2ef03bc](https://github.com/super-linter/super-linter/commit/2ef03bce419d0ed18ce2bc9d157612507521e827))
* **npm:** bump typescript from 5.4.2 to 5.4.3 in /dependencies ([#5435](https://github.com/super-linter/super-linter/issues/5435)) ([7200949](https://github.com/super-linter/super-linter/commit/7200949541d76a6c9fbeda068d22dddc7fc67898))
* **npm:** bump typescript from 5.4.3 to 5.4.4 in /dependencies ([#5491](https://github.com/super-linter/super-linter/issues/5491)) ([1d9123e](https://github.com/super-linter/super-linter/commit/1d9123e41787280f321564ad83afb1643ad78523))
* **python:** bump cfn-lint in /dependencies/python ([#5444](https://github.com/super-linter/super-linter/issues/5444)) ([1f27242](https://github.com/super-linter/super-linter/commit/1f2724267c682e766f37c4e16c5935b309d87f5d))
* **python:** bump cfn-lint in /dependencies/python ([#5497](https://github.com/super-linter/super-linter/issues/5497)) ([7a1a2f6](https://github.com/super-linter/super-linter/commit/7a1a2f6a53662f3914a9733a3713eaa9b9273789))
* **python:** bump checkov from 3.2.39 to 3.2.50 in /dependencies/python ([#5458](https://github.com/super-linter/super-linter/issues/5458)) ([bb50b58](https://github.com/super-linter/super-linter/commit/bb50b58eca8b294d485d719bb97ebf83d506bd82))
* **python:** bump checkov from 3.2.50 to 3.2.55 in /dependencies/python ([#5494](https://github.com/super-linter/super-linter/issues/5494)) ([30cb57b](https://github.com/super-linter/super-linter/commit/30cb57b139f07a9672819eac7a1b2c0e197ae96b))
* **python:** bump snakemake in /dependencies/python ([#5459](https://github.com/super-linter/super-linter/issues/5459)) ([d86761c](https://github.com/super-linter/super-linter/commit/d86761cc6a052697b81a57d2e03f26b147eab98b))
* **python:** bump snakemake in /dependencies/python ([#5496](https://github.com/super-linter/super-linter/issues/5496)) ([794408d](https://github.com/super-linter/super-linter/commit/794408dfa40768211acdb12992bb8f244b6dd274))
* **python:** bump sqlfluff from 3.0.2 to 3.0.3 in /dependencies/python ([#5445](https://github.com/super-linter/super-linter/issues/5445)) ([c17fde6](https://github.com/super-linter/super-linter/commit/c17fde6fea2c3128ac1d0062e0817a3080c88a41))


### 🧰 Maintenance

* adding "permissions: { }" to the yaml example ([#5452](https://github.com/super-linter/super-linter/issues/5452)) ([64d808d](https://github.com/super-linter/super-linter/commit/64d808da2c1cba817d10a0f57801f5dc514bb020))
* do not run by pull request from fork ([#5506](https://github.com/super-linter/super-linter/issues/5506)) ([a1c890c](https://github.com/super-linter/super-linter/commit/a1c890c1f28ca160979f861f6be7dba22c3c8ace))
* fix a run condition in CI preview-release-notes ([#5532](https://github.com/super-linter/super-linter/issues/5532)) ([95fbd33](https://github.com/super-linter/super-linter/commit/95fbd33daf1b1a436cab61875ea5367952d0e51b))
* free more space on workers ([#5481](https://github.com/super-linter/super-linter/issues/5481)) ([80bb077](https://github.com/super-linter/super-linter/commit/80bb077cfd8a341424dbd60076b3a9e14518e9fb)), closes [#5477](https://github.com/super-linter/super-linter/issues/5477)
* ignore github_conf in jscpd ([#5533](https://github.com/super-linter/super-linter/issues/5533)) ([0873f46](https://github.com/super-linter/super-linter/commit/0873f467042e21fc956ac5f363fdf023755580f4))
