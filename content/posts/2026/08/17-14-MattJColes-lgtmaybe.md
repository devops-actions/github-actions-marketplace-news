---
title: lgtmaybe
date: 2026-08-17 14:00:28 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v2.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  lgtmaybe is a tool designed to automate and streamline the code review process by analyzing pull request diffs using an AI model. It helps identify logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, unnecessary complexity, intent misalignment, and potential "ponytail" code (code that could be removed). The action reviews files line-by-line, considering context from surrounding lines, and categorizes findings into nine categories: security, correctness, code health, artefacts. It is provider-agnostic and supports multiple OpenAI-compatible endpoints.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v2.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

lgtmaybe is a tool designed to automate and streamline the code review process by analyzing pull request diffs using an AI model. It helps identify logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, unnecessary complexity, intent misalignment, and potential "ponytail" code (code that could be removed). The action reviews files line-by-line, considering context from surrounding lines, and categorizes findings into nine categories: security, correctness, code health, artefacts. It is provider-agnostic and supports multiple OpenAI-compatible endpoints.

## What's Changed

## [2.2.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v2.1.4...lgtmaybe-v2.2.0) (2026-08-17)


### Features

* **cli:** give the profile a machine-readable form, and stop it corrupting stdout ([#460](https://github.com/MattJColes/lgtmaybe/issues/460)) ([ff86872](https://github.com/MattJColes/lgtmaybe/commit/ff86872d1fcda2b93b27f374b90561336c1ed98d))
* **engine:** re-ask a lens without the schema when its reply won't parse ([#463](https://github.com/MattJColes/lgtmaybe/issues/463)) ([2a241cd](https://github.com/MattJColes/lgtmaybe/commit/2a241cd723512a80a27030fbce252c6851afc506)), closes [#454](https://github.com/MattJColes/lgtmaybe/issues/454)
* **evals:** run each fixture N times so flaky and reproducible failures separate ([#461](https://github.com/MattJColes/lgtmaybe/issues/461)) ([b8d0568](https://github.com/MattJColes/lgtmaybe/commit/b8d0568187c608fc474b07d9ebe0267d3b48589e)), closes [#458](https://github.com/MattJColes/lgtmaybe/issues/458)
* make structured-output compliance failures diagnosable and survivable ([#450](https://github.com/MattJColes/lgtmaybe/issues/450)) ([d1c4f4d](https://github.com/MattJColes/lgtmaybe/commit/d1c4f4d0dc7389ff72412dca30d179d53693b96b))


### Bug Fixes

* **engine:** don't re-ask a lens whose schema the adapter already stripped ([#465](https://github.com/MattJColes/lgtmaybe/issues/465)) ([60d7944](https://github.com/MattJColes/lgtmaybe/commit/60d79447b0f647f5406c493204bafbc4ee2796ab))
* **provider:** don't step down an effort the route would discard ([#459](https://github.com/MattJColes/lgtmaybe/issues/459)) ([464b5b6](https://github.com/MattJColes/lgtmaybe/commit/464b5b65099af7fda943ee905513787379adea60))
* **provider:** give a reasoning-bound truncation a lever when no effort was set ([#452](https://github.com/MattJColes/lgtmaybe/issues/452)) ([abe7dac](https://github.com/MattJColes/lgtmaybe/commit/abe7dac224caa5f87e70d546726acb030bd52308))


### Dependencies

* bump the python-dependencies group with 8 updates ([#449](https://github.com/MattJColes/lgtmaybe/issues/449)) ([047e8b4](https://github.com/MattJColes/lgtmaybe/commit/047e8b4302e17f57ed9d2137963d9c2a4f69f471))
