---
title: MegaLinter
date: 2024-02-12 03:26:08 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.9.0
dependentsNumber: "920"
---


Version updated for **oxsecurity/megalinter** to version **v7.9.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **920** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - Upgrade actions/checkout and stefanzweifel/git-auto-commit-action in generator template workflow, by @Jayllyz in [#3327](https://github.com/oxsecurity/megalinter/pull/3327)
  - Upgrade base python image to python:3.12.2-alpine3.19

- Fixes
  - Format powershell linter output into terminal-wide table, and count errors, by @efrecon in [#3318](https://github.com/oxsecurity/megalinter/pull/3318)
  - Allow active_only_if_file_found to work in specified subdirectory (_DIRECTORY), fixes [#2873](https://github.com/oxsecurity/megalinter/issues/2873), by @TimothyEarley in [#3323](https://github.com/oxsecurity/megalinter/pull/3323)
  - Activate CI servers reporters only if we find a related default env variable, by @nvuillam in [#3321](https://github.com/oxsecurity/megalinter/pull/3321)

- Doc
  - Update copyright year to 2024, by @Jayllyz in [#3339](https://github.com/oxsecurity/megalinter/pull/3339)

- CI
  - Free more disk space before docker build
  - Upgrade peter-evans/create-pull-request from v5 to v6 in GitHub Actions workflows

- Linter versions upgrades
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 6.22.2 to **24.2.0**
  - [bandit](https://bandit.readthedocs.io/en/latest/) from 1.7.6 to **1.7.7**
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.24.24 to **0.25.3**
  - [black](https://black.readthedocs.io/en/stable/) from 23.12.1 to **24.1.1**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.84.0 to **0.85.1**
  - [checkov](https://www.checkov.io/) from 3.1.67 to **3.2.20**
  - [checkstyle](https://checkstyle.sourceforge.io) from 10.12.7 to **10.13.0**
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.75 to **0.1.76**
  - [csharpier](https://csharpier.com/) from 0.27.0 to **0.27.2**
  - [eslint-plugin-jsonc](https://ota-meshi.github.io/eslint-plugin-jsonc/) from 2.12.2 to **2.13.0**
  - [gitleaks](https://github.com/gitleaks/gitleaks) from 8.18.1 to **8.18.2**
  - [golangci-lint](https://golangci-lint.run/) from 1.55.2 to **1.56.1**
  - [grype](https://github.com/anchore/grype) from 0.63.1 to **0.74.5**
  - [lychee](https://lychee.cli.rs) from 0.14.1 to **0.14.3**
  - [markdownlint](https://github.com/DavidAnson/markdownlint) from 0.38.0 to **0.39.0**
  - [npm-groovy-lint](https://nvuillam.github.io/npm-groovy-lint/) from 14.2.0 to **14.2.1**
  - [phplint](https://github.com/overtrue/phplint) from 9.1.0 to **9.1.2**
  - [phpstan](https://phpstan.org/) from 1.10.56 to **1.10.57**
  - [prettier](https://prettier.io/) from 3.2.4 to **3.2.5**
  - [psalm](https://psalm.dev) from Psalm.5.20.0@ to **Psalm.5.21.1@**
  - [puppet-lint](http://puppet-lint.com/) from 4.2.3 to **4.2.4**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.347 to **1.1.350**
  - [revive](https://revive.run/) from 1.3.6 to **1.3.7**
  - [roslynator](https://github.com/JosefPihrt/Roslynator) from 0.8.2.0 to **0.8.3.0**
  - [rubocop](https://rubocop.org/) from 1.60.1 to **1.60.2**
  - [ruff](https://github.com/astral-sh/ruff) from 0.1.14 to **0.2.1**
  - [secretlint](https://github.com/secretlint/secretlint) from 8.1.0 to **8.1.1**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.20.0 to **3.21.0**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.20.0 to **3.21.0**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.20.0 to **3.21.0**
  - [shfmt](https://github.com/mvdan/sh) from 3.7.0 to **3.8.0**
  - [snakefmt](https://github.com/snakemake/snakefmt) from 0.9.0 to **0.10.0**
  - [snakemake](https://snakemake.readthedocs.io/en/stable/) from 8.2.3 to **8.4.8**
  - [stylelint](https://stylelint.io) from 16.2.0 to **16.2.1**
  - [syft](https://github.com/anchore/syft) from 0.101.1 to **0.104.0**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.7.0 to **1.7.3**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.54.20 to **0.55.1**
  - [tflint](https://github.com/terraform-linters/tflint) from 0.50.1 to **0.50.3**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.48.3 to **0.49.1**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.48.3 to **0.49.1**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.63.10 to **3.67.5**
  - [v8r](https://github.com/chris48s/v8r) from 2.1.0 to **3.0.0**
  - [yamllint](https://yamllint.readthedocs.io/) from 1.33.0 to **1.34.0**

## New Contributors

* @Jayllyz made their first contribution in https://github.com/oxsecurity/megalinter/pull/3327
* @TimothyEarley made their first contribution in https://github.com/oxsecurity/megalinter/pull/3323
* @efrecon made their first contribution in https://github.com/oxsecurity/megalinter/pull/3318

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7.8.0...v7.9.0
