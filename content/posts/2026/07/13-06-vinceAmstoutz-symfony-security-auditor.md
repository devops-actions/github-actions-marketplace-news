---
title: Symfony Security Auditor
date: 2026-07-13 06:14:53 +00:00
tags:
  - vinceAmstoutz
  - GitHub Actions
draft: false
repo: https://github.com/vinceAmstoutz/symfony-security-auditor
marketplace: https://github.com/marketplace/actions/symfony-security-auditor
version: 1.13.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vinceAmstoutz/symfony-security-auditor** to version **1.13.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/symfony-security-auditor) to find the latest changes.

## What's Changed

## What's Changed

- chore(deps): bump codecov/codecov-action from 5 to 7 by @dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/82
- chore(deps): bump actions/cache from 5 to 6 by @dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/83
- chore(deps-dev): update ergebnis/phpunit-agent-reporter requirement from ^0.3 to ^1.0 by @dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/79
- ci: drop run-cancelling concurrency by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/84
- ci: fix unset secret blocking mutation report by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/85
- feat(command): add show-scanned option to audit:run by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/87
- feat(infrastructure): source LLM pricing from symfony/models-dev catalog by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/89
- ci: tighten PHPStan with stricter opt-in checks by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/92
- fix(tests): drop redundant always-false coverage guard by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/94
- feat(config): support when env blocks in the config schema by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/93
- docs(config): use schema for editor completion by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/95
- feat: add standalone executable by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/91
- docs(examples): drop prompt_caching from examples by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/96
- docs(extending): remaining domain ports by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/97
- feat(domain): map vulnerabilities to OWASP Top 10:2025 by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/98
- chore(ci): release:bump task and tag-push pin guard by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/101
- feat(scan): detect committed secrets in root dotenv files by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/99
- feat(pipeline): parse instead of regexes by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/104
- feat(command): add junit output format by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/100
- feat(scan): support API Platform by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/105
- feat(pipeline): skip baselined findings before review by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/103
- feat(scan): support Symfony UX Live Components by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/106
- refactor(prompt): split prompt builders by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/107
- fix(scan): stop --since from dropping changed dotfiles by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/108
- fix(scan): match DOTALL pre-scan patterns across lines by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/109
- feat(scan): detect file-upload vulnerabilities as a dedicated attacker skill by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/118
- refactor(domain): extract ProjectFile type classification by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/121
- fix(report): strip xml-illegal from junit output by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/110
- feat(report): add GitHub Actions annotations output format by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/122
- refactor(agent): extract shared structured-collection wiring for chunk/review analyzers by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/124
- refactor(pipeline): make DI port defaults non-nullable by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/125
- feat(domain): add CWE alongside OWASP mapping by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/127
- fix(llm): match status codes as tokens in transient failure classifier by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/111
- fix: retry concurrent tool conversations by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/120
- fix(scan): redact unquoted secret values in inline config assignments by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/112
- fix(rate-limit): reconcile each concurrent acquire against its own estimate by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/113
- fix(cache): invalidate attacker cache when code-slicing configuration changes by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/114
- fix(llm): clamp the rate limiter's Retry-After pause by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/115
- fix(scan): flag non-constant-time signature by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/116
- fix(bundle): repair stale escalation attacker wiring by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/117
- feat(scan): support Twig extensions by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/119
- feat(report): mark baselined findings as suppressed in SARIF output by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/123
- feat(command): add audit:diff to compare reports by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/126
- test: close mutation-coverage gaps by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/128
- test: raise slow-test threshold for bundle boot test to match observed duration by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/129
- refactor(command): remove dead code by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/130
- fix: harden audit pipeline and correct CWE/OWASP by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/131
- chore(deps): bump actions/checkout from 4 to 7 by @dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/132
- chore(deps): bump DavidAnson/markdownlint-cli2-action from 23 to 24 by @dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/133
- fix: batch of audit-loop hardening fixes by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/134

**Full Changelog**: https://github.com/vinceAmstoutz/symfony-security-auditor/compare/1.12.0...1.13.0

