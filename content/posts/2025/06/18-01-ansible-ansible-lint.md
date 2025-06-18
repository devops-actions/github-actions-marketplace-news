---
title: run-ansible-lint
date: 2025-06-18 01:13:27 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: https://github.com/ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v25.6.0
dependentsNumber: "0"
---


Version updated for **https://github.com/ansible/ansible-lint** to version **v25.6.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Release notes

## Enhancements

- Add skip option to ansible-lint-ignore file (#4614) @ianw
- Adding rule to require unique task names (#4628) @djdanielsson

## Bugfixes

- Update format of license in packaging metadata (#4641) @ssbarnea
- Add noqa skips in otherwise empty lines to the next non-empty line (#4567) @StopMotionCuber
- Address too many values to unpack when there's subdirectories for roles (#4566) @tombosmansibm
- Don't pass deprecated disable_lookups to template function (#4593) @leegarrett
- Allow running with read-only virtualenvs (#4529) @ssbarnea
- Make utils.is_playbook support fqcn import_playbook (#4580) @OscarBell
- Fix inline-env-var false positive when expand_argument_vars is used (#4587) @rob4226
- Package Latest: Ignore Blocks When Download Only (#4575) @amayer5125
- Improve diagnostic message when failing to load yaml files (#4627) @ssbarnea
- Add vSphere/vCenter 8.0 to schema (#4619) @mreams13
- Add workaround to check for mutually exclusive args (#4624) @shoeffner
- Adding support for OpenWrt 24.10 (#4617) @sscheib

## Maintenance

- Update linters (#4640) @ssbarnea
- Remove use of PYTEST_REQPASS (#4636) @ssbarnea
- gha: avoid build warning on jobs not producing coverage (#4635) @ssbarnea
- Bump the dependencies group in /.config with 5 updates (#4634) @[dependabot[bot]](https://github.com/apps/dependabot)
- docs(no-log-password): point out the opt-in nature of the rule (#4590) @Silejonu
- Enable ack workflow to trigger on merge_groups (#4633) @ssbarnea
- Test alternative configuration for merge_group (#4630) @ssbarnea
- Measure coverage using branch instead of lines (#4629) @ssbarnea
- chore: pre-commit autoupdate (#4621) @[pre-commit-ci[bot]](https://github.com/apps/pre-commit-ci)
- Bump the dependencies group in /.config with 3 updates (#4626) @[dependabot[bot]](https://github.com/apps/dependabot)
- Adopt coactions/upload-artifact (#4622) @ssbarnea
- Bump ruamel to 0.18.11 (#4618) @ianw

