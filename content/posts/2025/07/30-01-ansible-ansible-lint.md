---
title: run-ansible-lint
date: 2025-07-30 01:17:53 +00:00
tags:
  - ansible
  - GitHub Actions
draft: false
repo: https://github.com/ansible/ansible-lint
marketplace: https://github.com/marketplace/actions/run-ansible-lint
version: v25.7.0
dependentsNumber: "0"
---


Version updated for **https://github.com/ansible/ansible-lint** to version **v25.7.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ansible-lint) to find the latest changes.

## Release notes

## Enhancements

- Use 'x-ansible-lint' key for path patterns in schema tests (#4690) @alisonlhart
- Address disable_lookups deprecation with ansible-core 2.19 (#4683) @ssbarnea
- Add auto-fixing implementation for pattern rule (#4679) @shatakshiiii
- Remove patterns specific playbook meta folder (#4669) @alisonlhart
- Allow loading of yamllint config from a different location (#4644) @dbrennand
- Add new rule to validate pattern directory structure (#4662) @shatakshiiii
- Add play argspec schema validation to schema rule (#4667) @alisonlhart
- Add schema check for validating pattern specification file (#4653) @shatakshiiii
- Enable testing with python 3.14 (#4637) @ssbarnea

## Bugfixes

- Check for gh_action_ref explicitly and document GHA inputs (#4701) @alisonlhart
- jinja spacing warning line-endings (#4691) @anusshukla
- Handle lookup templating checks with ASTs (#4698) @alisonlhart
- Fix var-naming[no-role-prefix] rule incorrectly applying to role variables (#4677) @vills
- schema: add missing subset 'systemd' to gather_subset (#4664) @eliba
- Fix typos in --list-tags help text (#4661) @correctmost
- Avoid import errors from filters when running in nodeps mode (#4651) @ssbarnea

## Maintenance

- packit: reformat, remove deprecated syntax and try merge queue (#4639) @mfocko
- Remove patch report from codecov (#4671) @ssbarnea
- Improve cspell configuration (#4668) @ssbarnea
- Update test deps (#4658) @ssbarnea

