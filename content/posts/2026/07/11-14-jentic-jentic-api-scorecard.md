---
title: Jentic API Scorecard
date: 2026-07-11 14:17:52 +00:00
tags:
  - jentic
  - GitHub Actions
draft: false
repo: https://github.com/jentic/jentic-api-scorecard
marketplace: https://github.com/marketplace/actions/jentic-api-scorecard
version: v1.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jentic/jentic-api-scorecard** to version **v1.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jentic-api-scorecard) to find the latest changes.

## What's Changed

# [1.10.0](https://github.com/jentic/jentic-api-scorecard/compare/v1.9.3...v1.10.0) (2026-07-11)


### Bug Fixes

* **extract-docs:** rewrite improve-skill cross-link on extraction ([97bb1d6](https://github.com/jentic/jentic-api-scorecard/commit/97bb1d6af91e2344f6a219f79583d5c819b924a3))
* **extract-docs:** rewrite requirements anchor in improve-skill ([1f02432](https://github.com/jentic/jentic-api-scorecard/commit/1f0243261b4c568a621b5d0ae2be02d819cbd877))
* **score:** make engine tokenUsage opt-in via --report-token-usage ([c542268](https://github.com/jentic/jentic-api-scorecard/commit/c542268b317570bf412dcbdf3cc6534d8d2515dc)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** derive benchmark metrics from raw scorecards ([b623161](https://github.com/jentic/jentic-api-scorecard/commit/b623161da21e80e7509af09327d9002a36e9d7b6)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** exercise proxy self-check + real plumbing in dry-run ([a84aa55](https://github.com/jentic/jentic-api-scorecard/commit/a84aa55c5349e6a75e47c3aeba703c8bd883ce74)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** match raw scorecards by content, not exact name ([c9c15c4](https://github.com/jentic/jentic-api-scorecard/commit/c9c15c4735b47faca68a0ee591516786cc924a6a)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **skill:** guard jentic-api-improve against shipping regressions ([b301395](https://github.com/jentic/jentic-api-scorecard/commit/b301395af9285efdc65a7fc5ec730e5ab60d87d0)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **skills:** make token-usage.json opt-in on explicit request ([d0382ea](https://github.com/jentic/jentic-api-scorecard/commit/d0382eaf874adb0a92905d77ec2a74cd37a1bed2)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)


### Features

* **cli:** add hidden --report-token-usage flag ([dfad477](https://github.com/jentic/jentic-api-scorecard/commit/dfad477bbc45846fa4da432f0871bfc83bc5fb6a)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** add benchmark results data-file sample fixture ([0b1a3be](https://github.com/jentic/jentic-api-scorecard/commit/0b1a3be4dc0be4ae205fe799fa71a2f99ec1f5d4)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** add improve-benchmark matrix driver + dry-run ([ffd3750](https://github.com/jentic/jentic-api-scorecard/commit/ffd3750cefa614e176718cc0fcc8cf44dc7b4248)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** add token-counting proxy for engine LLM spend ([d7c3890](https://github.com/jentic/jentic-api-scorecard/commit/d7c389095e3ee624ec00d61db8a9b6531c4f2b6e)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** benchmark 6 default specs, --specs, output dir ([1a42db1](https://github.com/jentic/jentic-api-scorecard/commit/1a42db1b0db8beb35a8ec5ead12195490cbff1c9)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** capture + render score before/after + iters ([c210984](https://github.com/jentic/jentic-api-scorecard/commit/c210984c3d8f601a111ccfd3d307084113e744f1)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** implement real benchmark measurement run ([be3ded4](https://github.com/jentic/jentic-api-scorecard/commit/be3ded40a67dd4b95e2d94ab7115e8d8f6f83be3)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** render benchmark doc from results data file ([cc3ed72](https://github.com/jentic/jentic-api-scorecard/commit/cc3ed72dc4f3656c50bcd4971190494c456e44e7)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** request engine token usage in benchmark prompt ([4aaceb5](https://github.com/jentic/jentic-api-scorecard/commit/4aaceb5d4b6e5694b266612cc5d67518251ee43d)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **scripts:** sample benchmark cells N times, report median + range ([d480d69](https://github.com/jentic/jentic-api-scorecard/commit/d480d69d8831787219794db8f9a7456b8532668f)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **skills:** emit benchmark-summary.json with run outcome ([7ae3dae](https://github.com/jentic/jentic-api-scorecard/commit/7ae3dae2603662a245c5d66470d25e50b4b5953a)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)
* **skills:** emit token-usage.json from engine tokenUsage ([2424387](https://github.com/jentic/jentic-api-scorecard/commit/2424387fc47ebeaef44a07e16b8ebde57426d602)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)


### Performance Improvements

* **scripts:** run benchmark samples concurrently, isolated per cwd ([30df98d](https://github.com/jentic/jentic-api-scorecard/commit/30df98d0d0a4e059d2c3de1521fcbd3994a0bcc6)), closes [#284](https://github.com/jentic/jentic-api-scorecard/issues/284)




