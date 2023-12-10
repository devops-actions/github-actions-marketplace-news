---
title: MegaLinter
date: 2023-12-10 03:18:59 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.7.0
dependentsNumber: "825"
---


Version updated for **oxsecurity/megalinter** to version **v7.7.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **825** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - Update base java apk package to openjdk 17 by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3160
  - Update dotnet linters to .NET 7 by @bdovaz in https://github.com/oxsecurity/megalinter/pull/2402

- Media
  - [Try using MegaLinter (article in japanese)](https://future-architect.github.io/articles/20231129a/?s=03) by [Takashi Minayaga](https://future-architect.github.io/authors/%E5%AE%AE%E6%B0%B8%E5%B4%87%E5%8F%B2)

- New linters
  - Add [clang-format](https://releases.llvm.org/16.0.0/tools/clang/docs/ClangFormat.html) c & cpp formatting linter including "apply fix" support  by @daltonv in https://github.com/oxsecurity/megalinter/pull/3089
  - Add [Roslynator](https://github.com/dotnet/roslynator) C# linter by @bdovaz in <https://github.com/oxsecurity/megalinter/pull/3155>

- Fixes
  - Call jscpd with `--gitignore` to ignore copy-pastes in files matching `.gitignore`
  - cpplint: Dynamically add the list of extensions from list of files in --extensions parameter by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3149
  - Fix mkdocs generation + CI control job by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3135
  - Add semgrep ruleset to validation schema by @wesley-dean-flexion in https://github.com/oxsecurity/megalinter/pull/3164
  - Downgrade stylelint to avoid crash with not v16 compliant dependencies
  - Fix count of yaml-lint errors by @nvuillam in https://github.com/oxsecurity/megalinter/pull/3198
  - Remove openssl reinstall, as base image has updated version from alpine 3.18.5 by @echoix in https://github.com/oxsecurity/megalinter/pull/3181

- CI
  - Add arguments to make use of pytest-xdist, by @echoix in https://github.com/oxsecurity/megalinter/pull/3150

- Linter versions upgrades
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 6.22.0 to **6.22.1**
  - [bandit](https://bandit.readthedocs.io/en/latest/) from 1.7.5 to **1.7.6**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.83.3 to **0.83.4**
  - [checkov](https://www.checkov.io/) from 3.0.39 to **3.1.25**
  - [checkstyle](https://checkstyle.sourceforge.io) from 10.12.5 to **10.12.6**
  - [csharpier](https://csharpier.com/) from 0.26.2 to **0.26.4**
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 8.0.0 to **8.1.3**
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 6.0.417 to **7.0.114**
  - [eslint](https://eslint.org) from 8.54.0 to **8.55.0**
  - [gitleaks](https://github.com/gitleaks/gitleaks) from 8.18.0 to **8.18.1**
  - [isort](https://pycqa.github.io/isort/) from 5.12.0 to **5.13.0**
  - [lightning-flow-scanner](https://github.com/Lightning-Flow-Scanner) from 2.15.0 to **2.16.0**
  - [luacheck](https://luacheck.readthedocs.io) from 1.1.1 to **1.1.2**
  - [markdown-table-formatter](https://www.npmjs.com/package/markdown-table-formatter) from 1.4.0 to **1.5.0**
  - [markdownlint](https://github.com/DavidAnson/markdownlint) from 0.37.0 to **0.38.0**
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.7.0 to **1.7.1**
  - [npm-groovy-lint](https://nvuillam.github.io/npm-groovy-lint/) from 12.1.0 to **13.0.2**
  - [phpcs](https://github.com/squizlabs/PHP_CodeSniffer) from 3.7.2 to **3.8.0**
  - [phplint](https://github.com/overtrue/phplint) from 9.0.4 to **9.0.6**
  - [phpstan](https://phpstan.org/) from 1.10.42 to **1.10.48**
  - [psalm](https://psalm.dev) from Psalm.5.15.0@ to **Psalm.5.17.0@**
  - [puppet-lint](http://puppet-lint.com/) from 4.2.1 to **4.2.3**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.336 to **1.1.339**
  - [roslynator](https://github.com/JosefPihrt/Roslynator) from 0.8.0.0 to **0.8.1.0**
  - [rubocop](https://rubocop.org/) from 1.57.2 to **1.58.0**
  - [ruff](https://github.com/astral-sh/ruff) from 0.1.6 to **0.1.7**
  - [secretlint](https://github.com/secretlint/secretlint) from 7.1.0 to **8.0.0**
  - [semgrep](https://semgrep.dev/) from 1.50.0 to **1.52.0**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.18.0 to **3.19.0**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.18.0 to **3.19.0**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.18.0 to **3.19.0**
  - [syft](https://github.com/anchore/syft) from 0.97.1 to **0.98.0**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.6.4 to **1.6.5**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.53.4 to **0.54.0**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.47.0 to **0.48.0**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.63.0 to **3.63.2**
  - [vale](https://vale.sh/) from 2.29.7 to **2.30.0**

MegaLinter will be presented at [DevCon20](https://www.programmez.com/content/programmez-devcon-20-inscriptions), in Paris on 14 december (french)

![image](https://github.com/oxsecurity/megalinter/assets/17500430/7f718d27-9d06-4706-9ab6-b12b5ea118e2)

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7.6.0...v7.7.0
