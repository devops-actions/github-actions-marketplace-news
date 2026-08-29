---
title: Postman API Onboarding
date: 2026-08-29 01:55:51 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-api-onboarding-action
marketplace: https://github.com/marketplace/actions/postman-api-onboarding
version: v3.5.7
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the onboarding process for new API repositories, using Postman's API to bootstrap a workspace, upload an OpenAPI specification, generate collections and tests, sync artifacts to a repository, and run built-in smoke and contract checks. It provides a comprehensive solution that includes automated testing and CI/CD integration, ensuring that the repository adheres to standards-grounded tests and contract assertions.
---


Version updated for **https://github.com/postman-cs/postman-api-onboarding-action** to version **v3.5.7**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-api-onboarding) to find the latest changes.

## Action Summary

This GitHub Action automates the onboarding process for new API repositories, using Postman's API to bootstrap a workspace, upload an OpenAPI specification, generate collections and tests, sync artifacts to a repository, and run built-in smoke and contract checks. It provides a comprehensive solution that includes automated testing and CI/CD integration, ensuring that the repository adheres to standards-grounded tests and contract assertions.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/91
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/92
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/93
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/94
* chore(deps): pin Insights onboarding v2.2.1 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/95
* fix: consume Insights human-session normalization by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/96
* fix: consume repo-sync v2.2.0 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/97
* fix: expose mock environment and refresh Azure pins by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/98
* feat: pass mock visibility policy through to repo-sync by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/99
* chore: pin repo-sync v2.4.0 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/100
* fix: document private mock credential paths for consumers by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/101
* fix(deps): advance the bootstrap pin to v2.13.2 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/102
* fix(deps): advance bootstrap and repo-sync pins by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/103
* fix(deps): advance repo-sync pin to v2.6.7 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/104
* fix(deps): advance repo-sync pin to v2.6.8 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/105
* fix(deps): advance bootstrap pin to v2.13.7 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/106
* fix(deps): advance sibling pins to the latest released tags by @github-actions[bot] in https://github.com/postman-cs/postman-api-onboarding-action/pull/107
* fix(ci): validate sibling pins without local checkouts by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/111
* feat(azure-devops): forward an explicit workspace squad id from the Windows template by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/112
* fix(release): harden composite pin and E2E releases by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/113
* fix(release): supersede stale aliases with pending cuts by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/114
* fix(release): wait for correlated E2E run names by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/115
* fix(release): keep pin ratchet synchronized by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/116
* fix(ci): preserve pin updater test fixtures by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/117
* fix(release): reconcile failed release completions by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/118
* fix(release): emit automated completion events by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/119
* fix(release): bound failed release recovery by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/120
* fix(release): hold auto release through E2E completion by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/121
* feat: expose spec-only onboarding scope by @sean-riney in https://github.com/postman-cs/postman-api-onboarding-action/pull/123
* docs: add service-account workspace permission preflight by @andrewpostymt in https://github.com/postman-cs/postman-api-onboarding-action/pull/122
* chore(deps-dev): bump the npm-minor-patch group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/postman-cs/postman-api-onboarding-action/pull/108
* fix(ci): make cache pin assertion semantic by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/124
* chore(deps): bump actions/cache from 4.2.0 to 6.1.0 in the actions group across 1 directory by @dependabot[bot] in https://github.com/postman-cs/postman-api-onboarding-action/pull/109
* feat: publish as @postman/onboarding-api with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/127
* fix(release): gate alias advance on npm publish output, not job result by @pavan-nelakuditi in https://github.com/postman-cs/postman-api-onboarding-action/pull/128
* fix(release): keep alias gates on publish job result by @pavan-nelakuditi in https://github.com/postman-cs/postman-api-onboarding-action/pull/129
* feat: add monorepo working-directory by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/130
* fix(release): require pull requests for pin advances by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/131
* fix(deps): advance sibling pins to the latest released tags by @postman-suite-pin-bot[bot] in https://github.com/postman-cs/postman-api-onboarding-action/pull/134
* chore: ignore local plans by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/139
* fix(deps): advance sibling pins to the latest released tags by @postman-suite-pin-bot[bot] in https://github.com/postman-cs/postman-api-onboarding-action/pull/142
* fix(deps): advance sibling pins to the latest released tags by @postman-suite-pin-bot[bot] in https://github.com/postman-cs/postman-api-onboarding-action/pull/143
* fix(deps): advance sibling pins to the latest released tags by @postman-suite-pin-bot[bot] in https://github.com/postman-cs/postman-api-onboarding-action/pull/144

## New Contributors
* @github-actions[bot] made their first contribution in https://github.com/postman-cs/postman-api-onboarding-action/pull/107
* @andrewpostymt made their first contribution in https://github.com/postman-cs/postman-api-onboarding-action/pull/122
* @postman-suite-pin-bot[bot] made their first contribution in https://github.com/postman-cs/postman-api-onboarding-action/pull/134

**Full Changelog**: https://github.com/postman-cs/postman-api-onboarding-action/compare/v2.1.8...v3.5.7
