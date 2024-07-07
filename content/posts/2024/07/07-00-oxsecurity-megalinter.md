---
title: MegaLinter
date: 2024-07-07 00:53:31 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.13.0
dependentsNumber: "1,156"
---


Version updated for **oxsecurity/megalinter** to version **v7.13.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,156** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- New linters
  - Add [**ls-lint**](https://ls-lint.org/), file and folder linter, by @scolladon in https://github.com/oxsecurity/megalinter/pull/3681

- Core
  - Handle renovate version comments in build script, by @echoix in https://github.com/oxsecurity/megalinter/pull/3617 ,  https://github.com/oxsecurity/megalinter/pull/3627 , https://github.com/oxsecurity/megalinter/pull/3643 , https://github.com/oxsecurity/megalinter/pull/3699 , https://github.com/oxsecurity/megalinter/pull/3700
  - Update base image to python:3.12.4-alpine3.20
  - Use `dotnet8-sdk` available in the main repository, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3696

- Media
  - [Introducing MegaLinter: Streamlining Code Quality Checks Across Multiple Languages](https://cloudtuned.hashnode.dev/introducing-megalinter-streamlining-code-quality-checks-across-multiple-languages), by Cloud Tuned
  - [Infrastructure as Code GitHub Codespace Template](https://luke.geek.nz/azure/iac-github-codespace/), by [Luke Murray](https://www.linkedin.com/in/ljmurray/)
  - [Video: How to: Secrets scanning](https://youtu.be/iBMWAk5QIfM?si=EVcJilkz7Y2jdn6e&t=649), by [Hackitect's playground](https://www.youtube.com/@hackitectsplayground)

- Linters enhancements
  - Add SARIF support (v2) for all PHP linters by @llaville in https://github.com/oxsecurity/megalinter/pull/3745 , https://github.com/oxsecurity/megalinter/pull/3729
  - Add python package Pygments to rst-lint venv, by @bobidle in https://github.com/oxsecurity/megalinter/pull/3631
  - [CSharpier](https://csharpier.com) added ability to override config filename and path, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3664
  - [xmllint](https://gnome.pages.gitlab.gnome.org/libxml2/xmllint.html) added support for `xsd` files, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3665

- Fixes
  - Improve support for single argument in `get_list_args` function, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3589
  - [ansible-lint](https://ansible-lint.readthedocs.io) Improved activation by checking for `.ansible-lint` config file, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3697
  - [DevSkim](https://github.com/microsoft/DevSkim) fixed fatal errors when scanning and ability to override config path, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3673
  - [GitLeaks](https://github.com/gitleaks/gitleaks) add missing schema properties, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3675
  - [Powershell](https://github.com/PowerShell/PSScriptAnalyzer#readme) Error table truncation improvements, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3620
  - [Powershell](https://github.com/PowerShell/PSScriptAnalyzer#readme) added missing schema property `POWERSHELL_POWERSHELL_FORMATTER_OUTPUT_ENCODING`, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3678
  - [syft](https://github.com/anchore/syft) use `scan` instead of deprecated `packages` arg, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3613
  - [tflint](https://github.com/terraform-linters/tflint) added missing schema property `TERRAFORM_TFLINT_SECURED_ENV`, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3679
  - [tflint](https://github.com/terraform-linters/tflint) fixed deprecated argument and other improvements to default `.tflint.hcl` template, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3688
  - [xmllint](https://gitlab.gnome.org/GNOME/libxml2/-/wikis/home) added missing schema properties `XML_XMLLINT_AUTOFORMAT` and `XML_XMLLINT_INDENT`, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3677
  - [yamllint](https://github.com/adrienverge/yamllint) fix error/warning count to work with different log output formats, by @TommyE123 in https://github.com/oxsecurity/megalinter/pull/3612

- Doc
  - Update documentation icons by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3625

- Flavors
  - Add gherkin-lint in c_cpp flavor, by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3698

- CI
  - Bump actions/checkout from 3 to 4, by @KristjanESPERANTO in https://github.com/oxsecurity/megalinter/pull/2994
  - Reduce dependabot PR frequency to weekly by @echoix in https://github.com/oxsecurity/megalinter/pull/3642

- Linter versions upgrades
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 24.2.3 to **24.6.1**
  - [bandit](https://bandit.readthedocs.io/en/latest/) from 1.7.8 to **1.7.9**
  - [bash-exec](https://www.gnu.org/software/bash/) from 5.2.21 to **5.2.26**
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.27.1 to **0.28.1**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.87.4 to **1.5.0**
  - [checkov](https://www.checkov.io/) from 3.2.122 to **3.2.174**
  - [clang-format](https://releases.llvm.org/17.0.1/tools/clang/docs/ClangFormat.html) from 17.0.5 to **17.0.6**
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.78 to **0.1.79**
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 8.8.3 to **8.10.4**
  - [editorconfig-checker](https://editorconfig-checker.github.io/) from 3.0.1 to **3.0.3**
  - [flake8](https://flake8.pycqa.org) from 7.0.0 to **7.1.0**
  - [git_diff](https://git-scm.com) from 2.43.4 to **2.45.2**
  - [gitleaks](https://github.com/gitleaks/gitleaks) from 8.18.2 to **8.18.4**
  - [golangci-lint](https://golangci-lint.run/) from 1.59.0 to **1.59.1**
  - [grype](https://github.com/anchore/grype) from 0.78.0 to **0.79.2**
  - [helm](https://helm.sh/docs/helm/helm_lint/) from 3.14.2 to **3.14.3**
  - [jscpd](https://github.com/kucherenko/jscpd/tree/master/packages/jscpd) from 4.0.4 to **4.0.5**
  - [kics](https://www.kics.io) from 2.0.1 to **2.1.1**
  - [ktlint](https://ktlint.github.io) from 1.2.1 to **1.3.1**
  - [lightning-flow-scanner](https://github.com/Lightning-Flow-Scanner) from 2.26.0 to **2.28.0**
  - [markdown-table-formatter](https://www.npmjs.com/package/markdown-table-formatter) from 1.6.0 to **1.6.1**
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.10.0 to **1.10.1**
  - [npm-package-json-lint](https://npmpackagejsonlint.org/) from 7.1.0 to **8.0.0**
  - [php-cs-fixer](https://cs.symfony.com/) from 3.58.1 to **3.59.3**
  - [phplint](https://github.com/overtrue/phplint) from 9.3.1 to **9.4.1**
  - [phpstan](https://phpstan.org/) from 1.11.3 to **1.11.7**
  - [pmd](https://pmd.github.io/) from 7.1.0 to **7.3.0**
  - [prettier](https://prettier.io/) from 3.3.0 to **3.3.2**
  - [protolint](https://github.com/yoheimuta/protolint) from 0.49.7 to **0.50.2**
  - [psalm](https://psalm.dev) from Psalm.5.24.0@ to **Psalm.5.25.0@**
  - [pylint](https://pylint.readthedocs.io) from 3.2.2 to **3.2.5**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.365 to **1.1.370**
  - [ruff](https://github.com/astral-sh/ruff) from 0.4.10 to **0.5.1**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.25.0 to **4.3.2**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.25.0 to **4.3.2**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.25.0 to **4.3.2**
  - [snakemake](https://snakemake.readthedocs.io/en/stable/) from 8.12.0 to **8.15.2**
  - [sqlfluff](https://www.sqlfluff.com/) from 3.0.7 to **3.1.0**
  - [swiftlint](https://github.com/realm/SwiftLint) from 0.54.0 to **0.55.1**
  - [syft](https://github.com/anchore/syft) from 1.5.0 to **1.8.0**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.8.4 to **1.9.0**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.58.13 to **0.59.6**
  - [tflint](https://github.com/terraform-linters/tflint) from 0.51.1 to **0.52.0**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.51.4 to **0.53.0**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.51.4 to **0.53.0**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.77.0 to **3.79.0**
  - [v8r](https://github.com/chris48s/v8r) from 3.0.0 to **3.1.0**
  - [vale](https://vale.sh/) from 3.4.2 to **3.6.0**
  - [xmllint](https://gitlab.gnome.org/GNOME/libxml2/-/wikis/home) from 21108 to **21207**

## New Contributors
* @renovate made their first contribution in https://github.com/oxsecurity/megalinter/pull/3605
* @bobidle made their first contribution in https://github.com/oxsecurity/megalinter/pull/3631
* @KristjanESPERANTO made their first contribution in https://github.com/oxsecurity/megalinter/pull/2994
* @scolladon made their first contribution in https://github.com/oxsecurity/megalinter/pull/3681

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7.12.0...v7.13.0
