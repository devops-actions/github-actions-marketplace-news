---
title: Kida Report
date: 2026-04-25 05:55:38 +00:00
tags:
  - lbliii
  - GitHub Actions
draft: false
repo: https://github.com/lbliii/kida
marketplace: https://github.com/marketplace/actions/kida-report
version: v0.8.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lbliii/kida** to version **v0.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kida-report) to find the latest changes.

## Action Summary

Kida is a pure-Python templating library that introduces a component-based model for HTML, Markdown, terminal output, and CI reports, enabling features like typed properties, named slots, static validation, scoped state, and error boundaries. It automates error detection and ensures correctness by validating templates at build time, catching issues like incorrect parameter types or missing attributes before deployment. With support for static sites, web apps, CI reports, and terminal tools, Kida simplifies reusable component creation and enhances template flexibility while eliminating the need for JavaScript build steps or runtime dependencies.

## What's Changed













## 0.8.0 (2026\-04\-24)

> **+4938** / **-350** across **74** files



### New Features

- feat: agent\-UX — point K\-PAR\-001 end\-tag errors at \`kida check\` ([#112](https://github.com/lbliii/kida/pull/112))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- feat: relative \+ alias template resolution \(./, ../, @alias/\) ([#111](https://github.com/lbliii/kida/pull/111))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- feat: v0.7.1 — warn\-once, upgrade tutorial, null\-safe hint ([#109](https://github.com/lbliii/kida/pull/109))

<details><summary>Details</summary>

  \#\# Summary
\- Dedup the \`from\_string\(\)\`\-without\-\`name=\` UserWarning per distinct source per Environment \(was firing \~1000× in a downstream suite\).
\- Add \`docs/tutorials/upgrade\-to\-v0.7.md\` with three fix patterns for strict\-by\-default, the escape hatch, and \`?.\` / \`\| get\` idioms — cross\-linked from R...

  </details>


### Other Changes

- release: prepare v0.8.0 — bundle post\-prep PRs \(\#111–\#116\) ([#117](https://github.com/lbliii/kida/pull/117))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- Tighten benchmark suites and regression gating ([#116](https://github.com/lbliii/kida/pull/116))

<details><summary>Details</summary>

  \#\# Summary
\- Split benchmark helper scripts into \`core\`, \`product\`, and \`exploratory\` suites, with \`core\` as the default CI/release path.
\- Switch benchmark regression comparison to \`median\` by default and keep \`mean\` as an override for investigation.
\- Batch the compile\-pipeline benchmark so it mea...

  </details>

- Add core benchmark regression probes ([#115](https://github.com/lbliii/kida/pull/115))

<details><summary>Details</summary>

  \#\# Summary
\- Add a Kida\-only regression benchmark suite for the hottest render, helper, escape, sandbox, and compile paths.
\- Wire the new suite into the benchmark baseline and compare scripts so it participates in regular regression checks.
\- Document the new suite in the benchmarks README.

  </details>

- Update Kida component validation and stability gates ([#114](https://github.com/lbliii/kida/pull/114))

<details><summary>Details</summary>

  \#\# Summary
\- Add public API, diagnostics, and component contract snapshot tests to freeze current framework behavior
\- Tighten component validation and metadata coverage, including CLI JSON and imported def checks
\- Add a stability gate workflow with package smoke testing and updated docs for releas...

  </details>

- Update component validation and render parity ([#113](https://github.com/lbliii/kida/pull/113))

<details><summary>Details</summary>

  \#\# Summary
\- Add structured component\-call diagnostics with \`K\-CMP\-\*\` codes and warning categories
\- Validate literal \`{% from \"...\" import ... %}\` component calls across templates and surface them in the CLI
\- Fix render\-surface parity issues in sync, streaming, and async block/region compilation
\-...

  </details>

- release: v0.8.0 — ?. soft\-on\-mappings ([#110](https://github.com/lbliii/kida/pull/110))

<details><summary>Details</summary>

  \#\# Summary

  </details>

- release: prepare v0.7.0 — strict\-by\-default ([#108](https://github.com/lbliii/kida/pull/108))

<details><summary>Details</summary>

  \#\# Summary

  </details>







### Contributors

@lbliii



---
**Full diff:** [0.7.0...0.8.0](https://github.com/lbliii/kida/compare/v0.7.0...v0.8.0)
