---
title: Regis Security Analysis
date: 2026-05-30 21:45:01 +00:00
tags:
  - trivoallan
  - GitHub Actions
draft: false
repo: https://github.com/trivoallan/regis
marketplace: https://github.com/marketplace/actions/regis-security-analysis
version: v0.32.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/trivoallan/regis** to version **v0.32.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/regis-security-analysis) to find the latest changes.

## Action Summary

Regis is a GitHub Action designed to streamline container security and compliance by automating container analysis, vulnerability scanning, and policy enforcement within CI/CD pipelines. It integrates with industry-standard tools to provide comprehensive insights into security, compliance, and best practices, while generating both machine-readable and interactive HTML reports. This action helps teams maintain secure, compliant, and optimized container images, reducing risks and operational overhead.

## What's Changed

## [0.32.0](https://github.com/trivoallan/regis/compare/v0.31.0...v0.32.0) (2026-05-30)


### ⚠ BREAKING CHANGES

* **analyzer:** the 'skopeo' analyzer is renamed to 'oci'. Rule paths results.skopeo.* become results.oci.* and playbooks must use provider: oci. The output schema is redesigned (raw 'inspect' dump removed; size/exposed_ports/ env now declared).
* **build:** 'fastapi' and 'uvicorn[standard]' move from core dependencies to a new optional [server] extra. The published Docker image no longer bundles them, so in-container 'regis dashboard serve' errors with guidance to 'pip install regis[server]'. Core commands (analyze, check, rules, bootstrap playbook) are unaffected. The dev extra still pulls the server deps so the test suite is unchanged.
* **build:** The published Regis Docker image will no longer bundle Node.js (see follow-up Dockerfile refactor). 'regis bootstrap archive --dev' and '--repo' now check for Node and pnpm on the host upfront and emit a structured error message with install instructions (nvm/fnm/brew, corepack) when either tool is missing.

### Features

* **analyzer:** replace skopeo with regctl, rename analyzer to oci ([#610](https://github.com/trivoallan/regis/issues/610)) ([5149ba7](https://github.com/trivoallan/regis/commit/5149ba796132c0d6661d3c5e57224a19ca9cd4df))
* **build:** 4-stage Docker image refactor, drop Node.js from runtime ([#606](https://github.com/trivoallan/regis/issues/606)) ([dbb005d](https://github.com/trivoallan/regis/commit/dbb005d13057d4307fa0fb33ad0188c25ba297db))
* **cli:** add --filter-level and --filter-provider to `regis rules list` ([#586](https://github.com/trivoallan/regis/issues/586)) ([#597](https://github.com/trivoallan/regis/issues/597)) ([38319b6](https://github.com/trivoallan/regis/commit/38319b6d5cb651aa2bb27a1871e34f0657d8878c))
* **cli:** add --quiet/-q flag to suppress non-essential output ([#584](https://github.com/trivoallan/regis/issues/584)) ([#601](https://github.com/trivoallan/regis/issues/601)) ([1e320d5](https://github.com/trivoallan/regis/commit/1e320d585894d8b7cd777daf54ef7bdfbb14ad99))
* **cli:** add `--format yaml` to `regis rules show` ([#595](https://github.com/trivoallan/regis/issues/595)) ([1325fae](https://github.com/trivoallan/regis/commit/1325faeec5fb179b67271c7f06939127e5ec231d))
* **cli:** add `--skip` flag to `regis analyze` to exclude analyzers ([#598](https://github.com/trivoallan/regis/issues/598)) ([dd4fb29](https://github.com/trivoallan/regis/commit/dd4fb29be6b8f0174092e4f396bc79fa9dd05c8e))
* **cli:** add `regis doctor` command ([#590](https://github.com/trivoallan/regis/issues/590)) ([1835653](https://github.com/trivoallan/regis/commit/183565328d19064600a50cecc8c06ad0105b6fc9))
* **cli:** add `regis playbook validate` command ([#589](https://github.com/trivoallan/regis/issues/589)) ([#600](https://github.com/trivoallan/regis/issues/600)) ([4be3825](https://github.com/trivoallan/regis/commit/4be38252029c04f0665882c732f4fd6da1b66260))
* **cli:** log per-analyzer timing in debug mode ([#596](https://github.com/trivoallan/regis/issues/596)) ([9b599f9](https://github.com/trivoallan/regis/commit/9b599f994b1dd9bd4bd367b11d70a132112e3923))
* **cli:** print one-line analysis summary at end of `regis analyze` ([#603](https://github.com/trivoallan/regis/issues/603)) ([0d79bd8](https://github.com/trivoallan/regis/commit/0d79bd8a9910e051f0aa96e509b99e4d18803856))
* **cli:** show per-analyzer progress with timing during `regis analyze` ([#602](https://github.com/trivoallan/regis/issues/602)) ([60a6f69](https://github.com/trivoallan/regis/commit/60a6f69f01dd72a3a9aabc60c47e6074072c5747))
* **cli:** support environment variables for common analyze options ([#583](https://github.com/trivoallan/regis/issues/583)) ([#599](https://github.com/trivoallan/regis/issues/599)) ([b5644ec](https://github.com/trivoallan/regis/commit/b5644ec30a3cd1164b6d5c34d9989f84b6cb030b))


### Bug Fixes

* **ci:** treat UNKNOWN severity differently based on fix availability ([#579](https://github.com/trivoallan/regis/issues/579)) ([d17d3a8](https://github.com/trivoallan/regis/commit/d17d3a8eec23587108c4b948e116cc3902b8fc8d))
* **deps:** resolve pip-audit HIGH/CRITICAL security findings ([#575](https://github.com/trivoallan/regis/issues/575)) ([1124fad](https://github.com/trivoallan/regis/commit/1124faddcd8bb80352daa35353292ba344546f6f))


### Performance Improvements

* **build:** round-2 docker image trims (git/jq, optional server extra, venv) ([#608](https://github.com/trivoallan/regis/issues/608)) ([e2139e5](https://github.com/trivoallan/regis/commit/e2139e567014f47a9a37ccdb6abcbef01516c2a8))
