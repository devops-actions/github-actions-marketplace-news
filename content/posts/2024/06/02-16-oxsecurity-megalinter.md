---
title: MegaLinter
date: 2024-06-02 16:45:58 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.12.0
dependentsNumber: "1,108"
---


Version updated for **oxsecurity/megalinter** to version **v7.12.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,108** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - Add new logs (at debug level) on each linter activation/deactivation
  - Clean MegaLinter own CVE exceptions and order the remaining ones with links to related issues
  - Upgrade to Java 21 except for npm-groovy-lint that requires Java 17

- Media
  - Add blog post [5 ways MegaLinter upped our DevSecOps game](https://flexion.us/blog/5-ways-megalinter-upped-our-devsecops-game/) to the list of English articles by @wesley-dean-flexion in https://github.com/oxsecurity/megalinter/pull/3596

- Linters
  - Add PHP fixer by @llaville in https://github.com/oxsecurity/megalinter/pull/3598
  - `API_SPECTRAL` was added as replacement for `OPENAPI_SPECTRAL` (deprecated), supporting AsyncAPI and OpenAPI by default. Uses Spectral's standard config file name `.spectral.yaml` instead of `.openapirc.yml` with a default config with rulesets for AsyncAPI and OpenAPI enabled. Fixes [#3387](https://github.com/oxsecurity/megalinter/issues/3387)
  - Disable SQL_TSQLLINT until security issues are solved. Related to <https://github.com/tsqllint/tsqllint/issues/333>
  - PHP linters (PHP_PHPCS, PHP_PHPLINT, PHP_PHPSTAN) add support to SARIF report output format with help of <https://github.com/llaville/sarif-php-sdk>
  - Php psalm improvement by @llaville in https://github.com/oxsecurity/megalinter/pull/3541
  - `KOTLIN_KTLINT` now supports `list_of_files` mode, and has better error counting
  - Upgrade `KOTLIN_DETEKT` and make it work with cli_lint_mode = project

- Fixes
  - Change `golangci-lint` lint mode to `project`, by @wandering-tales in https://github.com/oxsecurity/megalinter/pull/3509
  - Disable sql-lint as it is no longer maintained
  - Add new entries `findUnusedCode` and `findUnusedBaselineEntry` in default `psalm.xml` configuration file for PHP_PSALM linter. Related to <https://github.com/oxsecurity/megalinter/issues/3538>
  - fix(pylint): overgeneral-exceptions fully qualified name by @gardar in https://github.com/oxsecurity/megalinter/pull/3576
  -  Update `ktlint` descriptor to support `list_of_files` and better error counting by @Yann-J in https://github.com/oxsecurity/megalinter/pull/3575
  - Sync PowerShell version in arm.megalinter-descriptor.yml by @echoix in https://github.com/oxsecurity/megalinter/pull/3586
  - Adjust find commands to clean up files in same step by @echoix in https://github.com/oxsecurity/megalinter/pull/3588
  - Upgrade KOTLIN_DETEKT and make it work with cli_lint_mode = project by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3590 

- Doc
  - Handle disabled_reason property in descriptors
  - Sort enums in json schema, by @echoix in <https://github.com/oxsecurity/megalinter/pull/3595>

- CI
  - Build: take in account disabled linters for workflow auto-update
  - Remove useless package-lock.json that was in python tests folder
  - Fix SARIF_REPORTER that was wrongly sent to `true` to format & fix test methods
  - Build: Write ARG lines at the top of Dockerfiles if they are used by FROM variables
  - Remove Github Actions Workflow telemetry to improve performances
  - Update Docker image for Gitpod to run on Ubuntu Noble, by @echoix
  - Update makefile bootstrap config (gitpod or local) to use uv for package installation, by @echoix
  - Use uv to install Python deps for CI by @echoix in https://github.com/oxsecurity/megalinter/pull/3561
  - Use a single find command to delete pycache files by @echoix in https://github.com/oxsecurity/megalinter/pull/3562
  - Sort schema enums by @echoix in https://github.com/oxsecurity/megalinter/pull/3595

- Linter versions upgrades
  - [actionlint](https://rhysd.github.io/actionlint/) from 1.6.27 to **1.7.1** on 2024-05-28
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 24.2.2 to **24.2.3** on 2024-05-20
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.26.170 to **0.27.1** on 2024-05-07
  - [black](https://black.readthedocs.io/en/stable/) from 24.4.0 to **24.4.2** on 2024-04-26
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.86.4 to **0.87.4** on 2024-05-28
  - [checkov](https://www.checkov.io/) from 3.2.74 to **3.2.122** on 2024-05-04
  - [checkstyle](https://checkstyle.org/) from 10.15.0 to **10.17.0** on 2024-05-27
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.77 to **0.1.78** on 2024-05-04
  - [clj-kondo](https://github.com/borkdude/clj-kondo) from 2024.03.13 to **2024.05.24** on 2024-05-25
  - [csharpier](https://csharpier.com/) from 0.28.1 to **0.28.2** on 2024-04-26
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 8.7.0 to **8.8.3** on 2024-05-24
  - [detekt](https://detekt.dev/) from 1.23.5 to **1.23.6** on 2024-05-28
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 8.0.104 to **8.0.106** on 2024-06-01
  - [editorconfig-checker](https://editorconfig-checker.github.io/) from 2.7.2 to **3.0.1** on 2024-04-30
  - [git_diff](https://git-scm.com) from 2.43.0 to **2.43.4** on 2024-05-18
  - [golangci-lint](https://golangci-lint.run/) from 1.57.2 to **1.59.0** on 2024-05-27
  - [grype](https://github.com/anchore/grype) from 0.77.0 to **0.78.0** on 2024-05-28
  - [jscpd](https://github.com/kucherenko/jscpd/tree/master/packages/jscpd) from 3.5.10 to **4.0.4** on 2024-05-28
  - [kics](https://www.kics.io) from 2.0.0 to **2.0.1** on 2024-05-04
  - [kubeconform](https://github.com/yannh/kubeconform) from 0.6.4 to **0.6.6** on 2024-05-12
  - [lightning-flow-scanner](https://github.com/Lightning-Flow-Scanner) from 2.22.0 to **2.24.0** on 2024-05-20
  - [luacheck](https://luacheck.readthedocs.io) from 1.1.2 to **1.2.0** on 2024-05-25
  - [lychee](https://lychee.cli.rs) from 0.14.3 to **0.15.1** on 2024-05-13
  - [markdown-link-check](https://github.com/tcort/markdown-link-check) from 3.12.1 to **3.12.2** on 2024-05-22
  - [markdown-table-formatter](https://www.npmjs.com/package/markdown-table-formatter) from 1.5.0 to **1.6.0** on 2024-04-27
  - [markdownlint](https://github.com/DavidAnson/markdownlint) from 0.39.0 to **0.41.0** on 2024-05-26
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.9.0 to **1.10.0** on 2024-04-26
  - [npm-groovy-lint](https://nvuillam.github.io/npm-groovy-lint/) from 14.4.1 to **14.6.0** on 2024-05-12
  - [phpcs](https://github.com/PHPCSStandards/PHP_CodeSniffer) from 3.9.1 to **3.10.1** on 2024-04-23
  - [phplint](https://github.com/overtrue/phplint) from 9.1.2 to **9.3.1** on 2024-05-18
  - [phpstan](https://phpstan.org/) from 1.10.67 to **1.11.0** to **1.11.3** on 2024-05-31
  - [pmd](https://pmd.github.io/) from 6.55.0 to **7.1.0** on 2024-04-28
  - [powershell](https://github.com/PowerShell/PSScriptAnalyzer) from 7.4.1 to **7.4.2** on 2024-04-28
  - [powershell_formatter](https://github.com/PowerShell/PSScriptAnalyzer) from 7.4.1 to **7.4.2** on 2024-04-28
  - [prettier](https://prettier.io/) from 3.2.5 to **3.3.0** on 2024-06-01
  - [proselint](https://github.com/amperser/proselint) from 0.13.0 to **0.14.0** on 2024-05-24
  - [protolint](https://github.com/yoheimuta/protolint) from 0.49.6 to **0.49.7** on 2024-05-04
  - [psalm](https://psalm.dev) from Psalm.5.23.1@ to **Psalm.5.24.0@** on 2024-05-04
  - [pylint](https://pylint.readthedocs.io) from 3.1.0 to **3.2.2** on 2024-05-20
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.359 to **1.1.365** on 2024-05-31
  - [roslynator](https://github.com/dotnet/Roslynator) from 0.8.6.0 to **0.8.9.0** on 2024-06-01
  - [rubocop](https://rubocop.org/) from 1.63.3 to **1.64.1** on 2024-05-31
  - [ruff](https://github.com/astral-sh/ruff) from 0.4.1 to **0.4.7** on 2024-05-31
  - [scalafix](https://scalacenter.github.io/scalafix/) from 0.12.0 to **0.12.1** on 2024-05-04
  - [secretlint](https://github.com/secretlint/secretlint) from 8.2.3 to **8.2.4** on 2024-04-29
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.23.0 to **3.25.0** on 2024-05-28
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.23.0 to **3.25.0** on 2024-05-28
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.23.0 to **3.25.0** on 2024-05-28
  - [snakefmt](https://github.com/snakemake/snakefmt) from 0.10.1 to **0.10.2** on 2024-05-12
  - [snakemake](https://snakemake.readthedocs.io/en/stable/) from 8.10.8 to **8.12.0** on 2024-05-27
  - [sqlfluff](https://www.sqlfluff.com/) from 3.0.5 to **3.0.7** on 2024-05-24
  - [stylelint](https://stylelint.io) from 16.4.0 to **16.6.1** on 2024-05-28
  - [syft](https://github.com/anchore/syft) from 1.2.0 to **1.5.0** on 2024-05-28
  - [tekton-lint](https://github.com/IBM/tekton-lint) from 1.0.2 to **1.1.0** on 2024-05-25
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.8.1 to **1.8.4** on 2024-05-25
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.57.5 to **0.58.10** on 2024-05-27
  - [tflint](https://github.com/terraform-linters/tflint) from 0.50.3 to **0.51.1** on 2024-06-02
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.50.2 to **0.51.4** on 2024-05-25
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.50.2 to **0.51.4** on 2024-05-25
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.73.0 to **3.77.0** on 2024-05-28
  - [vale](https://vale.sh/) from 3.4.0 to **3.4.2** on 2024-05-04
  - [xmllint](https://gitlab.gnome.org/GNOME/libxml2/-/wikis/home) from 21107 to **21108** on 2024-05-18

## New Contributors
* @gardar made their first contribution in https://github.com/oxsecurity/megalinter/pull/3576

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7...v7.12.0
