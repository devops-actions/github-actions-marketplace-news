---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-03-23 05:54:46 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.1.3
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.1.3**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool designed to detect dead code, hardcoded secrets, exploitable flows, and AI-generated security regressions in Python, TypeScript, and Go. It automates code quality and security checks, enabling teams to identify and block issues in pull requests through CI/CD pipelines with GitHub annotations and review comments. Skylos combines framework-aware analysis, AI defense, and dead code detection with low false positives, making it particularly suited for teams using AI coding tools or developing secure Python applications.

## Release notes

## [4.1.3] - 2026-03-22

### Added
- Configurable duplicate string threshold — `duplicate_strings` in `[tool.skylos]` (default: 3)
- CLI table now prints a brief explanation of what each column means
- CLI discoverability overhaul — `skylos` with no args shows grouped command overview of all 30+ commands
- `skylos commands` — flat alphabetical listing of every command
- `skylos tour` — guided 6-step walkthrough for new users
- README Command Reference section with grouped tables
- `nudges` config key in `[tool.skylos]` to suppress post-scan suggestions
- Java language support. Dead code, security and quality
- Spring/JUnit framework awareness — `@Override`, `@Bean`, `@Test`, `@GetMapping`, `@Scheduled`, lifecycle methods are suppressed

### Fixed
- Django/DRF false positives: `Meta` inner classes, `urlpatterns`, `serializer_class`, `permission_classes`, `filterset_class`, migration attrs, and `AppConfig` subclasses are fixed (fixes [#115](https://github.com/duriantaco/skylos/issues/115))
- Added `django_filters` to framework detection

### Changed
- Quality table column renamed from "Function" to "Name"
- Duplicate string findings now show `repeated 5× (max 3)` instead of cryptic `5 (target ≤ 3)`
- Complexity findings now show `Complexity: 14 (max 10)` instead of bare `14 (target ≤ 10)`
- `skylos init` template now includes `duplicate_strings` option
- Post-scan hints replaced with context-aware nudges (1 per scan, based on results)
- Argparse epilog simplified — points to `skylos commands` and `skylos tour`
