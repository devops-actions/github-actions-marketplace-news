---
title: MegaLinter
date: 2024-08-20 00:50:58 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v8.0.0
dependentsNumber: "1,192"
---


Version updated for **oxsecurity/megalinter** to version **v8.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,192** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Reporters
  - New [**ApiReporter**](https://megalinter.io/beta/reporters/ApiReporter/) (can be used to build Grafana dashboards), by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3540

[![Upgrade to v8 Video](https://img.youtube.com/vi/vbx-ifa1oXE/0.jpg)](https://www.youtube.com/watch?v=vbx-ifa1oXE)

- Removed deprecated linters, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3854
  - CSS_SCSSLINT: [Project discontinued and advising to use stylelint](https://github.com/sds/scss-lint#notice-consider-other-tools-before-adopting-scss-lint)
  - OPENAPI_SPECTRAL: Replaced by [API_SPECTRAL](https://megalinter.io/latest/descriptors/api_spectral/) (same linter but more formats handled)
  - SQL_SQL_LINT: [Project no longer maintained](https://github.com/joereynolds/sql-lint/issues/262)

- Core
  - Hide to linters by default all environment variables that contain **TOKEN**, **USERNAME** or **PASSWORD**, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3881
  - Allow to override CLI_LINT_MODE when defined as project, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3772
  - Allow to use absolute paths for LINTER_RULES_PATH, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3775
  - Allow to update variables from [PRE/POST Commands](https://megalinter.io/latest/config-precommands/) using `output_variables` property, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3861

- Media
  - [MegaLinter: un linter pour les gouverner tous](https://blog.wescale.fr/megalinter-un-linter-pour-les-gouverner-tous) (FR), by [Guillaume Arnaud](https://www.linkedin.com/in/guillaume-arnaud/) from [WeScale](https://www.wescale.fr/)
  - [MegaLinter](https://blog.stephane-robert.info/docs/developper/autres-outils/linters/megalinter/), by [Stéphane Robert](https://www.linkedin.com/in/stephanerobert1/), from [3DS OutScale](https://fr.outscale.com/)
  - [30 Seconds to Setup MegaLinter: Your Go-To Tool for Automated Code Quality](https://medium.com/@caodanju/30-seconds-to-setup-megalinter-your-go-to-tool-for-automated-code-quality-and-iac-security-969d90a5a99c), by [Peng Cao](https://www.linkedin.com/in/peng-cao-83b6a2103/) |

- Linters enhancements
  - [bandit](https://megalinter.io/latest/descriptors/python_bandit/) Call bandit with quiet mode to generate less logs, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3892
  - [grype](https://megalinter.io/latest/descriptors/repository_grype/) Count number of errors returned by Grype,  by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3906
  - [yamllint](https://megalinter.io/latest/descriptors/yaml_yamllint) Fix yamllint default format to avoid special characters or GitHub sections in text logs, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3898

- Fixes
  - [terrascan](https://runterrascan.io/) fixed errors and removed redundant code, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3767
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) various performance improvements and ability to specify sln or proj paths, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3741
  - [swiftlint](https://github.com/realm/SwiftLint) Remove deprecated argument --path
  - Salesforce linters: Disable SF CLI auto update warning, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3883

- Doc
  - Add images and links to Git, CI/CD & other tools integrations at the beginning of the README, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3885
  - Create README animated GIF presentation of MegaLinter, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3910
  - Format mkdocs search index in place, by @echoix in https://github.com/oxsecurity/megalinter/pull/3890
  - Use consistent spelling of 'flavor', by @InputUsername in https://github.com/oxsecurity/megalinter/pull/3789

- CI
  - Fix docker warnings, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3853
    - FromAsCasing: 'as' and 'FROM' keywords' casing do not match
    - NoEmptyContinuation: Empty continuation line
    - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data
  - Port Beta workflows to use docker/metadata-action, by @echoix in https://github.com/oxsecurity/megalinter/pull/3860
  - AutoUpdate linters: Always create a PR if the job has been started manually, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3863
  - Add `skip_checkout: true` to default MegaLinter GitHub Action template
  - Remove path filters in deploy-DEV workflow as it is a required check by @echoix in https://github.com/oxsecurity/megalinter/pull/3894

- mega-linter-runner
  - Add new rules to upgrade to MegaLinter v8, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3896
  - Replace glob-promise by glob library, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3902
    - **Minimum NodeJs version is now 20.x**

- Linter versions upgrades
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 24.6.1 to **24.7.0**
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.28.1 to **0.29.47**
  - [black](https://black.readthedocs.io/en/stable/) from 24.4.2 to **24.8.0**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 1.5.0 to **1.10.3**
  - [checkov](https://www.checkov.io/) from 3.2.174 to **3.2.232**
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.79 to **0.1.80**
  - [clj-kondo](https://github.com/borkdude/clj-kondo) from 2024.05.24 to **2024.08.01**
  - [csharpier](https://csharpier.com/) from 0.28.2 to **0.29.0**
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 8.10.4 to **8.14.1**
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 8.0.106 to **8.0.108**
  - [flake8](https://flake8.pycqa.org) from 7.1.0 to **7.1.1**
  - [golangci-lint](https://golangci-lint.run/) from 1.59.1 to **1.60.1**
  - [grype](https://github.com/anchore/grype) from 0.79.2 to **0.79.5**
  - [jsonlint](https://github.com/prantlf/jsonlint) from 14.0.3 to **16.0.0**
  - [kics](https://www.kics.io) from 2.1.1 to **2.1.2**
  - [kubeconform](https://github.com/yannh/kubeconform) from 0.6.6 to **0.6.7**
  - [lightning-flow-scanner](https://github.com/Lightning-Flow-Scanner) from 2.28.0 to **2.33.0**
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.10.1 to **1.11.1**
  - [php-cs-fixer](https://cs.symfony.com/) from 3.59.3 to **3.62.0**
  - [phpcs](https://github.com/PHPCSStandards/PHP_CodeSniffer) from 3.10.1 to **3.10.2**
  - [phpstan](https://phpstan.org/) from 1.11.9 to **1.11.11**
  - [pmd](https://pmd.github.io/) from 7.3.0 to **7.4.0**
  - [prettier](https://prettier.io/) from 3.3.2 to **3.3.3**
  - [protolint](https://github.com/yoheimuta/protolint) from 0.50.2 to **0.50.5**
  - [pylint](https://pylint.readthedocs.io) from 3.2.5 to **3.2.6**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.370 to **1.1.376**
  - [revive](https://revive.run/) from 1.3.7 to **1.3.9**
  - [rstcheck](https://github.com/myint/rstcheck) from 6.2.1 to **6.2.4**
  - [rubocop](https://rubocop.org/) from 1.64.1 to **1.65.1**
  - [ruff](https://github.com/astral-sh/ruff) from 0.5.1 to **0.6.1**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 4.3.2 to **4.4.0**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 4.3.2 to **4.4.0**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 4.3.2 to **4.4.0**
  - [snakemake](https://snakemake.readthedocs.io/en/stable/) from 8.15.2 to **8.18.1**
  - [stylelint](https://stylelint.io) from 16.6.1 to **16.8.2**
  - [swiftlint](https://github.com/realm/SwiftLint) from 0.55.1 to **0.56.1**
  - [syft](https://github.com/anchore/syft) from 1.8.0 to **1.11.0**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.9.0 to **1.9.4**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.59.6 to **0.66.8**
  - [tflint](https://github.com/terraform-linters/tflint) from 0.52.0 to **0.53.0**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.53.0 to **0.54.1**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.53.0 to **0.54.1**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.79.0 to **3.81.9**
  - [v8r](https://github.com/chris48s/v8r) from 3.1.0 to **4.0.1**
  - [vale](https://vale.sh/) from 3.6.0 to **3.7.0**

## New Contributors
* @InputUsername made their first contribution in https://github.com/oxsecurity/megalinter/pull/3789

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7.13.0...v8.0.0
