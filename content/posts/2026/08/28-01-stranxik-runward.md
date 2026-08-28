---
title: runward gate
date: 2026-08-28 01:46:15 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.37.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Runward is an open-source delivery methodology that verifies engineering decisions behind AI-generated code. It ensures deterministic verification of architectural, security, and operational aspects during the software delivery lifecycle using plain code. Runward helps developers understand and ensure the correctness of their engineered systems after deployment.**
---


Version updated for **https://github.com/stranxik/runward** to version **v0.37.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Runward is an open-source delivery methodology that verifies engineering decisions behind AI-generated code. It ensures deterministic verification of architectural, security, and operational aspects during the software delivery lifecycle using plain code. Runward helps developers understand and ensure the correctness of their engineered systems after deployment.**

## What's Changed


### Every defect says what found it

Each of the register's entries now carries a `found-by` field from a closed vocabulary, guarded by
test and back-filled from headings and first-hand knowledge; two entries say `not-recorded` because
nobody wrote it down and guessing would be the fabrication the register exists to refuse. Read
across all 87 the mix is 59 adversarial-audit, 14 mutation-instruction, 4 while-reproducing,
3 declared, 2 existing-guard, 2 not-recorded, 1 ci-os-leg, 1 conformance-corpus, 1 measurement —
and the derivation, with three worked examples and the answer to "we already do code review", is
[what-found-them.md](docs/compliance/what-found-them.md). The header mix is recomputed from the
rows, never edited by hand.

The author now submits to the constraint the tool sells: the repository's own Stop hook runs
`node dist/cli.js check --strict` from the tree's build, and the only bypass appends to a
committed log.

### `compliance` instructed: 300 verdicts, re-measured to 289

The module entered the mutation perimeter with 300 surviving mutants and a ratchet that REFUSED
("never instructed"). A seven-agent fleet filed every one — each hole with a mission recipe that
was RUN, each equivalence with a sensitivity control, zero contention — and the whole net replayed
all 300: seven died against a leg (six smoke, one audit-corpus), six of which the instruction had
already filed defence-in-depth with the right leg named. One verdict was reclassed, which is the
argument for running the net rather than reasoning about it (ADR-0046 decision 3).

What the concentration taught: the module's only byte-for-byte guard renders `eu-ai-act`, pins the
OSCAL JSON and never the markdown, on a fresh mission whose gate is red — so nothing walked
`clean`, `implemented`, the prose depth, or a single byte of the three readiness drafts. The
instruction found the one-mutant reintroductions of RWD-2026-0058 (prose `implemented`) and
RWD-2026-0061 (two vocabularies for one fact) before any of them could ship.

After the fixes below changed three source lines, the tree was re-measured (8 CI chunks), the
predicted MISMATCH read exactly 1 new survivor and 12 orphan keys — three of them filed holes
retired by the new guards themselves — and the register is fresh again: 289 survivors, every one
filed, 557 across both modules.

### Fixed — two shipped defects the instruction surfaced

- **A Windows checkout reported zero agentic-risk coverage** (RWD-2026-0083). `compliance.ts` kept
  the pre-RWD-2026-0016 frontmatter delimiter while `rules.ts` and `conformance.ts` were fixed, and
  the constant is named `FRONTMATTER` in all three. Measured on a CRLF-rewritten corpus: `runward
  rules --json` reads 10/10 ASI categories, the pack writes 0/10 — same tree, same pass, exit 0.
  Invisible here because this repository's own `.gitattributes` pins every checkout to LF: the fix
  that made the project's measurements honest is what hid the defect from them. The guard compiles
  and runs every `FRONTMATTER` delimiter found in `src/lib` against a CRLF document, so a copy of
  the old pattern under a new name still fails.
- **One ADR status line, four readers, four spellings** (RWD-2026-0084). On `**Status** : accepted`
  — the space French typography requires — the pack printed `accepted` while the same run counted
  the decision not ratified, the ADR-0033 reopening watch skipped it, and a draft rejected with
  that spelling would have been resurrected against ADR-0038. All four readers now go through one
  exported `adrStatusLine` in `mission.ts`, and a recurrence guard asserts no other module in
  `src/lib` spells the pattern at all.

### The trust apparatus records its own defects

Three defects in the measurement layer itself, found the day the second module landed, filed per
the RWD-2026-0060 precedent (RWD-2026-0085..0087): the register generator hard-coded
`## Module: evidence` and filed 300 compliance survivors under the wrong module — the module is now
read off each verdict's stable key, one section per module; the key-shape guard split on the wrong
separator character, compared 1 to 1 and could not fail — pointed at the real `SEP` it failed at
once, for the second reason that its statement was also wrong; and the register test's heading
regex could not parse `(top level)`, so top-level rows were appended to the previous function.
None of the three ever put a false byte in a committed artifact, and the register now says so
with the same evidence discipline it applies to the product.

### The runtime answer, stated as product

`docs/positioning.md` gains the sibling of its release-stage section: runward's runtime product is
**a verification contract, not a process** — the attestation at delivery (ADR-0055 layers 1–5),
any policy engine verifying it at admission (the Kyverno reference, layer 6), the operator-wired
harness hooks in session (ADR-0039) — and the five ADR-0054 boundary crossings stated as a
buyer-facing guarantee rather than a roadmap gap. Nothing new is decided; the page that has the
charge assembles three ratified decisions into one answer.

### The register describes the tree again — and the instruction found three more things

The 2026-08-26 fixes added 148 lines to `evidence.ts`, and the CI ratchet came back MISMATCH with
**75 survivors the register did not carry**. A three-agent fleet instructed all of them in isolated
worktrees: **32 holes, 35 equivalents, 7 defence-in-depth, 1 display-only**, each hole carrying a
mission recipe that was RUN, each equivalence carrying a sensitivity control. The register is
regenerated at 268 survivors across 22 functions (164 hole, 69 equivalent, 26 display-only,
9 defence-in-depth) and the ratchet is green.

The brief carried a new rule, and it held: these survivors were measured on an idle CI runner, so a
local "killed" contradicting that is CONTENTION, not a finding. No agent reported one.

Three things the instruction found that the classification was not looking for:

- **RWD-2026-0082** — an ESCAPED parenthesis (`sand\(box`) was refused as a catastrophic group by
  yesterday's own fix. A false red on correct work, quiet because a balanced pair happens to reduce.
- **The two nets added this week were in NEITHER pass of the mutation harness**, so every mutant they
  catch was reported as surviving. `test/spelling-conformance.js` and `test/sarif-shape.js` join the
  whole net.
- **runward had no macOS leg**, so the two Unicode-folding cases of the ADR-0061 corpus — the ones
  covering RWD-2026-0031 and RWD-2026-0035 — were skipped on every runner the project used. ext4 is
  case-sensitive and NTFS does not fold the sharp s. A `macos-latest` leg now runs the corpus and the
  self-gate. The corpus surfaced this by NAMING its skips, which is what it was built to do.

And one worth recording without an entry: **RWD-2026-0070, the symlink seal, shipped with no test of
its own** — which is why eleven of its mutants survive, and why an agent could name the gap in a
sentence.

### The SARIF is held to the official schema (ADR-0062)

`test/fixtures/sarif_schema.v2.1.0.json` — the OASIS SARIF 2.1.0 schema, vendored offline with its
provenance and sha256 like the OSCAL and in-toto ones — now validates all four mission states.

It needed `ajv-draft-04` (the schema is draft-04; ajv 8 dropped it), which was left as an operator
decision on 2026-08-26 rather than taken silently. Taken now, and the reason is checkable: the
package comes from the same `ajv-validator` organisation as `ajv` and `ajv-formats`, **both already
dev dependencies here**, is dev-only, and was verified to DETECT before being adopted — a wrong
`version`, a missing `runs` and a `level` outside the enumeration are each refused. The structural
checks stay: a schema cannot say that a uri resolves in the checkout, and every uri of
RWD-2026-0041 was schema-valid.

### The spelling brick gets a specification (ADR-0061)

`test/fixtures/spelling-corpus.json` + `test/spelling-conformance.js`: twelve cases, each a triple of
pointer-as-written / layout-on-disk / expected verdict, each citing the defect it was learned from
(fourteen of them belong to this one brick). The harness probes the host filesystem, runs what
applies, and **names what it skipped and why** — ADR-0046's amendment was paid for by a measurement
that was a property of code AND filesystem while claiming to be a property of code.

The harness itself failed its first `windows-latest` run — a dynamic `import()` of a bare `C:\...`
path is read as the URL scheme `c:` — which is the right place for a corpus that claims to be the
portable artifact to be corrected.

- **RWD-2026-0081** — found on the corpus's FIRST run: the walk bound added the previous day was
  passed in the canonical namespace while the walked path is logical, so on macOS (`/var` →
  `/private/var`) it never engaged and the false red it closed was alive again. The verification that
  had accepted that fix used a path where the two namespaces coincide, so it could not have shown it.

### A vacuous green is disclosed, not refused (ADR-0060)

- **RWD-2026-0079** — a mission with no code returned exit 0, `clean`, and `100%` coverage while the
  honest example reads 87%. It stays green (ADR-0054 makes this a documentary gate) and the run now
  SAYS it: `evidenceFiles: {total, external}` is counted, disclosed in the pass, and carried in the
  ADR-0030 contract. The precedent followed is ISA 705's disclaimer of opinion, not pytest's exit 5.
- **RWD-2026-0080** — `verify` compared predicates through `JSON.stringify`, making key order
  load-bearing: an honest attestation with identical contents reported `differing: ["evidence"]`.
  Object keys are canonicalised now; arrays keep their order, where order is meaning.

### The boundary's own paperwork (2026-08-26 audit, tier 5)

- **RWD-2026-0075** — "same working tree, same verdict" omitted the installed runward version, which
  is a real second input by design. Measured: one rule added to the installed corpus flips an
  untouched mission from exit 0 to exit 1. Four documents now say the tree AND the version.
- **RWD-2026-0076** — two of ADR-0054's five crossings had no test, and one test proved crossing 5
  under crossing 3's name. Both gaps are closed, each guard with its own positive control.
- **RWD-2026-0077** — the boundary test called `--hooks` "outside computeVerdict"; `hookFailed` is an
  argument to it. The real mitigations are written down instead of implied, along with the closure's
  package-boundary limit.
- **RWD-2026-0078** — `--corpus @acme/rules@1.2.3` fell to a generic "path not found" because the
  guard's shape stopped at the second `@`, so the sentence explaining the boundary reached only
  someone who had already dropped the version.

### The runtime boundary, and the instrument that guarded it (2026-08-26 audit, tier 5)

- **RWD-2026-0073** — the ADR-0054 boundary test was blind on the path that owns the exit code. Four
  of five planted mutations left all four tests green, including a dynamic import — verbatim the
  reevaluation trigger ADR-0054 wrote for itself, already met when it was written. The boundary did
  not move; the instrument now walks a second, wider ring from `check.js` with exactly one
  enumerated crossing allowed. ADR-0054 carries the amendment and the measurement table.
- **RWD-2026-0074** — `chmod 0111` on the project's PARENT turned an unchanged tree from exit 0 into
  exit 1 with 21 pointers refused, each pointing the operator at a path outside their project. The
  case walk is now bounded to the project root.

Two more findings from the same report were **closed as side effects** of the morning's containment
work and verified: an empty `.git` above the project no longer greens out-of-tree evidence, and the
in-toto mission digest no longer changes when a file outside the project does.

### The machine surfaces (2026-08-26 audit, tier 5)

- **RWD-2026-0067** — `--json --sarif` emitted one document and silently dropped the other, by an
  undocumented precedence chain. Combined emission flags are now refused; a document-typed request
  with no mission writes nothing to stdout instead of a JSON that is not the document asked for.
- **RWD-2026-0068** — `--freeze --json` reported `seal: present false` on the pass that sealed.
- **RWD-2026-0069** — `SOURCE_DATE_EPOCH` reached only the VSA. It now reaches every clock runward
  writes; `interop.md` named the wrong set and the wrong variable, and now names both correctly.
- **RWD-2026-0070** — a cited symlink put its target in the seal and never itself, so re-pointing
  the link left `✓ seal intact` at exit 0. Link and target are both sealed now.
- **RWD-2026-0071** — `runward bundle ../outside.txt` bound a file outside the project into a
  document about that project. ADR-0019's containment now holds one envelope out.
- **RWD-2026-0072** — nothing checked the emitted SARIF. `test/sarif-shape.js` runs four mission
  states through every structural invariant a consumer relies on. It is **not** OASIS-schema
  validation and says so: that needs `ajv-draft-04`, a dependency decision left to the operator.

Two findings from the same report were **closed as side effects** and verified: `--through` +
`--sarif` no longer annotates deferred deliverables with an error level, and an empty `.git`
directory above the project no longer greens out-of-tree evidence (it now refuses with
*"resolves outside the project this mission audits"*).

### The caveat reaches the envelopes that leave the building (2026-08-26 audit, tier 4)

- **RWD-2026-0065** — the SLSA VSA and the bundle predicate were the only two emission surfaces
  without `GATE_NON_SCOPE`, and they are the two a policy engine ingests with no human in the loop.
  The VSA carries it in `policy.annotations`, inside the spec shape.
- **RWD-2026-0066** — the OSCAL mapping spec offered three implementation states, one of which
  cannot occur on a mission using the shipped corpus: all ten ASI categories are mapped, so
  `planned` never fires. The spec says so, and names when it would.

### The run says what actually failed (2026-08-26 audit, tier 4)

- **RWD-2026-0063** — a broken seal printed `1 floor rule-conformance gap(s)` and `Fill the
  deliverable(s) named above`, with none named and every one filled. The verdict now carries
  `strictBreakdown`; the summary names the class and the `Next` gesture matches it.
- **RWD-2026-0064** — the corpus-drift remedy prescribed `runward update` for all three cases.
  Measured: it clears *missing*, is a no-op for *edited* (only `--force` works), and clears
  *extra* not at all. Each line now carries the gesture measured to clear it.

### Two surfaces that disagreed with themselves (2026-08-26 audit, tier 4)

- **RWD-2026-0061** — `compliance` called a governance file *present* in the same pass where `check`
  called it a *raw template*. One used `existsSync`, the other `artifactState`. Same function now,
  and the same words.
- **RWD-2026-0062** — the README said *six phases, gated*; five are gated. Phase 4 carries no gate
  by decision (ADR-0033), and the README now carries the reason.

### The documents catch up with the code (2026-08-26 audit, tier 4)

- **RWD-2026-0058** — the OSCAL pack called a control `implemented` when its only evidence was a
  sentence, and the readiness document never used the word *prose*. Now `partial`, with a
  `runward-evidence-depth` prop naming which rules rest on a sentence.
- **RWD-2026-0059** — README and runward's own port contract claimed it *runs nothing of yours*, in
  a build where `check --hooks` runs your shell commands outside the audited repository. The code was
  precise the whole time; only the prose overstated. Guarded from the code, not from a list.
- **RWD-2026-0060** — the defect register had two duplicate identifiers and a header twelve days and
  three releases stale. Renumbered by first-assignment, with a redirect note, and guarded.

### `spec-check` reads the spec people write (2026-08-26 audit, tier 3)

- **RWD-2026-0054** — `spec-check` said *every criterion is linked* on six ordinary shapes: two
  acceptance sections, a `###` sub-heading inside one, criteria as a table, criteria as prose, an
  empty section, and a decoy heading above the real one. The pointer layer was repaired; the section
  walk was not, while the manifest parser beside it documents these exact shapes as fixed bugs.
- **RWD-2026-0055** — a pointer inside backticks, the way markdown is written, was refused with
  *symbol "login`" not found*. `clean()` now strips a trailing backtick.

### `test:` now means a test (2026-08-26 audit, tier 2)

- **RWD-2026-0053** — a prose deliverable declared as `test:…::of` returned exit 0 on an unsigned
  rule. A document is not a test. Checked on the extension only, because a name convention would
  refuse Rust `#[cfg(test)]` and Go table tests that live in source files.

Two low findings from the same audit closed as a side effect and verified: the coverage counter no
longer reaches 100% on self-citing `#of` pointers (it now reads 0 typed / 23 prose on that mission),
because the counter consults the same circularity rule the verdict does.

### Four missing nets (2026-08-26 audit, tier 2)

Detectors that could not see the one shape where the abuse is free. Each reproduced first, each
fixed with the opposite direction asserted, and each new test measured RED against the unfixed build.

- **RWD-2026-0049** — the seal covered no `adr:` target: 0 of 18 lock keys under `adr/`, so every
  ADR body could be replaced with filler under `✓ seal intact`.
- **RWD-2026-0050** — the duplicate-cell census read `applied` rows only, skipping the two columns
  where copying a cell costs nothing. `duplicated[].rules[]` now carries `status` (additive).
- **RWD-2026-0051** — the ReDoS screen accepted anything past 21 nesting levels, and was blind to
  `a*a*`: eight adjacent repetitions of one atom exceed 20 s on a 40-character subject. An exhausted
  screen now refuses instead of approving.
- **RWD-2026-0052** — the `n/a` reason floor counted keystrokes, so `xxxxxxxx` cleared it. Now a
  degeneracy floor, and **recorded as a limitation rather than closed**: the gate does not read prose.

### The gate's own false greens (2026-08-26 audit, tier 2)

Three ways a green line rested on nothing, all reproduced on the shipped 0.36.2 binary and on this
tree before being closed, each with a sensitivity control proving the fix is not a blanket refusal.

- **RWD-2026-0046** — circularity was tested on the pointer, not the target: dropping `file:` moved
  the rule's own file into a loop that banked it unexamined. Four states of one cell on a CRITICAL
  signed rule: prose → 1, unrelated file → 1, typed self-pointer → 1, **bare self-path → 0**.
- **RWD-2026-0047** — the signature was tested against the whole file, table included, so the row
  declaring a rule satisfied it. 7 of the 9 signed rules ship a signature their own slug matches,
  three CRITICAL. The signature now reads the text outside the manifest.
- **RWD-2026-0048** — `isRealAdr` was a filename test, so a zero-byte ADR read `✓ Decision journal`,
  `all gates passed`, `1 decision(s) traced` and `1 ratified ADR(s)`. Three definitions of "an ADR"
  existed across three layers; they now share one predicate and one threshold, and the compliance
  pack counts as *ratified* only what carries a ratified status.

`test/audit-corpus.js` gains the bare-path vector and reads 15/15 — it read 14/14 while that hole was
live, because it carried only the `file:` spelling of the same attack. A second candidate vector was
written and then REMOVED rather than shipped: it was refused by the unfixed build for an unrelated
reason, so it would have printed `ok` without testing what it names. Its proven detector is
`test/unit/gate-false-greens.test.js`, measured red on the unfixed build and green on the fixed one.

**The version string is part of the fix, not bookkeeping.** `runward verify` derives version skew from
`predicate.runward !== VERSION`, and this tree carries fifteen false-green fixes over the published
0.36.2 while stamping the same string — so no skew could ever be named between a build that has the
defects and one that fixes them, and a compliance pack stamped `0.36.2` may have been produced by
either. That was itself an audit finding.

### Fixed — the adoption path (`update --corpus`)
- **RWD-2026-0038** — vendoring an org corpus erased the lock record of every rule runward wrote,
  turning a green mission red on 31 rules it had scaffolded seconds earlier while reporting success.
- **RWD-2026-0039** — replacing a shipped rule from an org corpus was labelled with the word runward
  uses for its own refreshes, so a fork with one `signature:` line deleted flipped a red gate green
  in silence. It is now named `replaced` and counted as a warning.

### Fixed — the artifacts the gate hands to a machine
- **RWD-2026-0040** — a red gate emitted a SARIF byte-identical to a green one whenever the gap was
  the evidence seal, the rule corpus, an unratified decision or a failed hook.
- **RWD-2026-0041** — half of every SARIF used a mission-relative uri, so those annotations pointed
  at paths no checkout holds.
- **RWD-2026-0042** — `runward verify` re-derived two predicate fields of fifteen; everything a
  regulator would read was unbound free text.
- **RWD-2026-0043** — `verify` took its strictness from the untrusted predicate and never reported
  which gate it had re-derived.
- **RWD-2026-0044** — `--vsa` named `RUNWARD_GATE_STRICT` on a `FAILED` verification, in the one
  field the interop page tells a policy engine to branch on.
- **RWD-2026-0045** — the OSCAL pack was byte-identical between a green gate and one red on eighteen
  unresolvable pointers, and declared controls `implemented` from the manifest status column alone.

### Still open, recorded rather than fixed
The third adversarial audit produced 56 measured findings across five dimensions. Nine of the fifteen
high-severity ones are fixed here; the remainder are filed in
[known-defects.md](docs/compliance/known-defects.md) with their reproductions, and are not closed.


