---
title: cowork-harness
date: 2026-08-23 22:47:03 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v2.0.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness action automates the testing of Claude Cowork skills by providing a scriptable and CI-friendly test harness that closely reproduces the observable runtime contract. It ensures that tests clear the constraints that break skills in Cowork, offering evidence of what the agent actually did during a run, not just what it said it did. The tool supports various fidelity tiers and provides an interface to inspect and analyze test results.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v2.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness action automates the testing of Claude Cowork skills by providing a scriptable and CI-friendly test harness that closely reproduces the observable runtime contract. It ensures that tests clear the constraints that break skills in Cowork, offering evidence of what the agent actually did during a run, not just what it said it did. The tool supports various fidelity tiers and provides an interface to inspect and analyze test results.

## What's Changed


### Added

- **`lint` warns when `prompt:` names a slash command anywhere but the start** (⚠
  `WARN [prompt-slash-not-leading]`). Writing `/<skill-name>` into a scenario prompt is what an author
  reaches for when a skill will not auto-trigger, and it works — the harness sends `prompt:` verbatim and the
  agent expands a **leading** slash before the model is called. Named mid-sentence ("review the deck with
  `/deck-review`") it is never expanded: the text reaches the model as prose, which may then pick the `Skill`
  tool on its own — the same auto-trigger path the slash was meant to bypass. The scenario still runs and can
  still pass, so it silently stops testing what it reads as testing. Paths, URLs, filenames and dates
  (`/mnt/uploads/x`, `https://…`, `/deck.pdf`, `8/22`) do not trigger it.

### Fixed

- **Every published version floor was unbounded, so it resolved across a major.** The skill and the CI
  recipes advertised `cowork-harness@>=X.Y.Z`; `>=` does not stop at a major boundary — measured,
  `cowork-harness@>=1.0.0` matches 2.0.0 — so a consumer following the documented floor was handed the
  next **breaking** release automatically. That is not hypothetical: it is how `@>=2.0.0` resolved the
  deprecated 2.0.0. All 12 live floors across `README.md`, `SKILL.md`, `ci-recipe.md` and
  `examples/replays/README.md` are now `@^X.Y.Z`, which resolves the newest release **within the same
  major**, and the docs that teach the pattern teach the bounded form.

  `check:versions` gains invariant 13, which is what keeps it that way: **no shipped doc may advertise
  `@>=` with a real version**, and every doc carrying a live floor must agree with `SKILL.md`'s. It scans
  the whole shipped-doc corpus rather than a hand-listed set — `ci-recipe.md` and
  `examples/replays/README.md` had drifted out of the previous checks precisely by not being on such a
  list. A doc that deliberately cites an OLD floor to illustrate a past feature gate opts out of the
  equality rule with an inline `floor-historical` marker; it does **not** opt out of the `>=` rule, since
  the form is the defect whatever the version.

- **Twenty authored objects silently STRIPPED unknown keys instead of rejecting them** (11 in
  `src/types.ts`, 9 in `src/session.ts`, all `z.object` → `z.strictObject`). For an authored document a
  typo did not fail — it changed what you wrote: `{ from: "/tmp/x", mdoe: "r" }` parsed to
  `{ from: "/tmp/x", mode: "rw" }`, turning a **read-only mount writable**. In the assertion layer a
  misspelled field on `path_denied` stripped to `{}`, which matches *any* path denial, greening a run that
  should have failed. The sweep reaches objects behind `z.array` (`Folder`, `Project`) that a top-level
  scan misses, and is guarded by a walk of the zod tree — the generated JSON Schema cannot express the
  difference (`z.object` and `z.strictObject` both emit `additionalProperties: false`), so a
  schema-based assertion there is a test that cannot fail. **Note the compatibility edge:** a document
  carrying such a typo loaded before and now fails at load. The published schema is unchanged
  (byte-identical); this tightens the loader.
- **A connected folder's host path could reach a committed cassette.** `folderPrefixMap[].from` holds the
  record-time host path (`/Users/<name>/…`); neither the privacy scanner nor the redactor read the field,
  and `redactCassette` passed it through in its `...cassette` spread — so `verify-cassettes` reported
  `ok: true` with `privacyScanned: true` over a real username and directory layout. Fixed at all three
  sites: the scan, the redactor, and `readCassetteForScan`'s malformed-document projection — that last one
  is the trap, since a fixture built only from a valid cassette passes with half the fix missing. **The
  committed example was re-redacted in the same change** (`examples/replays/example-pdf-skill.cassette.json`
  — `"/Users/…/examples/data/project"` → `"/redacted/examples/data/project"`), so the path that was already
  public in this repo is scrubbed rather than merely blocked for future recordings.
- **`--answer-policy` turned a one-character typo into zero rules, silently.** A document keyed `answer:`
  instead of `answers:` hit `?? []`, and an empty array passes an `Array.isArray` check — so the policy
  loaded as "no rules" and the run spent tokens before whiffing on the first gate. The parser now
  distinguishes a missing `answers` key from an empty list and names the top-level keys it actually found.
- **A record-time warning named the wrong assertions.** When a secret triggers whole-field marker
  replacement, the warning claimed `artifact_json`/`user_visible_artifact` "will fail at replay".
  `user_visible_artifact` and `file_exists` check location, not content, and still **pass** (the marker is
  written with a recomputed `sha256`); only the body-reading keys fail. An author could read a passing
  visibility assertion as proof the scrubbed content survived. Corrected in the warning and in
  [`docs/cassette.md`](./docs/cassette.md) together — one claim in two places.
- **A release no longer becomes every unpinned consumer's default install the moment CI goes green.**
  `npm publish` with no `--tag` writes `latest`, which is how 2.0.0 — a breaking hash-format epoch plus a
  flagship replay that exited 1 from an npm install — reached everyone with no human in between, and had
  to be rolled back to 1.25.0 by hand. CI now publishes with `--tag next`; the version is fully published
  and installable as `cowork-harness@next` or by exact version, and promoting it to `latest` is a
  documented [`RELEASING.md`](./RELEASING.md) step that needs a 2FA challenge, which is the point.
- **The flagship zero-token replay now works from an npm install.** `README.md` and
  [`examples/replays/README.md`](./examples/replays/README.md) tell a new reader that the first thing to run is
  `cowork-harness replay examples/replays/example-pdf-skill.cassette.json`. From an npm install that exited 1:
  the cassette resolves `../sessions/default.yaml`, `../scenarios/…` and `../skills/my-pdf-skill`, and
  `package.json` `files[]` shipped only `examples/replays`. A 2.0.0 regression — before the hash-format epoch,
  unverifiable staleness warned and exited 0. `files[]` now also ships `examples/sessions`, `examples/skills`,
  `examples/scenarios` and `examples/data`, and a guard reads the packed file list and derives its requirements
  from the cassette itself (session, `scenarioSource`, every hashed `fileSig`), so a re-record cannot quietly
  outrun it. Note that `replay --strict` from an extracted tarball still reports the `format`-class
  `recorded in 'git' file-set mode, verifying in 'raw'`: a tarball is not a git work tree, so the file-set
  boundary differs from the one the cassette was recorded under. That is honest, not a packaging defect.

- **Seven statements about what a global install ships were left stale by that packaging change**, five of
  them in `README.md` — including a "What ships" table row marking the runnable worked examples ✗ for npm, a
  callout saying `run examples/scenarios/…` "errors with a missing file", and two
  *(source checkout only — not shipped in the npm package)* parentheticals in
  [`docs/cassette.md`](./docs/cassette.md) and [`docs/discovery.md`](./docs/discovery.md) against files that
  now ship. Measured from an extracted tarball: all eight published example scenarios resolve their session
  and every skill/plugin root they stage, and `lint examples/scenarios/` is clean.
  What genuinely does not ship is `examples/matrices/`, `examples/answer-policies/` and `examples/probes/`,
  and the corrected prose says so. A `files[]` edit and the prose describing it had no mechanical link; a
  guard now resolves every shipped scenario's references against the packed file list, so the next such edit
  fails rather than quietly turning three pages into fiction.

- **Nine relative links in shipped documentation pointed at files npm does not publish.** `./action.yml`,
  `.github/workflows/ci.yml` (twice), three `src/**` implementation pointers in
  [`docs/decider-dir.md`](./docs/decider-dir.md) and [`docs/run-status.md`](./docs/run-status.md), and two
  "runnable copy" pointers in [`docs/scenario.md`](./docs/scenario.md). All nine resolve in a git checkout —
  which is why nothing caught them — and all nine were dead from `npm i cowork-harness`. They are now
  `blob/main` links, the convention the companion skill's references already use for the same reason. A guard
  now reads the packed file list from `npm pack --dry-run --json`, extracts every link from every shipped
  Markdown file, and resolves each one against it; it also checks that every target it extracted exists in a
  source checkout, so a regex that starts matching prose fails rather than inflating the pass count.

- **`pytest` from the repo root collected the paid `cowork` lane.** `addopts = "-m 'not cowork'"` lived
  only in `python/pyproject.toml`, and pytest reads the config at the rootdir for the invocation — so a bare
  `pytest` from the repo root read none of it and selected the three `@pytest.mark.cowork` tests, each of
  which spawns node, Docker and a real model. A root `pytest.ini` fixes that invocation.

- **The `cowork` lane is now opt-in from the module, not just from config.** INI config does not travel with
  an installed helper: a consumer's `pytest` reads *their* rootdir, so `addopts` protects nobody downstream —
  and it will protect nobody here either once the helper ships as a `pytest11` plugin. `cowork_harness` now
  carries the rule itself: a collection hook skips `cowork`-marked tests, and the `cowork` fixture refuses to
  build a runner, unless the run asked for the lane (`-m` mentioning `cowork`, or the new
  `COWORK_HARNESS_PYTEST_LANE=1`). The two guards are not redundant — the hook keys on the marker, so a test
  that takes the fixture without wearing `@pytest.mark.cowork` reaches the fixture guard and nothing else.
  Selecting a lane test some other way (`-m fast`, a bare node id) is deliberately not opt-in; the skip
  reason names both switches. `pytest -m cowork` and `pytest -m 'not cowork'` behave exactly as before.

- **Three present-tense claims about the cassette format were stale at `CASSETTE_VERSION` 12.**
  `task-recipes.md` — the page a skill author reads when they open a cassette — linked
  `schema/cassette.v11.json` and called 11 "current max", describing a version regime (`lane: remote`
  stamps 11, everything else 10) that the hash-format epoch had already replaced. `SPEC.md` said
  `schema/cassette.v9.json` and `v10` were "retained alongside v11", which both understated the retained
  set and re-stated 11 as the top. Corrected, and `check:versions` gained invariant 12: SPEC's max, read
  floor and retained-range sentences and task-recipes' schema pointer and "current max: N" are now checked
  against `CASSETTE_VERSION`, `MIN_SUPPORTED_CASSETTE_VERSION` and the `schema/cassette.v*.json` files on
  disk, and no shipped page may link a schema file that is not there. Bumping `CASSETTE_VERSION` in a
  scratch tree now fails the check naming all four surfaces.

  It guards **current** claims only. `docs/scenario.md` and `docs/cassette.md` explain the v10-vs-v11
  `lane: remote` regime at length and are correct history; `CHANGELOG.md` is nothing but history. A guard
  that flagged those would train the next author to route around it. The retained set is stated as a range
  rather than a list precisely so it cannot go stale by omission the way the old sentence did — and the
  check refuses the range form outright if `schema/` ever stops being contiguous.

- **`schema/scenario.schema.json` said nothing about its own scope, so validating against it read as
  "this will run".** It mirrors the two mutually-exclusive delete-assertion rules and nothing else, which
  means an editor or a CI step that checks a scenario against it alone greens files the harness refuses.
  Its `description` now says so and names where behavioural validation actually lives. Measured, because
  the answer is not one command: a matcher-less `answers:` entry (`{}`) passes `lint` **clean** and is
  refused by the loader (`record --dry-run`, exit 2), while `lane: remote` with a delivery-shaped
  assertion is caught by `lint` (`lane-remote-incompatible-key`, exit 1). Neither tool alone covers both,
  so the text points at both. Tests pin the gap from both sides — mirroring one of those rules in later,
  or dropping the one that IS mirrored, fails and forces the description to be rewritten.

- **`RELEASING.md`'s tarball checklist told the releaser the companion skill "ships via the marketplace,
  not npm".** It ships on both: `package.json` `files[]` publishes `SKILL.md`, `references/` and the
  bundled `scenario.py` + `assertion-keys.json` — 26 files under `.claude/` in the packed tarball. The
  marketplace install is the NARROWER one, materializing only `.claude/skills/cowork-harness/**`. Since
  the checklist item exists to make a releaser confirm what is in the tarball, it was pointing at the
  wrong expectation at exactly the wrong moment.

- **Four overclaims that a prospective user reads while deciding whether to trust the tool.** Each was
  checked against primary evidence rather than against the doc that repeated it.
  - **Egress parity was stated as identity, in five places.** `DESIGN.md` called the default allowlist
    "captured from the live asar"; `README.md` called it "the **synced** allowlist" and the fidelity
    "allowlist-exact"; `README.md` and `docs/boundary.md` said domain allow/deny "matches Cowork" / "is
    identical", and a `DESIGN.md` table row said the same. The pinned baseline refutes all five in its own
    `network.$comment`: the list is "a PINNED, hand-curated list — `sync` carries it forward and never
    re-derives it … a curated RECONSTRUCTION, not an extraction", because on the first-party deployment
    the VM egress allowlist is not in the app bundle at all (that class returns `vmEgressPolicy(){return
    null}`; the real list is server-delivered per session), and four entries are flagged UNVERIFIED as VM
    egress. What is true — enforcement is domain-exact against the pinned list — is now what the docs say.
  - **"A green test means green in real Cowork"** (`README.md`, `llms.txt`) was unconditional, 21 lines
    above a callout that correctly calls this an emulator of the contract. `mount_delete` alone is
    `severity: "warn"` here while production denies it. The tagline now claims what it can support — a
    green run has cleared the constraints that break skills in Cowork — and points at
    [`docs/fidelity-gaps.md`](./docs/fidelity-gaps.md) for the deliberate divergences.
  - **The local lane was described as an agent inside the microVM** in `README.md` and `DESIGN.md` §1,
    while `DESIGN.md`'s spawn-contract section says the opposite and is right. Measured:
    `decideLoopFromBaseline(desktop-1.34493.1)` returns `"host"` — the loop runs on the host and reaches
    the VM for shell. §1 now defers to that section instead of contradicting it.
  - **The hermetic-`CLAUDE_CONFIG_DIR` guarantee is not unconditional** (`README.md`,
    `docs/discovery.md`). At `protocol` fidelity with no `ANTHROPIC_API_KEY`, the harness deliberately
    keeps your real config dir — a fresh one breaks local OAuth — and layers discovery settings via
    `--settings` instead (`src/runtime/protocol.ts`, whose comment already says so). Both pages now carry
    the exception and name `COWORK_MANAGED_CONFIG=1`; the sandboxed tiers are unaffected.

- **Seven documented gates that do not gate the way the docs say.** Each was measured against the CLI, not
  read off the code.
  - **`analyze-skill`'s `ok` and `--strict` semantics were wrong in five places.** Both key on
    **severity**, not on the finding count: `ok` mirrors the exit code, and `--strict` fails only on an
    `error`-severity finding. Measured with one finding present — plain run: `ok: true`, exit 0; with an
    advisory-only finding (`artifact-write-back-suspect`): **exit 0 even under `--strict`**. So "`ok` is
    true only when every file has zero findings" and "`--strict` … fails on any unsuppressed finding"
    ([`docs/subagents.md`](./docs/subagents.md), [`README.md`](./README.md)) are both false, and
    `action.yml`'s and README's description of the Action's `strict` input as applying to "any advisory
    finding" is the **inverse** of the truth — advisory is exactly the class that never gates.
    `docs/subagents.md` also called the three `/sessions` rules "all advisory findings"; every one is
    severity `error`.
  - **`README.md` claimed `analyze-skill` statically analyzes `.ts` sources.** `.ts`/`.tsx`/`.jsx` are in
    `ARTIFACT_UNPARSEABLE_EXTS` — out of scope. `docs/subagents.md` got the exclusion right but said such
    a target "is reported under `unscannedArtifactSources` rather than silently passing as clean"; that
    field is scoped to explicit positionals, so a **directory** scan over a TypeScript generator reports
    nothing at all. Both now say which one you get.
  - **The CI recipe defined overall pass without the verdict** — `result === "success" &&
    assertions.every(pass)`. The verdict carries ~20 signal codes that fail a run with no failing
    assertion (`stalled`, `mount_delete`, `host_path_leak`, `undelivered_deliverables`,
    `permissive_auto_allow`, `ended_with_question`, `infra_error`, …). A parser copied from the recipe
    greened through every one; it now points at `verdict.pass` / `ok`.
  - **The recipe's "sha256-verified" step verified nothing** — `curl`, `chmod`, and two comments saying
    someone ought to verify. It now runs `sha256sum -c -` against the pinned digest and fails the job.
  - **`docs/scenario.md` told remote-lane authors to "assert the delivery itself"** — a key that does not
    exist. `src/run/execute.ts` and `src/assert.ts` both carry a comment saying so verbatim ("Advising it
    sent a consumer looking for a key that does not exist"); the error messages were fixed and the table
    was not. It now names the real remedy (`file_exists` + `transcript_matches`, or `lane: local`).
  - **`docs/scenario.md` pointed `run` at `--decider-llm`.** Measured: `run` is the only command that
    rejects it (`unexpected argument(s)`, exit 2 — `record`, `skill` and `decide` accept it), and
    `run --help` says "run omits `--decider-llm` by design". Three mentions now carry that, and name
    `on_unanswered: llm` and `--decider-dir` as what `run` does take.
  - **`docs/cassette.md` said `verify-cassettes` exits 1 on an unverifiable tree, twice.** Measured on a
    relocated cassette: `replay` exits 1, `verify-cassettes` exits **3** — could not verify, which the
    CLI's own help distinguishes from the exit 1 it uses for a verified failure.

- **Seven authoring-surface claims that misdescribe what the code does.** The first two are in the shipped
  skill, so an installed agent was teaching them.
  - **`SKILL.md` said a "type-it-in-notes" option has "no scripted deterministic answer" today.** It has
    one: `answer:` — an arbitrary string delivered verbatim, bypassing label validation by author intent
    (`AnswerRule.answer` in `src/types.ts`, implemented at `src/decide/decider.ts`, and present in the
    published scenario schema). The claim steers agents onto the LLM decider, with its cost and its
    `nonDeterministic` flag, for something a scripted key already covers. What genuinely has no scripted
    equivalent is the `OTHER:` *directive*, which is what the surrounding parenthetical is about.
  - **"Never hand-write the `req-N.json`/`resp-N.json` files" is unachievable for three of four gate
    kinds.** The `answer` subcommand's only terminal write is `{id, answers}`, while the same channel
    carries **permission**, **dialog** and **elicit** gates, whose replies take `{behavior}` / `{action}`.
    Both [`SKILL.md`](./.claude/skills/cowork-harness/SKILL.md) and
    [`docs/decider-dir.md`](./docs/decider-dir.md) now scope the rule to question gates, and `decider-dir`
    documents the alternative: each `req-N.json` advertises its own `reply_with` template, so the shape
    never has to be guessed.
  - **`fidelity: cowork` can also require `allow_host_writes`.** The consent check gates on
    `effectiveFidelity === "hostloop"`, and `cowork` resolves to hostloop on every shipped baseline —
    so a gate flip can red an unchanged `cowork` scenario. [`docs/scenario.md`](./docs/scenario.md)
    described the consent as hostloop-only.
  - **Local marketplaces are read, not registered.** `.claude-plugin/marketplace.json` is parsed directly
    and the plugins it names are resolved to `--plugin-dir`; the `claude plugin marketplace add` registry
    is inert in cowork mode. [`docs/session.md`](./docs/session.md) said "registered via `claude plugin
    marketplace add`" in two places, and `src/session.ts` carried the same stale comment.
  - **Git-tracked staging does not apply to `hostloop` connected folders.** They are bind-mounted rather
    than copied there (matching production), and the git filter lives in the copy path — so the same
    session exposes untracked files at `hostloop` that are invisible at `container`. The rule was stated
    without a tier qualifier.
  - **The connected-folder delete assertion is `no_delete_in_mounts`, not `no_delete_in_outputs`.**
    `no_delete_in_outputs` covers `outputs/` only; the mount-wide form covers "outputs + every `rw`
    connected folder". [`docs/session.md`](./docs/session.md) and
    [`docs/boundary.md`](./docs/boundary.md) both routed the reader to the one that does not cover it.
  - **`web_fetch.approved_domains` is inert except at `hostloop`.** `enableWebFetchGate()` is called at
    one site, guarded by `effectiveFidelity === "hostloop" && viaApiOn`, and that gate is the only
    consumer of the set. The value is still parsed and seeded at `container`/`microvm`, where nothing
    reads it — [`docs/session.md`](./docs/session.md) described it as unconditional in two places.

- **Nine claims where one page contradicted another — or itself.** The accurate version already existed in
  most cases; these hoist it rather than inventing new content.
  - **`SECURITY.md` classified scenario YAML as both "semi-trusted" and "trusted input", 30 lines apart.**
    The trusted reading is the correct one — `allow_if` is evaluated as host JavaScript via `new Function`,
    so an author can run arbitrary code, by design. That statement now leads the input-boundary section;
    cassettes and marketplace metadata stay semi-trusted.
  - **`SECURITY.md` said host resources are "reachable only through an MCP server, never via direct host
    tools".** Not at `hostloop`: the agent loop is a native host process whose Read/Write/Edit/Glob/Grep
    run with no container around them, contained only by a `PreToolUse` gate — which is exactly what
    production does, and why a writable connected folder there needs `allow_host_writes`.
    [`docs/boundary.md`](./docs/boundary.md) documented this correctly all along.
  - **`SECURITY.md` and `SPEC.md` routed `web_fetch` through the container egress boundary.** It is
    host-routed at `hostloop` (matching production's host-API route), so it never crosses the per-run proxy
    or guest firewall — those enforce `bash` egress. `SPEC.md` said so correctly in two later sections while
    two earlier ones said the opposite.
  - **`docs/scenario.md` listed `replay` as a `requires_capabilities` hard-fail case** in a bullet, and said
    the opposite two sentences later. Replay re-drives and resets the outcome; the bullet was the stale half.
  - **`docs/cassette.md` understated the committed body surface.** A cassette inlines the body of *every*
    under-cap regular file under `outputs/` and `.projects/` — UTF-8 as text, anything else as base64 — not
    just "the `outputs/` JSON bodies". An author can commit a spreadsheet, an image or a PDF believing only
    JSON is embedded. Uploads and `mode:r` folders are hash-only; over-cap files carry
    `truncationReason: "size"`.
  - **"Permanently unverifiable" is wrong in two places** ([`docs/cassette.md`](./docs/cassette.md),
    [`SKILL.md`](./.claude/skills/cowork-harness/SKILL.md) — the latter ten lines below its own correct
    statement of the recovery). A relocated cassette is unverifiable *from its own location*;
    `--session <file>` resolves it without a re-record.
  - **`docs/cassette.md`'s minimal CI snippet ran `replay` only**, on a page that opens with "In CI, run
    both commands". The snippet now runs `verify-cassettes` too, with its exit-code meanings.
  - **`docs/protocol.md` said all three callers "skip the offending frame loudly"** on a malformed frame.
    They do three different things, and only one is a skip: the live session surfaces a typed protocol
    error event, **cassette replay turns it into a FAILING `replay_protocol_fidelity` assertion** (a
    malformed frame could conceal a failed assertion, so a silent skip would risk a false green), and
    `trace` is the one that skips and moves on.
  - **`rehash` is the 2.0.0 upgrade step and the README command row did not say so.** The row now states
    that the hash-format epoch fails a bare `replay` until each cassette is migrated, and points at the
    CHANGELOG entry.

- **Two replay-class misclassifications, and a guard that could not see them.** Which bucket an assertion
  key sits in — always-content, controlOut-gated, manifest-backed, or live-only — is what tells an author
  whether their assertion survives a token-free `replay` or is silently skipped. The existing
  `docs/cassette.md` guard compared a **union** of three buckets (leaving `LIVE_ONLY_KEYS` out entirely),
  and a union cannot see a key MOVE between buckets, which is the change that matters.
  - `fidelity-and-answers.md` enumerated the live-only set and omitted **`no_delete_in_mounts`** — a
    reader working from that list would expect it to replay.
  - `scenario.py`'s `scaffold` emitted `file_exists` and `user_visible_artifact` under a heading reading
    *"LIVE-only (skipped on replay)"*. Both are manifest-backed: they replay whenever the cassette carries
    an artifacts manifest, which `record` has snapshotted since 0.24. The scaffold contradicted the
    taxonomy declared in its own file, and taught new authors exactly the misconception the
    `manifest-needs-snapshot` INFO exists to correct. It now emits two labelled buckets.
  - Each bucket is now guarded independently and in **both** directions — every live-only key is named,
    and no key from another bucket is. Moving one key between buckets in `cassette.ts` fails four tests.
    The `scenario.py` check is deliberately a self-consistency check against that file's own sets rather
    than a mirror of the TypeScript constants, because `scenario.py` says outright that it is "NOT a 1:1
    mirror" (it keeps the verdict modifiers out of `CONTENT_KEYS` on purpose).

### Documentation

- **[`docs/fidelity-gaps.md`](./docs/fidelity-gaps.md) no longer narrates its own edit history.** Removed a
  parenthetical describing what a previous draft of the `PostToolUse:WebSearch` note had claimed. A reader
  arriving fresh has no "before" to contrast against, so being told that a claim absent from the document
  was wrong costs a parse and says nothing about the harness. The paragraph above it already states current
  behaviour.
- **`docs-present-tense` also catches a doc narrating its own revisions.** Its patterns keyed entirely on
  tense markers (`no longer`, `used to`, `previously`, …), and doc-self-history carries none — "An earlier
  revision of this section claimed X. That was wrong." passed the guard while being precisely what the
  guard exists to stop. Three patterns added for that shape; each is covered by a mutation check rather
  than by matching nothing and being assumed live.

- **[`docs/scenario.md`](./docs/scenario.md) — new "Slash commands in `prompt:`" section.** Documents that a
  slash command must START the prompt; that skills resolve by their bare frontmatter `name:` from either
  staging route (`skills.local` or a `--plugin-dir` plugin source); that an unregistered name is answered by
  the **agent**, not the model, ending the run with `Unknown command: /<name>`, `num_turns: 0` and no tokens
  spent; and that expansion is not enforcement.
- **[`docs/fidelity-gaps.md`](./docs/fidelity-gaps.md) — corrected the `UserPromptSubmit` rationale.** It
  previously justified not serving the hook with "a scenario `prompt:` is not a slash command, so the hook
  returns `{}`" — an assumption about consumer input, not a property of the harness, and one consumers do
  violate. The gap itself is unchanged and narrower than that framing implied: the agent binary performs the
  expansion on stream-json input on its own, so the body injection here is identical to production; only
  Desktop's additional `additionalContext` is missing.

- **`--fail-on-skill-drift` does not detect skill drift when you replay from an npm install** — measured, and
  now pinned by a test that replays the flagship cassette from a real extracted tarball. A cassette is
  recorded in `git` file-set mode; an extracted tarball is not a work tree, so the walk falls back to `raw`.
  Digests taken over different file-set boundaries are not comparable, so staleness stops at the `format`-class
  `recorded in 'git' file-set mode, verifying in 'raw'` rather than inventing a content diff — and `format` is
  outside the skill-drift classes. The practical consequence: a tampered skill file in an extracted tarball
  replays `ok: true` under the flag whose job is to catch exactly that, and `--strict` fails on the boundary
  without ever naming the tampering. Run `replay` from a git work tree when skill-drift detection is the point.
  The test carries a git-mode positive control on the same directory and the same mutation, so the finding is
  a measurement rather than an absence of one. [`docs/cassette.md`](./docs/cassette.md)'s staleness-class list
  now says this at the finding itself — it previously described the boundary mismatch and told you to
  re-record, without noting that the finding REPLACES the skill comparison rather than accompanying it.



## What's Changed
* docs(fidelity-gaps): scope the real-CLAUDE_CONFIG_DIR claim to `protocol` by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/123
* fix: three false-green defects (privacy scan, answer-policy, redaction warning) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/124
* fix(schema): authored objects reject unknown keys instead of stripping them by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/125
* release: publish to `next`, promote to `latest` deliberately by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/126
* lint: warn when `prompt:` names a slash command off position 0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/127
* docs: stop a doc narrating its own revisions, and guard the shape by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/128
* fix(pkg): ship what the flagship replay needs, so it works from an npm install by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/129
* fix(docs): make the shipped docs true about the npm payload, and guard it by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/130
* fix(python): keep the paid cowork lane opt-in from the module, not just from INI by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/131
* fix(docs): version-couple the cassette-format claims to the constants by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/132
* fix(docs): say what scenario.schema.json does NOT check, and fix RELEASING's tarball claim by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/133
* docs: correct four overclaims a prospective user reads to decide whether to trust this by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/134
* docs: correct seven documented gates that do not gate the way the docs say by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/135
* docs: correct seven authoring-surface claims that misdescribe the code by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/136
* docs: resolve nine places where one page contradicted another, or itself by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/137
* fix(docs): guard each replay-class bucket independently, and fix two misfiled keys by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/138
* docs(changelog): consolidate the 2.0.1 entry, reconciled against the diffs by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/139
* docs(changelog): say the committed cassette was re-redacted, not just the code fixed by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/140
* release: 2.0.1 — bump, seal the changelog, and bound every version floor (T-T1) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/141


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v2.0.0...v2.0.1
