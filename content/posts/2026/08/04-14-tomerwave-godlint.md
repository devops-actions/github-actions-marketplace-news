---
title: Run Godlint
date: 2026-08-04 14:50:40 +00:00
tags:
  - tomerwave
  - GitHub Actions
draft: false
repo: https://github.com/tomerwave/godlint
marketplace: https://github.com/marketplace/actions/run-godlint
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Godlint is an executable engineering tool that enforces deterministic policies across multiple programming languages, helping to maintain architecture, security boundaries, and engineering standards in collaborative development environments. It automates quality checks locally and in CI, ensuring that changes adhere to predefined rules and exceptions can be managed with accountability and expiration dates.
---


Version updated for **https://github.com/tomerwave/godlint** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-godlint) to find the latest changes.

## Action Summary

Godlint is an executable engineering tool that enforces deterministic policies across multiple programming languages, helping to maintain architecture, security boundaries, and engineering standards in collaborative development environments. It automates quality checks locally and in CI, ensuring that changes adhere to predefined rules and exceptions can be managed with accountability and expiration dates.

## What's Changed

### Added

- Rules take `only-in` and `allow-in`: the paths a rule applies to, and the exemptions inside them.
  `allow-in` existed on eleven of fifty rules, each implementing it itself, and `only-in` did not exist
  at all — so a rule that is inherently about one part of a tree could not say so. The only way to say
  "this rule does not belong here" was `exclude`, which drops a path for **every** rule at once: one
  misplaced rule cost you every other rule in that directory. This repository is the evidence, having
  excluded `scripts` and `packaging` wholesale to silence one rule, hiding 21 unrelated findings to do
  it. This change does not lift that exclusion, and it does remove the reason for it: every one of
  those rules can now be declared per path, so what keeps the two directories out of the scan is the
  21 findings underneath, each wanting its own change.

  The narrower setting decides, so `allow-in` carves exceptions out of `only-in`, and both empty means
  every file, which is what a rule naming no paths wants.

  It is one implementation rather than fifty because the check sits in `rules::report`, the single
  function that turns a violation into a finding. A rule cannot forget to honour its own scope, because
  no rule consults it. The eleven hand-written `allow-in` checks are gone, matching the same globs
  against the same path as before. `Rule::Configuration` now requires `Scoped`, so a new rule does not
  compile until its configuration can say where its rule applies — the property is held by the compiler
  rather than by a checklist.

  One rule needed more than that, and it is the interesting one. `ci/stale-action-refs` reports a
  contradiction *between* files: one commit labelled `# v3` in one workflow and `# v4` in another. Scope
  there has to gate what the rule *reads*, not only what it reports — otherwise excluding a workflow
  still produces a finding in the file that was not excluded, caused by the one that was. Its own test
  said so in its name, `allow_in_removes_a_workflow_from_reporting_and_repository_evidence`, and it
  failed the moment the central check replaced its own. A rule whose verdict depends on more than the
  file it reports in must scope its evidence. Review found the other half of that untested — evidence
  honouring `allow-in` while ignoring `only-in` passed all 881 tests — so the mirror case is pinned
  too — in both directions. Review then found a third shape: both scope tests assert that nothing is
  reported, so an evidence filter that *over*-drops was unpinned, and dropping every workflow the
  moment `only-in` is non-empty passed all 882 tests. That is the worse failure of the two, because
  `only-in` is the setting whose purpose is to point a rule *at* something. The fixture that already
  demands five findings now sets `only-in` as well, so those five expectations pin the positive
  direction and the same block pins the interaction — `allow-in` still carves `allowed.yml` out of an
  `only-in` that includes it. Its three-pattern list is load-bearing for a second reason found while
  reviewing it: it is the only multi-pattern `only-in` anywhere in the suite, so it is the only thing
  pinning that `only-in` matches as a disjunction over every pattern rather than checking the first.
  A fourth shape came out of the same review — no test had a non-empty `only-in`, a file outside it,
  *and* findings expected from the files inside, so narrowing that must still report was unpinned and
  a guard written at the wrong granularity silenced the rule whenever anything was out of scope. Two
  workflows in scope contradicting each other, one outside, now pin it. Four directions each for
  `only-in` and `allow-in`: reports inside, silent outside, the interaction between them, and the
  evidence path separately from the reporting path.

  One sharp edge, documented rather than fixed: `only-in` narrows, so a pattern matching nothing
  leaves a rule with nowhere to apply and it reports nothing, anywhere, without saying so. A typo in
  `exclude` or `allow-in` fails safe because a pattern matching nothing changes nothing; a typo here
  fails open. A misspelled key is still caught by validation, only a misspelled path is not.

### Changed

- `policy/unused-suppression` reports a directive that silences nothing whatever the reason, where it
  previously excused a rule set to `off`. Three things can make a directive dead — the finding was
  fixed, the rule is `off`, or the rule is scoped away from that path by `only-in` or `allow-in` — and
  the rule reported the first and third while treating the second as dormant. That split was not a
  policy, it was two answers to one question: `off` was excused deliberately so a gradual adoption
  would not turn the inactive parts of a policy into failures, and scope arrived later, took the
  opposite answer, and nobody reconciled them.

  Reported in all three now, because a dormant exemption and a dead one are indistinguishable from
  outside, and only one is harmless. A directive nobody is watching silences a real finding the day
  the severity or the scope changes, un-reviewed — the same reasoning that made a stale drift
  declaration fail rather than notice. The gradual-adoption cost is real and now written down in
  `docs/suppressions.md` along with the way to pay it: this rule takes a severity like any other, so
  `warning` covers a cleanup in progress.

  A fourth case belongs in that list and was missing from the first draft of this entry: a rule the
  configuration never mentions at all never runs, so a directive naming it is as dead as one for a
  rule set to `off`. Reported too, and tested.

- `policy/unused-suppression` cannot switch itself off. `severity: off` is now rejected as invalid
  configuration, and so are `only-in` and `allow-in` on that rule — scoping a rule to nothing is
  switching it off by another name, and `only-in`/`allow-in` reached every rule two releases ago,
  which quietly gave the one rule meant to be undefeatable two new ways to be defeated. A rule able
  to retire itself could retire every exemption it audits. `warning` is still accepted and is how to
  absorb a cleanup without failing the build.

  Scope of that claim, because a wider one would be false: it is the rule's own configuration that
  cannot retire it. A top-level `exclude` still drops a path from the scan for every rule including
  this one — Godlint's own `godlint.yaml` relies on it, and doing so hides 19 dead directives in the
  CLI fixture tree on purpose — and so does naming paths on the command line. And the check lives in
  configuration validation, which runs when the CLI loads a file, so a `godlint-core` consumer
  deserialising a `Config` directly is not bound by it. Making the shape unrepresentable rather than
  rejected is the version that would bind both, and is its own change.

  The message it prints changed with it, because the old one became false the moment the rule stopped
  requiring the target to be enabled: `Suppression does not silence an enabled finding; remove it or
  narrow the rule` said *enabled* when enablement is no longer the criterion, and offered *narrow the
  rule* as a remedy that does not exist when the rule is off everywhere. It now reads `Suppression
  silences nothing; remove it, or restore the rule it names to this path.` — a statement that is true
  in all four cases, and advice that does not tell a reader to delete a reviewed exemption they may
  want when the rule returns.

- A declaration in `.github/accepted-drift.md` that the released binary does not report fails the
  released-agreement check instead of printing a notice nobody reads. `docs/releasing.md` said the
  quiet part out loud — "deleting it is remembered rather than enforced" — and remembering is not a
  gate. What makes it worth failing is what a declaration is: it stands ready to accept disagreement
  in one named rule, so a line left behind after the drift it described is resolved will silently
  accept the *next* drift in that rule, which is the one case this check exists to catch. A stale
  declaration is not untidiness, it is an exemption nobody is watching. The pressure lands where the
  release process already expected it: the first pull request after a release either deletes the file
  or goes red naming each line to remove.

  Three things look like a stale declaration and are not, and calling any of them stale would have
  been worse than the notice it replaces, because the instruction is *delete the line*. Staleness
  reads "not among the rules the release reported", so it is only sound where that list is the whole
  list. It is not when the release could not read this repository's configuration — it reported
  nothing about any rule, so failing there would fail every pull request that adds a configuration
  key, for declarations that are perfectly good. It is not when a finding's rule id could not be
  parsed, because the unreadable one may *be* the declared rule. And it is not when the release
  claimed findings and the annotations hold none, which is no record rather than a record of nothing.
  None of the three is called stale. The configuration case reports its declarations *unexercised*
  and passes; the other two report them *not examined* and leave the run red on the findings they
  could not read, unless a drift label declares those, which is the escape a label has always been.
  A stale declaration also does not short-circuit the undeclared-finding report: a run with both
  says both,
  and names every stale line with its own kind rather than the first — the first attempt got the
  short-circuit wrong and the suite caught it, and review caught the rest.
- The drift gate reads the status the released binary exited with instead of matching a sentence in
  its output. It decided whether the release could read the configuration by grepping for
  `Configuration is invalid`, and the binary being grepped is a *past* release — so no test in this
  repository could hold that wording still, and rewording it in a later version would have silently
  reclassified an unreadable configuration as drift, the one failure the gate exists to prevent. It
  now reads the action's `status` output, which has to be fixed to exist at all for a run with
  findings (below), and when the status says the check did not finish it asks the release itself:
  `config validate` answers *can you read this configuration* with an exit status, and has since the
  first release, so every binary the gate can run understands the question. Two things follow beyond
  the plumbing. A release that cannot parse a file exits 2 having still reported what it did reach,
  and those partial findings were read as drift with a choice of labels offered; a verdict on part of
  a tree is not a verdict, so that now fails and says so. And the guidance the gate printed said
  adding a *rule* lands there, which stopped being true when a release started ignoring an unknown
  rule key with a notice — only a configuration key, a suite or a configuration version reaches it.
  A tree with no `godlint.yaml` at all is now reported rather than waved through: the release cannot
  read a file that is not there, so with no check for one a repository stating no policy read as a
  release too old to understand it, which is the same silent pass from the other direction.
  The step's own conclusion is still read, for the one question the status cannot answer: a step
  after the check failing leaves Godlint's own status honest while the action failed for its own
  reason. That the outcome is read at all was `ci/no-silenced-failure` reporting this repository's
  drift job the moment nothing did. `docs/ci.md` documents the `status` output, which existed
  undocumented, and what each status means.

- `validate-pull-request.py` asks for a changelog entry when any shipped source file changes, rather
  than when one of five hand-listed paths does. What the old list omitted decided the policy:
  `config/rules.rs` holds every default threshold, so **raising one — the most user-visible change
  this project can make — needed no entry at all**, and neither did `suites.rs`, which decides what a
  suite enables and at what severity. Exemptions are now named with a reason instead of inferred from
  a list of what someone remembered to include, and an entry that says nothing a user can observe
  changed is a valid entry, which is the sentence a refactor should be made to write. Those entries go
  under a new `### Internal` category that `check-release.py` leaves out of the release body, because
  the body is the section verbatim and reaches people who will never read this repository — so the log
  keeps the refactor and the announcement does not carry it. A file leaving `crates/*/src/` counts as
  a change to it: `git diff --name-only` resolves a rename to its destination, so moving a shipped
  module into `tests/` reported nothing at all until the diff was taken with `--no-renames`. The
  category names are constrained too, because the release body is name-sensitive: `### internal`
  would have shipped a refactor to users while looking right in the file.
- Suppression matching is grouped by file instead of comparing every finding with every suppression.
  `apply` scanned the whole suppression list for each finding and `policy/unused-suppression` scanned
  the whole finding list for each suppression, so the cost grew with the *product* of two
  repository-sized numbers — the only step in the pipeline that did — and nearly every comparison
  established that two unrelated files are not the same file. On 3,000 files carrying 2,000
  suppressions `godlint check` goes from 468ms to 339ms; doubling that corpus takes the pairwise path
  to 1,093ms and the grouped path to 616ms, so the gap widens as a repository grows. Grouping cannot
  change which suppression matches: `covers` already required the paths to be equal, and `Ord` on a
  path agrees with `==` on it, so the map admits and rejects exactly the pairs the scan did.
- Reading and parsing files runs on every core. The scan walked discovered files one at a time while
  read, parse and fact collection are independent per file and share nothing mutable — 85% of the run
  on one core. Chunks are merged in chunk order, so the facts arrive in the same order they did
  sequentially and the output does not depend on how the work was divided. Measured on a 2,104-file
  tree with ten cores: 1,244ms to 467ms, and eight consecutive runs are byte-identical. A tree of 32
  files or fewer stays sequential, and a second thread appears at 33 — measured at that boundary, the
  difference is inside the noise either way, because a run of that size is dominated by the 69ms it
  takes to start and read the configuration. The win is 2.66× on a large repository and nothing at all
  on a small one. Where a machine reports one core, `available_parallelism` returns 1 and the
  sequential path is taken.
- Deciding that a path is not excluded no longer allocates. `glob::segment_matches` built two
  `Vec<char>`s and a table per segment comparison before comparing anything, including for the
  literal patterns every `exclude:` list is made of — `target`, `node_modules`, `.venv`. Measured on
  a 2,104-file tree, `godlint check` goes from 1.61s to 1.50s, and the output is byte-identical over
  3,712 findings. Every rule's `allow-in` and `test-paths` matching takes the same path, so it is
  faster too. A pattern holding `*` or `?` still goes through the matcher unchanged.
- `validate-pull-request.py` refuses a changelog that names a release twice, lists a category twice,
  or holds an entry under no category. A conflict resolution that keeps both sides leaves a second
  `## [Unreleased]` behind; it renders, and it passed every other check, which is how two of them
  reached `main` in one night of rebases. The section they damaged is now one heading per category.
- `validate-pull-request.py` refuses a tracked file carrying a merge-conflict marker. `git rebase
  --continue` accepts a staged file whose conflict was never resolved, so a botched resolution lands
  as a commit that looks deliberate — which is exactly what happened while rebasing this branch, and
  all 1046 checks passed over a changelog full of `<<<<<<<`.
- `validate-pull-request.py` compares the mutation gate's scope with the tree rather than only with
  the mutation workflow's trigger paths. Twelve files in `godlint-core` — including the ones that
  decide which files are scanned, whether an `exclude` pattern matches, and whether a suppression
  has expired — generate no mutants at all, and nothing said so. Each is now named with the reason
  it is outside, a file that is neither examined nor named fails the check, and #245 carries the
  plan for bringing them in.
- `maintainability/cognitive-complexity` counts a Rust `let … else` as a branch, weighted by the
  nesting it sits at, the way every other branching form is counted. `decision-complexity` already
  counted it, so the two metrics disagreed about whether a refutable binding is a decision; a
  `let Some(value) = option else { return; }` now costs 1 at the top level and 3 inside an `if`.
  Nothing in this repository crosses the threshold of 15 as a result.
- Every function's metrics come from one walk of its syntax tree instead of five. Decision points,
  cognitive score, return paths, statement count and block depth each recursed the same subtree
  separately, re-reading every node's kind each time; on a 10,160-file tree that was 29% of the whole
  run, more than parsing. One traversal carries the nesting level, block depth and else position that
  the five walks each tracked alone. Measured on a 2,104-file tree, `godlint check` goes from 1.53s to
  1.27s, with identical output over 16,896 findings when every metric's limit is set to 1 so each
  function reports all five of its measured values — with the single deliberate exception below.

### Fixed

- The action's job summary appears when there are findings, which is the only time it was ever for.
  GitHub invokes a `shell: bash` step as `bash -e`, and a script's own `set -uo pipefail` cannot undo
  the `-e` it was invoked with, so the step ended at `godlint check | tee` the moment the check
  reported anything — before writing the findings count, before writing the status, and before the
  two steps after it, which a composite action skips once one fails. So `summary`, whose whole reason
  for existing is that GitHub renders only so many annotations and a first adoption produces
  hundreds, ran only against trees that had nothing to summarise, where it printed `No findings.`
  The `findings` and `status` outputs were empty for the same reason, and `docs/ci.md` explained that
  with the wrong cause — a composite action withholding its outputs when it fails, which measurably
  it does not — and a wrong explanation is why the real one went unexamined this long. Found by
  asserting in the `dirty` workflow job that the action fails *with findings*, where it had asserted
  only that it fails: an aborting step and findings failing a run look identical from outside, so the
  failure that job proved all along was the abort. Turning `-e` off covers the `tee` that writes the
  annotations as well, so its status is now checked rather than assumed — a half-written annotations
  file would otherwise have every count and every later step describing a shorter run than happened.
  The step now has a test that runs its own body, extracted from `action.yml` so the test cannot
  drift from the shipped step, under the shell GitHub uses. It was written after this step broke a
  second time in the same pull request, for the neighbouring reason: `PIPESTATUS` describes the last
  pipeline and an assignment is a command, so reading it on two lines read the second from the
  assignment. Both breakages were invisible from outside — the step failed, GitHub skipped the rest
  of the action, and the job failed the way findings fail. The test catches both, and catches
  `| tee "$output" || true`, the obvious fix that silently reports every run as status 0.
- A blank `helpers` or `test-paths` entry for `testing/no-test-helper-in-production` is rejected as
  invalid configuration. The two were broken differently: `helpers: [""]` matched the empty segments
  that splitting a Rust `::` path on one colon produced and reported `crate::tests::helper` with the
  message `names , which is test scaffolding`, while a blank `test-paths` entry matched nothing at all,
  so the option looked configured and did nothing. Every other list-valued option in the schema
  already refused a blank entry; these two were missed.
- Four decisions in the analysers had no test depending on them, which a full mutation sweep of
  `main` found: a Rust `use {std, core};` brace list must contribute no import, an ordinary `let`
  must not count as a branch where a `let … else` does, and `.tsx` must be parsed by the TSX grammar
  while `.ts` is parsed by the TypeScript one. That last pair reject each other's syntax in both
  directions — JSX under TypeScript and an angle-bracket type assertion under TSX — so swapping them
  broke nothing any test noticed until now.
- `validate-pull-request.py`'s change-scoped checks see the working tree, not only what is committed.
  They read `git diff <release line>...HEAD`, so a local run before the commit — which is most of them —
  found no changed files, skipped the checks, and printed that every check passed. Staged, unstaged and
  untracked paths all count now, and the changelog check consequently fails locally at the point the
  entry is missing rather than in CI.
- `ci/no-silenced-failure` reports `continue-on-error: True` and `TRUE`, not only the lowercase
  spelling. YAML's core schema calls all three true and GitHub honours each, so a capital letter
  silenced a step and the rule said nothing — a false negative in the one rule whose whole job is
  noticing a check that cannot fail. `yes`, `on` and a quoted `"true"` stay silent: they are not
  booleans in the core schema, and reporting them would rest on a guess about GitHub's coercion that
  cannot be checked without a network. Found by probing the built binary while reviewing the rule,
  not by reading it.
  plan for bringing them in. The walk covers every crate: `godlint-cli` was outside the gate in
  its entirety, including the module that decides the JSON, SARIF and annotation shapes three
  other gates parse.
- Two more gates in `validate-pull-request.py` stopped taking a proxy for the thing. The workflow
  toolchain check globbed `*.yml` while `source.rs` reads both `yaml` and `yml`, so a workflow named
  `.yaml` was scanned by Godlint and invisible to the gate; and "every mutation exclusion needs a
  reason" counted comment lines against exclusion lines, which passed one exclusion with a five-line
  essay beside four with none. Each exclusion is now paired with the line above it.
- The lists `recommended@1` enforces by default are pinned by tests. Nothing asserted them: every
  test passed its own markers, test paths and helpers, so deleting `XXX` from the marker defaults —
  which silently stops `policy/todo-requires-reference` asking for a reference on an `XXX:` comment
  in every repository using the suite — passed all 1,860 checks. This repository writes no comments
  in Rust, so its own dogfooding could not notice either. Found when a one-line pull request proposed
  exactly that change under a title claiming to add a marker.
- `maintainability/function-nesting` no longer charges a function for the blocks inside a closure it
  returns. A curried `a => b => { … }` reported the *outer* function's depth as the inner closure's,
  while `decision-complexity`, `cognitive-complexity`, `return-count` and `function-statements` all
  reported the outer function as empty — so one metric contradicted the other four and the rule
  reference, which says a closure's own complexity belongs to the closure. The inner closure still
  gets its own finding at its own depth. Found by review of the walk consolidation, which made the
  inconsistency visible; across 453,807 functions in a 26,404-file corpus this changes 127 functions
  in 51 files, all of them curried, and none in this repository.

