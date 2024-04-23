---
title: MegaLinter
date: 2024-04-23 19:28:42 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.11.0
dependentsNumber: "1,032"
---


Version updated for **oxsecurity/megalinter** to version **v7.11.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,032** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - Allow to override the number of parallel cores used, with variable **PARALLEL_PROCESS_NUMBER**, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3428
  - Upgrade base python image from 3.12.2-alpine3.19 to 3.12.3-alpine3.19
  - Upgrade PHP 8.1 to 8.3 by @llaville in https://github.com/oxsecurity/megalinter/pull/3464
  - Add descriptor pre / post commands, by @bdovaz in https://github.com/oxsecurity/megalinter/pull/3468
  - Allow merge lists with **EXTENDS**, by @bdovaz in https://github.com/oxsecurity/megalinter/pull/3469

- Media

- New linters
  - Add Kotlin detekt linter, by @enciyo in https://github.com/oxsecurity/megalinter/pull/3408

- Reporters
  - Add ruff sarif support, by @Skitionek in https://github.com/oxsecurity/megalinter/pull/3486

- Fixes
  - Fix listing of modified files, by @vkucera in <https://github.com/oxsecurity/megalinter/pull/3472>. Fixes <https://github.com/oxsecurity/megalinter/issues/2125>.
  - Fix conflict between prettier and yamllint about spaces, by @apeyrat in https://github.com/oxsecurity/megalinter/pull/3426
  - Ensure [trufflehog](https://github.com/trufflesecurity/trufflehog) does not auto-update itself,  by @wandering-tales in https://github.com/oxsecurity/megalinter/pull/3430
  - Salesforce linters: use sf + default Flow Scanner rules, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3435
  - Disable JSON_ESLINT_PLUGIN_JSONC until <https://github.com/ota-meshi/eslint-plugin-jsonc/issues/328> is fixed
  - Upgrade tar in mega-linter-runner
  - secretlint: remove default `.secretlintignore` that was never used but `.gitignore` is used instead. Fixes [#3328](https://github.com/oxsecurity/megalinter/issues/3328)
  - Add jpeg, xlsx to .gitleaks.toml, by @rasa in https://github.com/oxsecurity/megalinter/pull/3434
  - Fix Json Schema, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3470
  - Remove `TEMPLATES/.secretlintignore`, by @pjungermann in https://github.com/oxsecurity/megalinter/pull/3476

- Doc
  - Update R2DevOps logo, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3436
  - Update [Roslynator](https://github.com/dotnet/roslynator) repo url and logo, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3444
  - Fix clang-format documentation links to point to the correct version. Fixes [#3452](https://github.com/oxsecurity/megalinter/issues/3452), by @daltonv in https://github.com/oxsecurity/megalinter/pull/3453
  - Add copy to clipboard button in code block (documentation), by @nikkii86 in https://github.com/oxsecurity/megalinter/pull/3491

- Flavors
  - Add C & C++ linters in Python flavor by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3456

- CI
  - Make SPELL_LYCHEE non blocking for internal CI jobs
  - Remove old unused automerge workflows by @echoix in https://github.com/oxsecurity/megalinter/pull/3432
  - Add consistent python3/python handling at build.sh, by @pjungermann in https://github.com/oxsecurity/megalinter/pull/3475

- Linter versions upgrades
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 24.2.0 to **24.2.2**
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.25.53 to **0.26.170**
  - [black](https://black.readthedocs.io/en/stable/) from 24.2.0 to **24.4.0**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.86.0 to **0.86.4**
  - [checkov](https://www.checkov.io/) from 3.2.34 to **3.2.74**
  - [checkstyle](https://checkstyle.org/) from 10.14.0 to **10.15.0**
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.76 to **0.1.77**
  - [clj-kondo](https://github.com/borkdude/clj-kondo) from 2024.03.05 to **2024.03.13**
  - [csharpier](https://csharpier.com/) from 0.27.3 to **0.28.1**
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 8.6.0 to **8.7.0**
  - [devskim](https://github.com/microsoft/DevSkim) from 1.0.32 to **1.0.33**
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 8.0.102 to **8.0.104**
  - [eslint-plugin-jsonc](https://ota-meshi.github.io/eslint-plugin-jsonc/) from 2.13.0 to **2.15.1**
  - [golangci-lint](https://golangci-lint.run/) from 1.56.2 to **1.57.2**
  - [grype](https://github.com/anchore/grype) from 0.74.7 to **0.77.0**
  - [kics](https://www.kics.io) from 1.7.13 to **2.0.0**
  - [lightning-flow-scanner](https://github.com/Lightning-Flow-Scanner) from 2.18.0 to **2.22.0**
  - [markdown-link-check](https://github.com/tcort/markdown-link-check) from 3.11.2 to **3.12.1**
  - [npm-groovy-lint](https://nvuillam.github.io/npm-groovy-lint/) from 14.2.3 to **14.4.1**
  - [phpcs](https://github.com/PHPCSStandards/PHP_CodeSniffer) from 3.9.0 to **3.9.1**
  - [phpstan](https://phpstan.org/) from 1.10.60 to **1.10.67**
  - [protolint](https://github.com/yoheimuta/protolint) from 0.48.0 to **0.49.6**
  - [psalm](https://psalm.dev) from Psalm.5.23.0@ to **Psalm.5.23.1@**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.353 to **1.1.359**
  - [roslynator](https://github.com/dotnet/Roslynator) from 0.8.3.0 to **0.8.6.0**
  - [rstcheck](https://github.com/myint/rstcheck) from 6.2.0 to **6.2.1**
  - [rubocop](https://rubocop.org/) from 1.62.0 to **1.63.3**
  - [ruff](https://github.com/astral-sh/ruff) from 0.3.2 to **0.4.1**
  - [secretlint](https://github.com/secretlint/secretlint) from 8.1.2 to **8.2.3**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.21.0 to **3.23.0**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.21.0 to **3.23.0**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.21.0 to **3.23.0**
  - [snakefmt](https://github.com/snakemake/snakefmt) from 0.10.0 to **0.10.1**
  - [snakemake](https://snakemake.readthedocs.io/en/stable/) from 8.5.5 to **8.10.8**
  - [spectral](https://docs.stoplight.io/docs/spectral/674b27b261c3c-overview) from 6.11.0 to **6.11.1**
  - [sqlfluff](https://www.sqlfluff.com/) from 2.3.5 to **3.0.5**
  - [stylelint](https://stylelint.io) from 16.2.1 to **16.3.1**
  - [syft](https://github.com/anchore/syft) from 1.0.1 to **1.2.0**
  - [tekton-lint](https://github.com/IBM/tekton-lint) from 1.0.0 to **1.0.2**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.7.4 to **1.8.1**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.55.13 to **0.57.5**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.49.1 to **0.50.2**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.49.1 to **0.50.2**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.69.0 to **3.73.0**
  - [vale](https://vale.sh/) from 3.2.2 to **3.4.0**

## New Contributors
* @apeyrat made their first contribution in https://github.com/oxsecurity/megalinter/pull/3426
* @wandering-tales made their first contribution in https://github.com/oxsecurity/megalinter/pull/3430
* @enciyo made their first contribution in https://github.com/oxsecurity/megalinter/pull/3408
* @Skitionek made their first contribution in https://github.com/oxsecurity/megalinter/pull/3486
* @nikkii86 made their first contribution in https://github.com/oxsecurity/megalinter/pull/3491

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7.10.0...v7.11.0
