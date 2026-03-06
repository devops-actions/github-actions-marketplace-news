---
title: RustStack S3
date: 2026-03-06 13:45:48 +00:00
tags:
  - tyrchen
  - GitHub Actions
draft: false
repo: https://github.com/tyrchen/ruststack
marketplace: https://github.com/marketplace/actions/ruststack-s3
version: v0.3.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tyrchen/ruststack** to version **v0.3.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ruststack-s3) to find the latest changes.

## Action Summary

RustStack is a lightweight, high-performance emulator for AWS services (S3, DynamoDB, SQS, and SSM Parameter Store), designed for local development and CI pipelines. It provides a faster and more resource-efficient alternative to LocalStack, offering compatibility with AWS SDKs/CLI and features like selective service activation, SigV4 authentication, and in-memory storage with disk spillover. RustStack automates the simulation of core AWS operations, enabling quick testing and integration workflows without the overhead of full AWS service deployments.

## Release notes

---
## [0.3.0](https://github.com/compare/v0.2.0..v0.3.0) - 2026-03-06

### Bug Fixes

- **(ci)** Update aws-lc-sys to 0.38.0 and fix CI test assertions - ([dfce211](https://github.com/commit/dfce21107b1fd9f521eb075f24a7e77039012666)) - Tyr Chen
- **(ci)** Restore alternator conftest.py and fix SQS FIFO test flakiness - ([9c6b96f](https://github.com/commit/9c6b96f1da566586e858d485240dab3200cbc77a)) - Tyr Chen
- **(ci)** Handle empty receive response in SQS FIFO test - ([13a6bd3](https://github.com/commit/13a6bd30f34396199128050c3181dad10d24cc19)) - Tyr Chen
- **(ci)** Handle empty receive in SQS purge queue test - ([98ddb7c](https://github.com/commit/98ddb7c5cd56b298cbef1cacd0dd9bd9758f8905)) - Tyr Chen
- **(dynamodb)** Fix codex review issues and add integration tests - ([b44d38e](https://github.com/commit/b44d38e93e2c3260ed9f7139e878e7343eee9a93)) - Tyr Chen
- **(sqs)** Address 10 code review findings for correctness and AWS compatibility - ([5a934b0](https://github.com/commit/5a934b0131d1e506f53358ad5693f43cbebac4cc)) - Tyr Chen
- **(ssm)** Address 9 code review findings for correctness and AWS compatibility - ([f5ec44a](https://github.com/commit/f5ec44a4695be309290299012e5269277843b0b0)) - Tyr Chen

### Documentation

- **(specs)** Add SQS and SSM Parameter Store design specs with research - ([31d3196](https://github.com/commit/31d31965b6a0a21d3a618edc36e127ff8ab8f69f)) - Tyr Chen
- Add comparison table between RustStack and LocalStack - ([ad0663b](https://github.com/commit/ad0663b69a5ff045daca13ccf32cde0d6b34b32c)) - Tyr Chen
- Add DynamoDB API research and design spec - ([aee118c](https://github.com/commit/aee118cfa64bf1e8b8b57cae63642bb01007c001)) - Tyr Chen
- Update README and action.yml with SSM Parameter Store support - ([3e1f793](https://github.com/commit/3e1f793d9f61f8d6cfc50296ebf4d1feffb1ea83)) - Tyr Chen

### Features

- **(ci)** Add DynamoDB CI testing and update action with auth/persistence inputs - ([422153f](https://github.com/commit/422153fdff8482f9b6e1ea6267a99a847e0c4281)) - Tyr Chen
- **(ci)** Build from source in CI workflows and add SQS compat tests - ([b67cca6](https://github.com/commit/b67cca6ef1dfe3f93a8f59b82ff8fc211ef11860)) - Tyr Chen
- **(dynamodb)** Add DynamoDB crate structure and model types - ([a00859a](https://github.com/commit/a00859af632237a8c2e0b886d598355e0b6b59a2)) - Tyr Chen
- **(dynamodb)** Add ruststack-dynamodb-http crate - ([d93bef7](https://github.com/commit/d93bef76b9a745af200e603fffdc6d4018be177d)) - Tyr Chen
- **(dynamodb)** Add ruststack-dynamodb-core crate with business logic - ([4931b9a](https://github.com/commit/4931b9a886348e24bea99c34d23b858f382633fb)) - Tyr Chen
- **(dynamodb)** Integrate DynamoDB into unified gateway server - ([4d1e0eb](https://github.com/commit/4d1e0eb53cb3ac7676cb79fffc56407afc5e4978)) - Tyr Chen
- **(dynamodb)** Fix 181 Alternator compatibility test failures - ([855c12f](https://github.com/commit/855c12f2a4e3f0dd1344566f9eff8b167f8fad72)) - Tyr Chen
- **(dynamodb)** Fix 245+ Alternator test failures with legacy API, expressions, and validation - ([d4cef2a](https://github.com/commit/d4cef2a308bf7ed8639cba508527f320c87560a7)) - Tyr Chen
- **(dynamodb)** Fix all remaining Alternator test failures (457/457 pass) - ([6c10945](https://github.com/commit/6c109451ed8a33e5d299c1934f824047e73c86ff)) - Tyr Chen
- **(server)** Add selective service enablement with ServiceRouter trait - ([849827c](https://github.com/commit/849827ce43a35038d327f2e40c4472ac68223ba4)) - Tyr Chen
- **(sqs)** Add SQS service with all 23 operations (Phase 0) - ([a5c75d6](https://github.com/commit/a5c75d6618252ad2b4a84c34b464d73cbbf8cd49)) - Tyr Chen
- **(sqs)** Add FIFO queue support with deduplication and message groups - ([ef779aa](https://github.com/commit/ef779aa54bb117d88e872c040cf49d5323474a62)) - Tyr Chen
- **(sqs)** Add integration tests, Docker image, and GitHub Action support for SQS - ([0fbf5b4](https://github.com/commit/0fbf5b4a023236f43854eb22b7f03f5755c1d34d)) - Tyr Chen
- **(ssm)** Add SSM Parameter Store with 6 core operations (Phase 0) - ([3e868bc](https://github.com/commit/3e868bc1aefbb50088c9cfd89f8ce0a75305e650)) - Tyr Chen
- **(ssm)** Add metadata, history, and tag operations (Phase 1) - ([7a6e5af](https://github.com/commit/7a6e5af6a441622f8b8ef6903d53929ee7432f79)) - Tyr Chen
- **(ssm)** Add label management operations (Phase 2) - ([486ba89](https://github.com/commit/486ba89c656216101ba93eba9a88de4647147e15)) - Tyr Chen
- **(ssm)** Add Docker image, GitHub Action, and CI workflow for SSM - ([3bb519e](https://github.com/commit/3bb519edd7b0db08dd7fec4f1e68ad5f04b64f0f)) - Tyr Chen

### Tests

- **(dynamodb)** Add Alternator compatibility test suite and fix response serialization - ([f3a1ea1](https://github.com/commit/f3a1ea12cd806b040e8bd2c7904a98257a0bbf23)) - Tyr Chen
- **(ssm)** Add 19 integration tests for SSM Parameter Store - ([cae1ff6](https://github.com/commit/cae1ff6f8defb7a2ba7bde3755154542093dd2b5)) - Tyr Chen

<!-- generated by git-cliff -->
