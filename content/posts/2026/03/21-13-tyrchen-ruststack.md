---
title: RustStack S3
date: 2026-03-21 13:29:43 +00:00
tags:
  - tyrchen
  - GitHub Actions
draft: false
repo: https://github.com/tyrchen/ruststack
marketplace: https://github.com/marketplace/actions/ruststack-s3
version: v0.4.3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tyrchen/ruststack** to version **v0.4.3**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ruststack-s3) to find the latest changes.

## Action Summary

RustStack is a lightweight, high-performance AWS service emulator written in Rust, providing local development and CI pipelines with emulation for S3, DynamoDB, SQS (including FIFO), and SSM Parameter Store. It serves as a faster, resource-efficient alternative to LocalStack, offering a unified gateway on a single port, compatibility with AWS SDKs/CLI, and features like SigV4 authentication, in-memory storage with disk spillover, and extensibility for adding new services. RustStack is ideal for developers and CI workflows needing rapid startup times and reduced resource usage without requiring the extensive service coverage of LocalStack.

## Release notes

---
## [0.4.3](https://github.com/compare/v0.4.2..v0.4.3) - 2026-03-21

### Bug Fixes

- **(ci)** use separate queue for non-matching event test - ([4990c49](https://github.com/commit/4990c4947cdbfe870850e0356d86efbfff5d8dd1)) - Tyr Chen
- **(ci)** improve non-matching event test robustness - ([8d0c7ca](https://github.com/commit/8d0c7cad6aa1c79be89ace1bbb44e3369d3e177d)) - Tyr Chen
- **(codegen)** address code review findings - ([94cea62](https://github.com/commit/94cea621079f19a5c945a2c03bcaf94d5a187690)) - Tyr Chen
- **(events)** address code review findings - ([da82dec](https://github.com/commit/da82deccd0958595ca63f06b7910f2cfd792edc5)) - Tyr Chen
- **(events)** always serialize array fields in responses - ([a355bea](https://github.com/commit/a355bea2456945d3b03e6d7892e31f1388bcdd20)) - Tyr Chen
- update Dockerfile and CI to include all 18 services - ([0d81cc9](https://github.com/commit/0d81cc96dc7b61d2da7604c7ac12205d36c15892)) - Tyr Chen

### Features

- **(codegen)** make Smithy codegen config-driven with TOML (Phase 1) - ([b297e54](https://github.com/commit/b297e545efa3fb60ae2cefeb4b6c66a4d28dfecc)) - Tyr Chen
- **(codegen)** add protocol-aware serde generation (Phase 2) - ([edf25ae](https://github.com/commit/edf25ae997a71da65949cb64a3e0cc733fd780de)) - Tyr Chen
- **(codegen)** add error extraction and SSM/Events configs (Phase 3-4) - ([94da819](https://github.com/commit/94da819c1abffe29f1facebff4659a0a0a5ad4c6)) - Tyr Chen
- **(codegen)** add all service configs and Makefile targets (Phase 5-6) - ([7f78372](https://github.com/commit/7f7837279d70f3993e33a9d08833ecb8575069f0)) - Tyr Chen
- **(codegen)** add configs for unbuilt services, update specs - ([229019f](https://github.com/commit/229019fed11e876e8312ad4f1b817e5614f9151e)) - Tyr Chen
- **(events)** add EventBridge service - Phase 0 MVP - ([f660d75](https://github.com/commit/f660d7552b5a0b42973ac1e943ff1a471091713d)) - Tyr Chen
- **(events)** add integration tests and Makefile targets - ([a3a584c](https://github.com/commit/a3a584c1c8827d8a25dd585fb1f443fb68b2e2c3)) - Tyr Chen
- add CloudWatch Logs service (#5) - ([aba20da](https://github.com/commit/aba20da0190f6b0963ff092f574e61a563aefb86)) - Tyr Chen
- add KMS service with all 39 operations (#6) - ([88368ef](https://github.com/commit/88368ef81416db65d923b53208974121ce4e6d8c)) - Tyr Chen
- add Kinesis Data Streams service (#7) - ([4f7a895](https://github.com/commit/4f7a895ae565c347e78507ce86d442f5e00230d8)) - Tyr Chen
- add Secrets Manager service with all 23 operations (#8) - ([f87276b](https://github.com/commit/f87276b8136b0c3f9aa2c0e5e370b6f67f80619f)) - Tyr Chen
- add SES service with all 44 operations and email retrospection (#9) - ([f8983af](https://github.com/commit/f8983afe5331d46cc14d024ae268445e606073d3)) - Tyr Chen
- add API Gateway v2 service with all 57 operations and execution engine (#10) - ([35843c2](https://github.com/commit/35843c26cf3f412cc2bdea2d9963d76dcd009f9c)) - Tyr Chen
- add CloudWatch Metrics service with all 31 operations (#11) - ([6c8d12a](https://github.com/commit/6c8d12a37d4c4d21ec845d39f9d9cd33ded15580)) - Tyr Chen
- add DynamoDB Streams service with all 4 operations (#13) - ([d1c7d86](https://github.com/commit/d1c7d86343dac11c5385b5d9d06d65db4fb6a6fb)) - Tyr Chen
- add IAM service with all 60 operations (#14) - ([754767b](https://github.com/commit/754767bfc1b7016f97b8eb0f0fd204cff80ded13)) - Tyr Chen
- add STS service with all 8 operations (#15) - ([9614018](https://github.com/commit/96140180df855a7eb6fe4a7e0b88da68500c4680)) - Tyr Chen

### Miscellaneous Chores

- add new specs - ([56edcb0](https://github.com/commit/56edcb0d5bc634a22f1a80988052ba3d49c7b067)) - Tyr Chen

### Other

- **(events)** add EventBridge CI test workflow - ([c0d8ffc](https://github.com/commit/c0d8ffc29712f354ae0d811e9c451c6bb529f887)) - Tyr Chen

<!-- generated by git-cliff -->
