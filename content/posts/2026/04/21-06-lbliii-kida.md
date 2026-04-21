---
title: Kida Report
date: 2026-04-21 06:29:10 +00:00
tags:
  - lbliii
  - GitHub Actions
draft: false
repo: https://github.com/lbliii/kida
marketplace: https://github.com/marketplace/actions/kida-report
version: v0.7.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lbliii/kida** to version **v0.7.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kida-report) to find the latest changes.

## Action Summary

Kida is a Python-based component framework for generating HTML, terminal output, and markdown with modern frontend patterns, such as typed props, named slots, scoped state, and error boundaries, all without relying on JavaScript or a build step. It automates template validation, component discovery, and compile-time checks to enhance reliability and scalability across multi-core Python environments. Key features include static type-checking, context propagation, co-located styles, and error handling, making it a robust alternative to traditional templating engines like Jinja2.

## What's Changed















## 0.7.0 (2026\-04\-20)

> **+6842** / **-703** across **87** files



### New Features

- feat: agent\-UX — narrow {% set %} warning, parser trap hints, docs truth ([#106](https://github.com/lbliii/kida/pull/106))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- feat: reject non\-top\-level {% def %}/{% region %}, retarget Undefined hint ([#100](https://github.com/lbliii/kida/pull/100))

<details><summary>Details</summary>

  \#\# Summary
\- Compile\-time check \(\*\*K\-TPL\-004\*\*\) rejects \`{% def %}\` / \`{% region %}\` nested inside any control\-flow construct \(\`if\`, \`for\`, \`with\`, \`provide\`, \`try\`, \`match\`, \`cache\`, \`capture\`, \`push\`, \`spaceless\`, \`filter\`, \`while\`\), where \`\_globals\_setup\` cannot bind the name for \`render\_block\(\)\`...

  </details>

- feat: RenderCapture — block\-level capture, search indexing, freeze cache ([#99](https://github.com/lbliii/kida/pull/99))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- feat: adopt Python 3.14\+ patterns — TypedDict, match/case, slots ([#98](https://github.com/lbliii/kida/pull/98))

<details><summary>Details</summary>

  \#\# Summary

  </details>


### Bug Fixes

- fix: extend CoercionWarning to collection/number filters, add lint gates ([#97](https://github.com/lbliii/kida/pull/97))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- fix: suppress PrecedenceWarning when nullish fallback is parenthesized ([#96](https://github.com/lbliii/kida/pull/96))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- fix: bump action default python\-version from 3.12 to 3.14 ([#94](https://github.com/lbliii/kida/pull/94))

<details><summary>Details</summary>

  The release\-notes workflow failed because the action's default \`python\-version\` was \`3.12\`, but every \`kida\-templates\` release on PyPI requires \`\>=3.14\`. This bumps the default to \`3.14\` so \`pip install kida\-templates\` succeeds.

  </details>


### Documentation

- docs: add AGENTS.md — contributor safety/values guide ([#104](https://github.com/lbliii/kida/pull/104))

<details><summary>Details</summary>

  \#\# Summary
Adds \`AGENTS.md\` at the repo root as a contributor\-facing values/safety guide, complementing \`CLAUDE.md\` \(tactical syntax/API reference\). Covers Kida's north star \(component model in pure Python, statically validated, on free\-threaded 3.14t\), design philosophy, blast radius by subsystem, ...

  </details>


### Refactoring

- refactor: leaf\-node hardening — bug fixes, dead code, test gap closure ([#105](https://github.com/lbliii/kida/pull/105))

<details><summary>Details</summary>

  \#\# Summary

  </details>


### Other Changes

- feat\!: flip strict\_undefined default to True ([#107](https://github.com/lbliii/kida/pull/107))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- Render\-surface hardening: parity corpus, fragment scaffold, sandbox fuzz ([#103](https://github.com/lbliii/kida/pull/103))

<details><summary>Details</summary>

  \#\# Summary
\- \*\*Sprint 1 — parity corpus.\*\* 32\-case corpus across 7 render methods pins three latent bugs \(def\-as\-generator in full streams, let\-cellvar in async block stream, region returning async\_generator\) under strict xfail so any fix flips XPASS → FAIL.
\- \*\*Sprint 2 — fragment scaffold.\*\* \`rend...

  </details>

- release: prepare v0.6.0 — version bump, changelog, and docs ([#93](https://github.com/lbliii/kida/pull/93))

<details><summary>Details</summary>

  \#\# Summary

  </details>




<details>
<summary><strong>Direct commits</strong> (1)</summary>

- `2f8ce28` release: prepare v0.7.0 — strict\-by\-default, agent\-UX hints, render\-surface hardening \(\#108\) — @Lawrence Lane



</details>




### Contributors

@lbliii



---
**Full diff:** [0.6.0...0.7.0](https://github.com/lbliii/kida/compare/v0.6.0...v0.7.0)
