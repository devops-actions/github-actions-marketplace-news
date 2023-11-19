---
title: MegaLinter
date: 2023-11-19 19:03:49 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.6.0
dependentsNumber: "793"
---


Version updated for **oxsecurity/megalinter** to version **v7.6.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **793** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Major enhancements
  - New flavor [**c_cpp**](https://megalinter.io/latest/flavors/c_cpp/): New flavor for pure C/C++ projects, by @daltonv in https://github.com/oxsecurity/megalinter/pull/3067
  - New flavor [**formatters**](https://megalinter.io/beta/flavors/formatters/): Contains only formatter linters, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3071
  - Add [**Salesforce Lightning Flow Scanner**](https://github.com/Lightning-Flow-Scanner), by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3092

- Core
  - Allow to use value `any` to always activate a linter who as a **_DIRECTORY** variable. Example: `KUBERNETES_DIRECTORY: any`, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3058
  - Update base Docker image to `python:3.11.6-alpine3.18`

- Fixes
  - Fix issue Gitleaks `--no-git` does not work anymore, [#2945](https://github.com/oxsecurity/megalinter/issues/2945), in [#3112](https://github.com/oxsecurity/megalinter/pull/3112)
  - Fix way to install powershell on Alpine linux image
  - Fix issue with VS Code devcontainer not building [#3114](https://github.com/oxsecurity/megalinter/issues/3114)
  - Fix Default Workflow to handle latest ActionLint rules, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3130
  - Write checkov SARIF report `results_sarif.sarif` in `REPORT_FOLDER`, by @gmeligio in https://github.com/oxsecurity/megalinter/pull/3121
  - Updated lintr config template to use `linters_with_defaults()` (formerly `with_defaults()`)
  - Fix csharp installation dependencies, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3075
  - Fix powershell installation by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3126

- Doc
  - Update lintr links to their current locations, by @echoix in [#3122](https://github.com/oxsecurity/megalinter/issues/3122)
  - Update Pylint links to their current locations, by @echoix in [#3116](https://github.com/oxsecurity/megalinter/issues/3116)
  - Add [R2DevOps way](https://r2devops.io/marketplace/gitlab/r2devops/hub/mega_linter) to setup MegaLinter on Gitlab, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3129

- CI
  - Upgrade pymdown-extensions and markdown, by @BryanQuigley in [#3053](https://github.com/oxsecurity/megalinter/pull/3053)
  - Use docker/metadata-action for some internal CI, by @echoix in [#3110](https://github.com/oxsecurity/megalinter/pull/3110)
  - Call docker buildx prune instead of docker builder prune, by @echoix in [#3127](https://github.com/oxsecurity/megalinter/pull/3127)
  - Set schedule earlier for auto-update-linters.yml, allow manual runs, by @echoix in https://github.com/oxsecurity/megalinter/pull/3066
  - Add mike to dev/requirements.txt, by @echoix in https://github.com/oxsecurity/megalinter/pull/3070
  - Modernize dependabot.yml in correct directories, by @echoix in https://github.com/oxsecurity/megalinter/pull/3093
  - Fix devcontainer Dockerfile typo (fixes #3114) by @daltonv in https://github.com/oxsecurity/megalinter/pull/3115

- Linter versions upgrades
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 6.21.1 to **6.22.0**
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.22.6 to **0.23.1**
  - [black](https://black.readthedocs.io/en/stable/) from 23.10.1 to **23.11.0**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.83.0 to **0.83.3**
  - [checkov](https://www.checkov.io/) from 3.0.12 to **3.0.39**
  - [checkstyle](https://checkstyle.sourceforge.io) from 10.12.4 to **10.12.5**
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.73 to **0.1.74**
  - [csharpier](https://csharpier.com/) from 0.25.0 to **0.26.2**
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 7.3.8 to **8.0.0**
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 6.0.416 to **6.0.417**
  - [eslint](https://eslint.org) from 8.52.0 to **8.54.0**
  - [golangci-lint](https://golangci-lint.run/) from 1.55.1 to **1.55.2**
  - [kics](https://www.kics.io) from 1.7.10 to **1.7.11**
  - [kubeconform](https://github.com/yannh/kubeconform) from 0.6.3 to **0.6.4**
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.6.1 to **1.7.0**
  - [npm-groovy-lint](https://nvuillam.github.io/npm-groovy-lint/) from 11.1.1 to **12.1.0**
  - [npm-package-json-lint](https://npmpackagejsonlint.org/) from 7.0.0 to **7.1.0**
  - [phpstan](https://phpstan.org/) from 1.10.39 to **1.10.42**
  - [powershell](https://github.com/PowerShell/PSScriptAnalyzer) from 7.3.9 to **7.4.0**
  - [powershell_formatter](https://github.com/PowerShell/PSScriptAnalyzer) from 7.3.9 to **7.4.0**
  - [prettier](https://prettier.io/) from 3.0.3 to **3.1.0**
  - [protolint](https://github.com/yoheimuta/protolint) from 0.46.2 to **0.46.3**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.333 to **1.1.336**
  - [ruff](https://github.com/astral-sh/ruff) from 0.1.3 to **0.1.6**
  - [secretlint](https://github.com/secretlint/secretlint) from 7.0.7 to **7.1.0**
  - [semgrep](https://semgrep.dev/) from 1.46.0 to **1.50.0**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.17.0 to **3.18.0**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.17.0 to **3.18.0**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.17.0 to **3.18.0**
  - [swiftlint](https://github.com/realm/SwiftLint) from 0.53.0 to **0.54.0**
  - [syft](https://github.com/anchore/syft) from 0.94.0 to **0.97.1**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.6.2 to **1.6.4**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.53.0 to **0.53.4**
  - [tflint](https://github.com/terraform-linters/tflint) from 0.48.0 to **0.49.0**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.46.1 to **0.47.0**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.46.1 to **0.47.0**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.61.0 to **3.63.0**
  - [vale](https://vale.sh/) from 2.29.5 to **2.29.7**
  - [xmllint](http://xmlsoft.org/xmllint.html) from 21104 to **21106**
  - [yamllint](https://yamllint.readthedocs.io/) from 1.32.0 to **1.33.0**

## New Contributors
* @BryanQuigley made their first contribution in https://github.com/oxsecurity/megalinter/pull/3053
* @daltonv made their first contribution in https://github.com/oxsecurity/megalinter/pull/3067
* @VictorRos made their first contribution in https://github.com/oxsecurity/megalinter/pull/3112
* @gmeligio made their first contribution in https://github.com/oxsecurity/megalinter/pull/3121

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7...v7.6.0
