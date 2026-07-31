---
title: Run Godlint
date: 2026-07-31 22:17:22 +00:00
tags:
  - tomerwave
  - GitHub Actions
draft: false
repo: https://github.com/tomerwave/godlint
marketplace: https://github.com/marketplace/actions/run-godlint
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Godlint is an executable engineering constitution designed to enforce architectural standards and best practices across different programming languages. It automates code reviews by enforcing rules locally and in CI, preventing architectural drift and ensuring consistency in the repository's architecture and security boundaries. The action supports multiple ecosystems and provides detailed output for terminal, GitHub, JSON, and SARIF formats, making it a versatile tool for teams managing large polyglot repositories.
---


Version updated for **https://github.com/tomerwave/godlint** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-godlint) to find the latest changes.

## Action Summary

Godlint is an executable engineering constitution designed to enforce architectural standards and best practices across different programming languages. It automates code reviews by enforcing rules locally and in CI, preventing architectural drift and ensuring consistency in the repository's architecture and security boundaries. The action supports multiple ecosystems and provides detailed output for terminal, GitHub, JSON, and SARIF formats, making it a versatile tool for teams managing large polyglot repositories.

## What's Changed

### Added

- Godlint reads `.github/workflows/*.yml` as well as source, through a new `tree-sitter-yaml`
  grammar and `analyzers::workflow`. `WorkflowFacts` exposes every `uses:` reference with its
  owner, name and version and whether that version is a commit rather than a movable tag; which
  jobs a workflow declares; and whether `permissions` and `concurrency` are declared, at the
  workflow level or per job. `ci/pin-third-party-actions` is the first rule to read them and
  `ci/explicit-workflow-permissions` is next. A workflow is discovered by the same walk
  as source, skipped by the same `exclude` globs, and bounded by the same maximum file size.
  Reading the syntax rather than the text is what lets a `uses:` inside a comment, a string, or a
  step named `uses:` be ignored, and what gives a finding a real line and column.
- Workflow rules can now ask about each step and its settings, expressions inside YAML values,
  comments, job dependencies and reusable-workflow secrets, and literal container or service
  credentials. Every site retains its source range, so a rule can relate an expression to a command or
  condition without mistaking an example in a comment for executable workflow policy.
- Job workflow facts now expose a job-level `if:` range, so policy rules can apply the same condition
  checks to privileged jobs and privileged steps.
- A workflow whose YAML Godlint cannot read now reports `syntax not recognised at line N`, the same
  issue a source file reports, instead of contributing nothing silently. This found two fixtures of
  its own that were invalid YAML — a plain scalar may not contain `: ` — one of them the fixture
  asserting that a `uses:` inside a string is ignored, which was resting partly on the file failing to
  parse at all. `every_workflow_fixture_is_yaml_that_github_would_accept` in `e2e.rs` now refuses a
  fixture the grammar cannot read.
- `ci/bot-conditions` — reports step and job conditions that compare `github.actor` or
  `github.triggering_actor` with a configured bot identity. Those fields are attacker-influenced on
  several triggers, so the check proves nothing about who opened the pull request; compare its author
  or verify the app instead. `bots` defaults to Dependabot, GitHub Actions, and Renovate identities.
- `ci/explicit-workflow-permissions` — reports a job that runs with whatever the repository grants by
  default. What it reports follows the fix: a workflow declaring nothing anywhere is one finding at the
  file, because one line at the top closes it, while a workflow whose *other* jobs are already narrowed
  is reported per job that is still open, at that job's line. `require-per-job` additionally asks each
  job to narrow a workflow-level block, and is off in `recommended@1` because inheriting one is a
  choice a repository may have made deliberately. This replaces the check in
  `scripts/validate-pull-request.py` that looked for the string `permissions:` in each workflow, and
  counted a match inside a comment or a `run:` line.
- `ci/hardcoded-container-credentials` — reports literal usernames and passwords in job container
  and service credential blocks while leaving GitHub-expression interpolation alone.
- `ci/no-comments` — reports comments in workflow YAML except version labels trailing `uses:` values.
  YAML has no doc-comment equivalent, so the rule has no option beyond `severity`.
- `ci/no-inline-script` — reports a workflow `run:` script above its configured effective-line
  limit. `recommended@1` adopts 8 after measuring 52 scripts: p50 was 1, p95 was 8 and the maximum
  was 40. Blank and shell-comment-only lines do not consume the default budget. The measurement is
  source-based, so compressed one-line command chains remain a documented boundary rather than a
  shell parser hidden inside a line rule.
- `ci/no-monolithic-job` — reports a workflow job above its configured step limit.
  `recommended@1` adopts 7 after measuring 21 jobs: p50 was 3, p95 was 7 and the maximum was 11.
  It counts independently reviewable and retryable steps; command aggregation inside a step remains
  `no-inline-script`'s concern.
- `ci/overprovisioned-secrets` — reports a step input or environment variable set to the whole
  `${{ secrets }}` context, including `toJSON(secrets)`, while named secret members stay silent.
- `ci/pin-third-party-actions` — reports a workflow step using a third-party action at a ref that can
  move. A tag, a branch or a version string can be repointed by whoever owns the action, and what they
  point at next runs in your workflow with your token; only a full forty-character commit SHA counts as
  pinned, and a short SHA does not, because it is neither what GitHub resolves nor collision-resistant.
  A local `./path` action, a `docker://` image, and any owner in `trusted-owners` are silent.
  `trusted-owners` defaults to `actions` and `github` — the accounts GitHub publishes from — because
  pinning those too is a policy decision rather than closing a hole; set it to `[]` to require every
  action to be pinned. Enabling it on this repository found five unpinned third-party uses across four
  workflows, now pinned. A workflow finding cannot be suppressed inline, because comment facts come
  from source and not from YAML; an `exclude` glob is the way to scope it.
- `ci/secrets-inherit` — reports `secrets: inherit` on a reusable-workflow call because it gives the
  callee every secret available to the caller; name the required secrets instead. Named secrets and
  no `secrets:` declaration are silent, and `allow-in` path globs scope trusted callers.
- `ci/template-injection` — reports attacker-influenced GitHub expressions interpolated directly
  into a workflow `run:` script, where the runner expands them before the shell sees the command.
  Expressions passed through `env:` or `with:` stay silent; binding the value to an environment
  variable and referencing it quoted is the documented fix. `allow-in` path globs scope exceptions.
- `ci/unredacted-secrets` — reports a `run:` script that combines a direct `secrets.*` expression
  with `$GITHUB_ENV` or `$GITHUB_OUTPUT`, where GitHub's masking no longer follows the value. It
  deliberately does not infer data flow through variables or earlier steps.
- A language support matrix in [the rule reference](docs/rules.md#language-support), recording for
  every rule which of the three dialects it covers, and distinguishing a language that has no such
  construct from one Godlint has not taught the rule yet. Each rule declares this as
  `Rule::LANGUAGES`; the matrix is asserted against the declarations, and
  `scripts/validate-pull-request.py` requires a fixture that reports the rule in each language it
  claims. Writing it down found `architecture/no-internal-import` claiming Rust while exempting every
  Rust path, which is now declared as the language having no such construct: `rustc` already refuses
  an import that reaches past another crate's public surface.

### Changed

- A rule name under `rules:` that this version of Godlint does not know is now reported and ignored
  rather than refusing the whole file. One configuration often has to be read by two versions at once
  — a pinned one in CI and a newer one locally — and a hard stop made adopting a rule an atomic
  upgrade across every consumer. The notice names the key, and the nearest rule it knows when there is
  one, because ignoring a *misspelling* is the case this makes dangerous. Everything else is still
  refused, and [the configuration guide](docs/configuration.md#what-a-version-may-read) states where
  the line is and why: an unknown rule key can only subtract the rule it names, while an unknown
  option, top-level key or suite name could make a run mean something other than the file says.
- `rules::evaluate` takes the workflow facts alongside the source facts. A caller inside this
  repository passes `&report.workflows`; a caller outside it that analyses no workflows passes `&[]`.

### Fixed

- `architecture/dependency-boundary`, `architecture/module-independence`,
  `policy/accountable-suppression`, `architecture/filename-case` and `security/forbidden-dependency`
  now have fixtures in every language they cover; each was previously proven in one language only. No
  rule behaviour changed — the gap was in what the corpus proved, and the new gate is what found it.

