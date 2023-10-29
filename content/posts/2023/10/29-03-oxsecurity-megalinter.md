---
title: MegaLinter
date: 2023-10-29 03:17:08 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.5.0
dependentsNumber: "766"
---


Version updated for **oxsecurity/megalinter** to version **v7.5.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **766** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - mega-linter-runner: Convert to ES6 and upgrade npm dependencies. Node 18 minimum version is now required. by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2976
  - Allow to define `COMPILER_ONLY` virtual package as cargo dependency in descriptors to embed rust compiler in the Dockerfile
  - Optimize `@generated` marker scanning ([#2654](https://github.com/oxsecurity/megalinter/pull/2654)) by @sanmai-NL in https://github.com/oxsecurity/megalinter/pull/2654

- Media
  - [Achieve Code Consistency: MegaLinter Integration in Azure DevOps](https://techcommunity.microsoft.com/t5/azure-devops-blog/achieve-code-consistency-megalinter-integration-in-azure-devops/ba-p/3939448), by [Don Koning](https://techcommunity.microsoft.com/t5/user/viewprofilepage/user-id/2039143#profile) on [Microsoft Tech Community](https://techcommunity.microsoft.com/)

- Fixes
  - build.py: Remove exclusivity between pip, gem & cargo packages
  - Salesforce linters: Switch sfdx-cli to @salesforce/cli
  - Fixed issue with `actionlint` throwing an error on `if` statements in the generated workflow file 
  - Added default `.devskim.json` to mitigate errors introduced when no config exists (closes #3017) by @andrewvaughan in https://github.com/oxsecurity/megalinter/pull/3024
  - Fix: Removed curly-brackets from if (closes #3025) by @andrewvaughan in https://github.com/oxsecurity/megalinter/pull/3029

- Doc
  - Display list of articles from newest to oldest
  - Fix incorrect environment variable in djlint docs by @adhil0 in https://github.com/oxsecurity/megalinter/pull/2993
  - Improve lychee documentation to add an example of `.lycheeignore` by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3003

- CI
  - Add the other maintainers globally to the CODEOWNERS file ([#3008](https://github.com/oxsecurity/megalinter/pull/3008))
  - Free disk space earlier in the process to avoid failure during docker build
  - Set flavors-stats.json as a generated file in .gitattributes ([#3023](https://github.com/oxsecurity/megalinter/pull/3023))
  - Update and fix our ChatOps automations to only run on pull request comments, by @echoix in [#3034](https://github.com/oxsecurity/megalinter/pull/3034)
  - Use App::cpm to install perlcritic faster, and clean `.perl-cpm` cache, by @echoix in [#3036](https://github.com/oxsecurity/megalinter/pull/3036)
  - Add failure message in ChatOps build-command and Slash dispatcher, by @echoix in [#3037](https://github.com/oxsecurity/megalinter/pull/3037)
  - TEMPLATES/mega-linter.yml: DRY the ifs by @rasa in https://github.com/oxsecurity/megalinter/pull/2957

- Linter versions upgrades
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 6.20.0 **6.21.1**
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.21.1 to **0.22.6**
  - [black](https://black.readthedocs.io/en/stable/) from 23.9.1 to **23.10.1**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.80.2 to **0.83.0**
  - [checkov](https://www.checkov.io/) from 2.4.48 to **3.0.12**
  - [checkstyle](https://checkstyle.sourceforge.io) from 10.12.3 to **10.12.4**
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.72 to **0.1.73**
  - [clj-kondo](https://github.com/borkdude/clj-kondo) from 2023.09.07 to **2023.10.20**
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 7.3.6 to **7.3.8**
  - [devskim](https://github.com/microsoft/DevSkim) from 1.0.22 to **1.0.23**
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 6.0.414 to **6.0.416**
  - [editorconfig-checker](https://editorconfig-checker.github.io/) from 2.7.1 to **2.7.2**
  - [eslint-plugin-jsonc](https://ota-meshi.github.io/eslint-plugin-jsonc/) from 2.9.0 to **2.10.0**
  - [eslint](https://eslint.org) from 8.49.0 to **8.52.0**
  - [golangci-lint](https://golangci-lint.run/) from 1.54.2 to **1.55.1**
  - [kics](https://www.kics.io) from 1.7.8 to **1.7.10**
  - [ktlint](https://ktlint.github.io) from 1.0.0 to **1.0.1**
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.5.1 to **1.6.1**
  - [perlcritic](https://metacpan.org/pod/Perl::Critic) from 1.150 to **1.152**
  - [phpstan](https://phpstan.org/) from 1.10.35 to **1.10.39**
  - [powershell](https://github.com/PowerShell/PSScriptAnalyzer) from 7.3.7 to **7.3.9**
  - [powershell_formatter](https://github.com/PowerShell/PSScriptAnalyzer) from 7.3.7 to **7.3.9**
  - [protolint](https://github.com/yoheimuta/protolint) from 0.46.0 to **0.46.2**
  - [puppet-lint](http://puppet-lint.com/) from 4.2.0 to **4.2.1**
  - [pylint](https://pylint.pycqa.org) from 2.17.5 to **3.0.2**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.327 to **1.1.333**
  - [rubocop](https://rubocop.org/) from 1.56.3 to **1.57.2**
  - [ruff](https://github.com/astral-sh/ruff) from 0.1.2 to **0.1.3**
  - [ruff](https://github.com/charliermarsh/ruff) from 0.0.290 to **0.1.2**
  - [semgrep](https://semgrep.dev/) from 1.41.0 to **1.46.0**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.16.0 to **3.17.0**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.16.0 to **3.17.0**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.16.0 to **3.17.0**
  - [snakefmt](https://github.com/snakemake/snakefmt) from 0.8.4 to **0.8.5**
  - [sqlfluff](https://www.sqlfluff.com/) from 2.3.2 to **2.3.5**
  - [stylelint](https://stylelint.io) from 15.10.3 to **15.11.0**
  - [swiftlint](https://github.com/realm/SwiftLint) from 0.52.4 to **0.53.0**
  - [syft](https://github.com/anchore/syft) from 0.91.0 to **0.94.0**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.5.7 to **1.6.2**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.51.4 to **0.53.0**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.45.1 to **0.46.1**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.45.1 to **0.46.1**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.56.1 to **3.61.0**
  - [v8r](https://github.com/chris48s/v8r) from 2.0.0 to **2.1.0**
  - [vale](https://vale.sh/) from 2.29.0 to **2.29.5**

## New Contributors
* @adhil0 made their first contribution in https://github.com/oxsecurity/megalinter/pull/2993
* @sanmai-NL made their first contribution in https://github.com/oxsecurity/megalinter/pull/2654

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7.4.0...v7.5.0
