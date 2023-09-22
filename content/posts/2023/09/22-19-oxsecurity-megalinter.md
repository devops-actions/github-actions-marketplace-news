---
title: MegaLinter
date: 2023-09-22 19:00:21 +00:00
tags:
  - oxsecurity
  - GitHub Actions
draft: false
repo: oxsecurity/megalinter
marketplace: https://github.com/marketplace/actions/megalinter
version: v7.4.0
dependentsNumber: "718"
---


Version updated for **oxsecurity/megalinter** to version **v7.4.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **718** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/megalinter) to find the latest changes.

## Release notes

## What's Changed

- Core
  - Upgrade base image to to alpine 3.18 by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2903
  - Upgrade python to 3.11.5 by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2930

- Media
  - [Maximize your code consistency with Megalinter](https://codewithme.cloud/posts/2023/08/maximize-your-code-consistency-with-megalinter/) by [Tor Ivar Asbølmo](https://www.linkedin.com/in/torivara/) on [codewithme.cloud](https://codewithme.cloud)
  - [MegaLinter in Azure DevOps](https://jamescook.dev/megalinter-in-azure-devops) by [James Cook](https://www.linkedin.com/in/cookjames/)

- Fixes
  - Fix [IGNORE_GITIGNORED_FILES not working anymore](https://github.com/oxsecurity/megalinter/issues/2955) , by @iisisrael in https://github.com/oxsecurity/megalinter/pull/2967
  - Fix [v7 issue when using MEGALINTER_FILES_TO_LINT](https://github.com/oxsecurity/megalinter/issues/2744) (thanks @pfiaux !) by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2917
  - Fix [Ignore symlink files when VALIDATE_ALL_CODEBASE is false](https://github.com/oxsecurity/megalinter/issues/2944) by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2964
  - Fix rstcheck options & install by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2899
  - Undowngrade Kubescape  by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2901


- Doc
  - Secretlint logo - reduce size to 150 and remove background by @itayox in https://github.com/oxsecurity/megalinter/pull/2880
  - Replace `https://megalinter.io/flavors` with `https://megalinter.io/latest/flavors` to avoid lychee 404 error by @ashokm in https://github.com/oxsecurity/megalinter/pull/2910
  - docs: config-cli-lint-mode.md: Grammar tweaks by @rasa in https://github.com/oxsecurity/megalinter/pull/2953

- CI
  - Reformatted config files to not fail common linters (closes #2890) by @andrewvaughan in https://github.com/oxsecurity/megalinter/pull/2891
  - Workflow job name changed from `build` to `megalinter` to prevent conflicts with other workflows
  - Add support for master branch in TEMPLATES/mega-linter.yml by @rasa in https://github.com/oxsecurity/megalinter/pull/2888
  - Upgrade editorconfig-checker & setup-node by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2898
 
- Deprecations
  - Deprecate SCSS LINT as not maintained anymore (<https://github.com/sds/scss-lint#notice-consider-other-tools-before-adopting-scss-lint>) by @nvuillam in https://github.com/oxsecurity/megalinter/pull/2902

- Linter versions upgrades
  - [actionlint](https://rhysd.github.io/actionlint/) from 1.6.25 to **1.6.26**
  - [ansible-lint](https://ansible-lint.readthedocs.io/) from 6.17.2 to **6.20.0**
  - [bicep_linter](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter) from 0.20.4 to **0.21.1**
  - [black](https://black.readthedocs.io/en/stable/) from 23.7.0 to **23.9.1**
  - [cfn-lint](https://github.com/aws-cloudformation/cfn-lint) from 0.79.6 to **0.80.2**
  - [checkov](https://www.checkov.io/) from 2.3.360 to **2.4.10**
  - [checkstyle](https://checkstyle.sourceforge.io) from 10.12.2 to **10.12.3**
  - [chktex](https://www.nongnu.org/chktex) from 1.7.6 to **1.7.8**
  - [clippy](https://github.com/rust-lang/rust-clippy) from 0.1.71 to **0.1.72**
  - [clj-kondo](https://github.com/borkdude/clj-kondo) from 2023.07.13 to **2023.09.07**
  - [cspell](https://github.com/streetsidesoftware/cspell/tree/master/packages/cspell) from 6.31.3 to **7.3.6**
  - [devskim](https://github.com/microsoft/DevSkim) from 1.0.18 to **1.0.22**
  - [djlint](https://djlint.com/) from 1.32.1 to **1.34.0**
  - [dotnet-format](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-format) from 6.0.413 to **6.0.414**
  - [editorconfig-checker](https://editorconfig-checker.github.io/) from 2.7.0 to **2.7.1**
  - [eslint](https://eslint.org) from 8.46.0 to **8.49.0**
  - [git_diff](https://git-scm.com) from 2.38.5 to **2.40.1**
  - [gitleaks](https://github.com/gitleaks/gitleaks) from 8.17.0 to **8.18.0**
  - [golangci-lint](https://golangci-lint.run/) from 1.54.0 to **1.54.2**
  - [helm](https://helm.sh/docs/helm/helm_lint/) from 3.10.2 to **3.11.3**
  - [jscpd](https://github.com/kucherenko/jscpd/tree/master/packages/jscpd) from 3.5.9 to **3.5.10**
  - [kics](https://www.kics.io) from 1.7.5 to **1.7.8**
  - [ktlint](https://ktlint.github.io) from 0.50.0 to **1.0.0**
  - [kubescape](https://github.com/kubescape/kubescape) from 2.3.6 to **2.9.0**
  - [markdownlint](https://github.com/DavidAnson/markdownlint) from 0.35.0 to **0.36.0**
  - [mypy](https://mypy.readthedocs.io/en/stable/) from 1.4.1 to **1.5.1**
  - [phpstan](https://phpstan.org/) from 1.10.28 to **1.10.35**
  - [powershell](https://github.com/PowerShell/PSScriptAnalyzer) from 7.3.6 to **7.3.7**
  - [powershell_formatter](https://github.com/PowerShell/PSScriptAnalyzer) from 7.3.6 to **7.3.7**
  - [prettier](https://prettier.io/) from 3.0.1 to **3.0.3**
  - [protolint](https://github.com/yoheimuta/protolint) from 0.45.0 to **0.46.0**
  - [psalm](https://psalm.dev) from Psalm.5.14.1@ to **Psalm.5.15.0@**
  - [puppet-lint](http://puppet-lint.com/) from 4.0.1 to **4.2.0**
  - [pyright](https://github.com/Microsoft/pyright) from 1.1.321 to **1.1.327**
  - [revive](https://revive.run/) from 1.3.2 to **1.3.4**
  - [rstcheck](https://github.com/myint/rstcheck) from 6.1.2 to **6.2.0**
  - [rstfmt](https://github.com/dzhu/rstfmt) from 0.0.13 to **0.0.14**
  - [rubocop](https://rubocop.org/) from 1.56.0 to **1.56.3**
  - [ruff](https://github.com/charliermarsh/ruff) from 0.0.284 to **0.0.290**
  - [scalafix](https://scalacenter.github.io/scalafix/) from 0.11.0 to **0.11.1**
  - [semgrep](https://semgrep.dev/) from 1.34.1 to **1.41.0**
  - [sfdx-scanner-apex](https://forcedotcom.github.io/sfdx-scanner/) from 3.15.0 to **3.16.0**
  - [sfdx-scanner-aura](https://forcedotcom.github.io/sfdx-scanner/) from 3.15.0 to **3.16.0**
  - [sfdx-scanner-lwc](https://forcedotcom.github.io/sfdx-scanner/) from 3.15.0 to **3.16.0**
  - [snakemake](https://snakemake.readthedocs.io/en/stable/) from 7.32.3 to **7.32.4**
  - [spectral](https://meta.stoplight.io/docs/spectral/README.md) from 6.10.1 to **6.11.0**
  - [sqlfluff](https://www.sqlfluff.com/) from 2.2.1 to **2.3.2**
  - [stylelint](https://stylelint.io) from 15.10.2 to **15.10.3**
  - [syft](https://github.com/anchore/syft) from 0.86.1 to **0.91.0**
  - [terraform-fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) from 1.5.4 to **1.5.7**
  - [terragrunt](https://terragrunt.gruntwork.io) from 0.48.6 to **0.51.3**
  - [terrascan](https://runterrascan.io/) from 1.18.2 to **1.18.3**
  - [tflint](https://github.com/terraform-linters/tflint) from 0.47.0 to **0.48.0**
  - [trivy-sbom](https://aquasecurity.github.io/trivy/) from 0.44.0 to **0.45.1**
  - [trivy](https://aquasecurity.github.io/trivy/) from 0.44.0 to **0.45.1**
  - [trufflehog](https://github.com/trufflesecurity/trufflehog) from 3.47.0 to **3.56.1**
  - [vale](https://vale.sh/) from 2.28.1 to **2.29.0**
  - [xmllint](http://xmlsoft.org/xmllint.html) from 21004 to **21104**

## New Contributors
* @itayox made their first contribution in https://github.com/oxsecurity/megalinter/pull/2880

_MegaLinter is graciously provided by [![OX Security](https://www.ox.security/wp-content/uploads/2022/06/logo.svg?ref=megalinter_comment)](https://www.ox.security/?ref=megalinter)_

**Full Changelog**: https://github.com/oxsecurity/megalinter/compare/v7.3.0...v7.4.0
