---
title: MegaLinter
date: 2024-10-13 17:07:51 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v8.1.0
dependentsNumber: "1,287"
---


Version updated for **oxsecurity/megalinter** to version **v8.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,287** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - Allow to tag PRE_COMMANDS to run them before loading plugins, by @nvuillam in <https://github.com/oxsecurity/megalinter/pull/3944>
  - Replace usage of setup.py with a pyproject.toml package install, by @echoix in [#3893](https://github.com/oxsecurity/megalinter/pull/3893)
  - Allow to add custom messages at the end of PR / MR MegaLinter Summary using variable **JOB_SUMMARY_ADDITIONAL_MARKDOWN**

- New linters
  - New LUA linter: [**selene**](https://github.com/Kampfkarren/selene), by @AlejandroSuero in <https://github.com/oxsecurity/megalinter/pull/3978>
  - New LUA formatter: [**stylua**](https://github.com/JohnnyMorganz/StyLua), by @AlejandroSuero in <https://github.com/oxsecurity/megalinter/pull/3985>

- Linters enhancements
  - Trivy
    - Embed vulnerability database in Docker Image for running trivy on internet-free network
    - Retry 5 times after 3 seconds in case of TooManyRequests when downloading vulnerability database
    - If the retries did not succeed, call trivy with `--skip-db-update --skip-check-update` (not ideal but better than nothing)
  - Bash/Perl: Support shell scripts with no extension and only support perl shebangs at the beginning of a file in <https://github.com/oxsecurity/megalinter/pull/4076>

- Fixes
  - Add debug traces to investigate reporters activation
  - Add more traces for ApiReporter
  - Activate ApiReporter by default

- Reporters
  - Fix ApiReporter not called in MegaLlinter flavors

- Doc
  - Fix Grafana Home Dashboard to add missing criteria
  - Update PRE_COMMANDS documentation to describe all properties
  - Update Grafana documentation to fix secrets typo

- CI
  - Free space in release job to avoid no space left on device, by @nvuillam in <https://github.com/oxsecurity/megalinter/pull/3914>
  - Add `pytest-rerunfailures` to improve CI control jobs success, by @AlejandroSuero in <https://github.com/oxsecurity/megalinter/pull/3993>
  - Send GITHUB_TOKEN to trivy-action
  - Workaround to avoid to reach Docker Hub rate limits: Build & push first on ghcr.io, then login to docker hub, then push to docker hub

- Linter versions upgrades
  - [actionlint](https://rhysd.github.io/actionlint/) from 1.7.1 to **1.7.3** on 2024-09-29
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 24.7.0 to **24.9.2** on 2024-09-20
  - [bandit](https://bandit.readthedocs.io/en/latest/) from 1.7.9 to **1.7.10** on 2024-09-23
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.29.47 to **0.30.23** on 2024-09-24
  - [black](https://black.readthedocs.io/en/stable/) from 24.8.0 to **24.10.0** on 2024-10-07
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 1.10.3 to **1.16.1** on 2024-10-11
  - [checkov](https://www.checkov.io/) from 3.2.232 to **3.2.257** on 2024-10-06
  - [checkstyle](https://checkstyle.org/) from 10.17.0 to **10.18.2** on 2024-09-29
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.80 to **0.1.81** on 2024-09-06
  - [clj-kondo](https://github.com/borkdude/clj-kondo) from 2024.08.01 to **2024.09.27** on 2024-09-26
  - [cpplint](https://github.com/cpplint/cpplint) from 1.6.1 to **2.0.0** on 2024-10-06
  - [csharpier](https://csharpier.com/) from 0.29.0 to **0.29.2** on 2024-09-16
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 8.14.1 to **8.15.1** on 2024-10-11
  - [detekt](https://detekt.dev/) from 1.23.6 to **1.23.7** on 2024-09-08
  - [djlint](https://djlint.com/) from 1.34.1 to **1.35.2** on 2024-08-29
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 8.0.108 to **8.0.110** on 2024-10-11
  - [eslint](https://eslint.org) from 8.57.0 to **8.57.1** on 2024-09-16
  - [gitleaks](https://github.com/gitleaks/gitleaks) from 8.18.4 to **8.20.1** on 2024-10-08
  - [golangci-lint](https://golangci-lint.run/) from 1.60.1 to **1.61.0** on 2024-09-09
  - [kics](https://www.kics.io) from 2.1.2 to **2.1.3** on 2024-10-04
  - [lightning-flow-scanner](https://github.com/Lightning-Flow-Scanner) from 2.33.0 to **2.34.0** on 2024-08-25
  - [lychee](https://lychee.cli.rs) from 0.15.1 to **0.16.1** on 2024-10-07
  - [markdownlint](https://github.com/DavidAnson/markdownlint) from 0.41.0 to **0.42.0** on 2024-09-24
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.11.1 to **1.11.2** on 2024-08-25
  - [npm-groovy-lint](https://nvuillam.github.io/npm-groovy-lint/) from 14.6.0 to **15.0.2** on 2024-08-29
  - [php-cs-fixer](https://cs.symfony.com/) from 3.62.0 to **3.64.0** on 2024-08-31
  - [phpcs](https://github.com/PHPCSStandards/PHP_CodeSniffer) from 3.10.2 to **3.10.3** on 2024-09-20
  - [phplint](https://github.com/overtrue/phplint) from 9.4.1 to **9.5.3** on 2024-10-11
  - [phpstan](https://phpstan.org/) from 1.11.11 to **1.12.6** on 2024-10-06
  - [pmd](https://pmd.github.io/) from 7.4.0 to **7.6.0** on 2024-09-27
  - [psalm](https://psalm.dev) from Psalm.5.25.0@ to **Psalm.5.26.1@** on 2024-09-09
  - [pylint](https://pylint.readthedocs.io) from 3.2.6 to **3.3.1** on 2024-09-24
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.376 to **1.1.384** on 2024-10-11
  - [revive](https://revive.run/) from 1.3.9 to **1.4.0** on 2024-09-23
  - [roslynator](https://github.com/dotnet/Roslynator) from 0.8.9.0 to **0.9.1.0** on 2024-10-11
  - [rubocop](https://rubocop.org/) from 1.65.1 to **1.66.1** on 2024-09-06
  - [ruff](https://github.com/astral-sh/ruff) from 0.6.1 to **0.6.9** on 2024-10-04
  - [scalafix](https://scalacenter.github.io/scalafix/) from 0.12.1 to **0.13.0** on 2024-09-27
  - [secretlint](https://github.com/secretlint/secretlint) from 8.2.4 to **8.4.0** on 2024-10-06
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 4.4.0 to **4.6.0** on 2024-09-26
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 4.4.0 to **4.6.0** on 2024-09-26
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 4.4.0 to **4.6.0** on 2024-09-26
  - [shfmt](https://github.com/mvdan/sh) from 3.8.0 to **3.9.0** on 2024-09-03
  - [snakemake](https://snakemake.readthedocs.io/en/stable/) from 8.18.1 to **8.21.0** on 2024-10-13
  - [spectral](https://docs.stoplight.io/docs/spectral/674b27b261c3c-overview) from 6.11.1 to **6.13.1** on 2024-09-21
  - [sqlfluff](https://www.sqlfluff.com/) from 3.1.0 to **3.2.3** on 2024-10-11
  - [standard](https://standardjs.com/) from 17.1.0 to **17.1.2** on 2024-09-13
  - [stylelint](https://stylelint.io) from 16.8.2 to **16.10.0** on 2024-10-11
  - [swiftlint](https://github.com/realm/SwiftLint) from 0.56.1 to **0.57.0** on 2024-09-09
  - [syft](https://github.com/anchore/syft) from 1.11.0 to **1.14.0** on 2024-10-07
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.9.4 to **1.9.5** on 2024-08-28
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.66.8 to **0.67.5** on 2024-09-16
  - [terrascan](https://runterrascan.io/) from 1.18.11 to **1.19.9** on 2024-09-21
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.54.1 to **0.56.2** on 2024-10-11
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.54.1 to **0.56.2** on 2024-10-11
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.81.10 to **3.82.8** on 2024-10-13
  - [v8r](https://github.com/chris48s/v8r) from 4.0.1 to **4.1.0** on 2024-08-25
  - [vale](https://vale.sh/) from 3.7.0 to **3.7.1** on 2024-09-26

## New Contributors
* @AlejandroSuero made their first contribution in https://github.com/oxsecurity/megalinter/pull/3978
* @nabondance made their first contribution in https://github.com/oxsecurity/megalinter/pull/4045
* @tnyeanderson made their first contribution in https://github.com/oxsecurity/megalinter/pull/4076

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

[LinkedIn Release Post](https://www.linkedin.com/posts/nicolas-vuillamy_megalinter-v810-release-activity-7251192696432660480-T4VZ?utm_source=share&utm_medium=member_desktop)

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v8.0.0...v8.1.0
