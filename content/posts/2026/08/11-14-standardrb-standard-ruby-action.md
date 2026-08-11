---
title: Standard Ruby
date: 2026-08-11 14:26:10 +00:00
tags:
  - standardrb
  - GitHub Actions
draft: false
repo: https://github.com/standardrb/standard-ruby-action
marketplace: https://github.com/marketplace/actions/standard-ruby
version: v1.6.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the linting and formatting of Ruby code using the Standard Ruby tool. It runs `bundle exec standardrb --fix` on the repository's root directory, committing any auto-fixable errors back to the repo. If any errors remain, it fails the build with annotations for each failure. The action can be added to a workflow or existing job in GitHub Actions, allowing developers to maintain code quality and consistency without manual intervention.
---


Version updated for **https://github.com/standardrb/standard-ruby-action** to version **v1.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/standard-ruby) to find the latest changes.

## Action Summary

This GitHub Action automates the linting and formatting of Ruby code using the Standard Ruby tool. It runs `bundle exec standardrb --fix` on the repository's root directory, committing any auto-fixable errors back to the repo. If any errors remain, it fails the build with annotations for each failure. The action can be added to a workflow or existing job in GitHub Actions, allowing developers to maintain code quality and consistency without manual intervention.

## What's Changed

## What's Changed
* Smoke test this action against example sinatra apps. by @jasonkarns in https://github.com/standardrb/standard-ruby-action/pull/32
* Pin action dependencies to full sha for security by @jasonkarns in https://github.com/standardrb/standard-ruby-action/pull/34
* Configure dependabot for bundler in example dirs by @jasonkarns in https://github.com/standardrb/standard-ruby-action/pull/35
* Bump actions/checkout from 4.2.1 to 4.2.2 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/36
* Bump ruby/setup-ruby from 1.244.0 to 1.245.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/37
* Enhance ruby-version selection by @jasonkarns in https://github.com/standardrb/standard-ruby-action/pull/39
* Rename workdir to working-directory by @jasonkarns in https://github.com/standardrb/standard-ruby-action/pull/40
* Bump ruby/setup-ruby from 1.245.0 to 1.247.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/42
* Bump step-security/harden-runner from 2.12.2 to 2.13.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/41
* Bump ruby/setup-ruby from 1.247.0 to 1.253.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/43
* Bump ruby/setup-ruby from 1.253.0 to 1.254.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/44
* Bump actions/checkout from 4.2.2 to 4.3.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/45
* Bump actions/checkout from 4.3.0 to 5.0.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/46
* Bump ruby/setup-ruby from 1.254.0 to 1.255.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/47
* Bump ruby/setup-ruby from 1.255.0 to 1.257.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/49
* Bump step-security/harden-runner from 2.13.0 to 2.13.1 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/50
* Bump ruby/setup-ruby from 1.257.0 to 1.262.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/51
* Bump ruby/setup-ruby from 1.262.0 to 1.265.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/53
* Bump ruby/setup-ruby from 1.265.0 to 1.266.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/54
* Bump ruby/setup-ruby from 1.266.0 to 1.267.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/55
* Bump step-security/harden-runner from 2.13.1 to 2.13.2 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/56
* Bump ruby/setup-ruby from 1.267.0 to 1.268.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/58
* Bump actions/checkout from 5.0.0 to 6.0.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/57
* Bump step-security/harden-runner from 2.13.2 to 2.13.3 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/62
* Bump actions/checkout from 6.0.0 to 6.0.1 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/61
* Bump ruby/setup-ruby from 1.268.0 to 1.269.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/60
* Bump ruby/setup-ruby from 1.269.0 to 1.270.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/64
* Bump step-security/harden-runner from 2.13.3 to 2.14.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/63
* Bump ruby/setup-ruby from 1.270.0 to 1.275.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/65
* Bump ruby/setup-ruby from 1.275.0 to 1.276.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/66
* Bump ruby/setup-ruby from 1.276.0 to 1.278.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/67
* Bump ruby/setup-ruby from 1.278.0 to 1.281.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/68
* Bump ruby/setup-ruby from 1.281.0 to 1.284.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/69
* Bump step-security/harden-runner from 2.14.0 to 2.14.1 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/72
* Bump actions/checkout from 6.0.1 to 6.0.2 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/71
* Bump ruby/setup-ruby from 1.284.0 to 1.286.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/70
* Decrease dependabot frequence to monthly for GHA by @jasonkarns in https://github.com/standardrb/standard-ruby-action/pull/73
* Bump ruby/setup-ruby from 1.286.0 to 1.288.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/74
* Bump ruby/setup-ruby from 1.288.0 to 1.302.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/76
* Bump step-security/harden-runner from 2.14.1 to 2.18.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/75
* Don't pin production dependencies to SHAs by @jasonkarns in https://github.com/standardrb/standard-ruby-action/pull/81
* Bump step-security/harden-runner from 2.18.0 to 2.19.3 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/78
* Bump step-security/harden-runner from 2.19.3 to 2.19.4 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/84
* Bump actions/checkout from 6.0.2 to 7.0.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/83
* Bump actions/checkout from 7.0.0 to 7.0.1 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/87
* Bump step-security/harden-runner from 2.19.4 to 2.20.0 by @dependabot[bot] in https://github.com/standardrb/standard-ruby-action/pull/86

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/standardrb/standard-ruby-action/pull/36

**Full Changelog**: https://github.com/standardrb/standard-ruby-action/compare/v1.5.0...v1.6.0
