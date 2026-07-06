---
title: lgtmaybe
date: 2026-07-06 06:27:56 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v0.10.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v0.10.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## What's Changed

## [0.10.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v0.9.2...lgtmaybe-v0.10.0) (2026-07-06)


### ⚠ BREAKING CHANGES

* **engine:** reviews now run the fast preset by default — all nine lenses covered in four grouped model calls (~half the calls and wall time), trading some recall on the softer lenses (performance, complexity, ponytail, deprecation, tests, documentation). Set preset: full (or --preset full / the Action's preset input) to restore the previous one-call-per-lens behaviour.

### Features

* **engine:** first-class structured describe + opt-in auto-describe ([#171](https://github.com/MattJColes/lgtmaybe/issues/171)) ([35f1b08](https://github.com/MattJColes/lgtmaybe/commit/35f1b0872bada212232a69dd32e85d44e7b5de20))
* **engine:** function-boundary context, per-tool lint floors, eval A/B coverage ([#173](https://github.com/MattJColes/lgtmaybe/issues/173)) ([684acf1](https://github.com/MattJColes/lgtmaybe/commit/684acf1e2307c926a743f3a2ca53a4031011744b))
* **engine:** review-effort/risk labels + declarative finding rules ([#172](https://github.com/MattJColes/lgtmaybe/issues/172)) ([1414322](https://github.com/MattJColes/lgtmaybe/commit/14143221e8cec7037617902e154fa96d04e77769))
* **engine:** static-analysis fusion — deterministic linters ground the review ([#169](https://github.com/MattJColes/lgtmaybe/issues/169)) ([48d6ecf](https://github.com/MattJColes/lgtmaybe/commit/48d6ecff8bd5195752ad0b9267ee25db8d6403a7))
* **engine:** two-stage triage routing behind a security floor ([#170](https://github.com/MattJColes/lgtmaybe/issues/170)) ([00966fe](https://github.com/MattJColes/lgtmaybe/commit/00966feb9052dffcd6091303bbd91693cd424d71))
* **github:** commit-scoped incremental review on synchronize pushes ([#168](https://github.com/MattJColes/lgtmaybe/issues/168)) ([f16f915](https://github.com/MattJColes/lgtmaybe/commit/f16f91579d6aac9dbe8b4556a133a3126b8210c0))
* prompt caching + audit-driven review improvements ([#166](https://github.com/MattJColes/lgtmaybe/issues/166)) ([95acc2b](https://github.com/MattJColes/lgtmaybe/commit/95acc2b63aaa8062acaca603023492ad75bec90c))


### Performance Improvements

* **engine:** cut review wall time — global fan-out pool, cached diff prefix, fast preset, deadlines ([#174](https://github.com/MattJColes/lgtmaybe/issues/174)) ([853917a](https://github.com/MattJColes/lgtmaybe/commit/853917a7c45c4450e379ede033cfd04ddfdf490b))


### Dependencies

* bump the python-dependencies group across 1 directory with 3 updates ([#164](https://github.com/MattJColes/lgtmaybe/issues/164)) ([bb83a4f](https://github.com/MattJColes/lgtmaybe/commit/bb83a4f2973791d3cdb5c04ee5a87431e7b7ef9f))
