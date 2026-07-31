---
title: Run Godlint
date: 2026-07-31 14:36:23 +00:00
tags:
  - tomerwave
  - GitHub Actions
draft: false
repo: https://github.com/tomerwave/godlint
marketplace: https://github.com/marketplace/actions/run-godlint
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary**: Godlint is an executable engineering tool that automates coding standards and architecture checks for Rust, TypeScript, JavaScript, and Python repositories. It enforces a deterministic policy by running local and CI checks, ensuring consistent code quality across multiple languages. The action provides guardrails against architectural drift, centralizes configuration, and supports accountable exceptions with expiration dates.
---


Version updated for **https://github.com/tomerwave/godlint** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-godlint) to find the latest changes.

## Action Summary

**Summary**: Godlint is an executable engineering tool that automates coding standards and architecture checks for Rust, TypeScript, JavaScript, and Python repositories. It enforces a deterministic policy by running local and CI checks, ensuring consistent code quality across multiple languages. The action provides guardrails against architectural drift, centralizes configuration, and supports accountable exceptions with expiration dates.

## What's Changed

### Added

- `testing/no-empty-test` — reports a test whose body does nothing, so it cannot fail. It reads the
  test's own body rather than any function inside it, so a test that registers an empty callback is not
  itself empty, and a test with no body to read at all such as `it.todo('later')` is left to
  `no-skipped-test`.
- `testing/no-sleep-in-test` — reports a test that waits on the clock instead of on the condition,
  which is the usual reason a suite passes locally and fails in CI. Python `time.sleep` and
  `asyncio.sleep`, Rust `thread::sleep` and `tokio::time::sleep`, and the JavaScript runners' own
  waits, `page.waitForTimeout` and `browser.pause`, plus JavaScript's commonest test sleep, which is a
  *shape* rather than a name: a `setTimeout` or `setInterval` inside a `Promise` whose only call it is.
  That condition separates a sleep from a timeout guard, where the promise also waits on an event — and no
  other linter appears to catch the idiom, since Cypress, Playwright and `no-hard-wait` all match a
  framework's wait API by name. The call must fall inside a test, so a helper in
  the same file may still sleep — and so may a `pytest.fixture` or a `beforeEach`, which is the more
  tempting hiding place and needs a fixture fact to see. A sleep reached through an alias is not reported,
  because that takes import resolution; and a mocked sleep under
  `patch("time.sleep")` is reported although it is instant, for the same reason the alias escapes.

- `testing/no-network-in-unit-test` — reports a test calling an HTTP or socket client from a path the
  repository has declared as unit tests. Such a test is slow, fails when a service is down, and cannot
  run offline; it usually also means the seam that should have been injected was not. Which test is a
  unit test is a fact about the repository rather than about the file, so the rule reports nothing until
  `unit-paths` names them, and `allow-in` carves exemptions back out of those paths for a mocked client.
  Being silent until configured puts it in an established category rather than a new one: six rules
  already ship in the suite at error with an empty list. `recommended@1` enables it at error and it stays silent
  until then, because guessing is worse in both directions: Rust's own convention puts integration tests
  in `tests/`, where reaching the real service is the point, and a repository with no such split would
  see every test reported. The fixture directory is the worked example; this repository cannot name the
  rule in its own `godlint.yaml` until the next release, because the configuration schema rejects an
  unknown rule key and the released-agreement check runs the published binary against this tree.
- `testing/no-randomness-without-seed` — reports a test drawing from a general-purpose generator in a
  file that never seeds one. A failure there cannot be reproduced, so the report is not actionable. The
  catalogue is shared with `security/no-insecure-random`, because the same call is unpredictable to an
  attacker and unreproducible to a reader. Seeding is read per file rather than per call, since
  `random.seed(1)` and `random.sample(...)` are separate calls: any seeding call exempts the file. That
  under-reports rather than over-reports, and `allow-in` covers a property-based suite that draws from
  the standard library on purpose. Rust gets its own remedy, because `rand::random` and `rand::thread_rng`
  cannot be seeded: there the message asks for a seeded `StdRng`, and a file that builds one is exempt.
  `rand::rng` is covered, being what `thread_rng` became in rand 0.9, and numpy is covered on both sides —
  it previously knew `np.random.seed` without knowing `np.random.rand`.
- Rules can now ask about a call that falls inside a test. `CallInTestRule` reads the call facts of a
  file, keeps only those a test's range encloses, and hands the rule the whole file's facts beside the
  call, so a rule can also ask what else the file does. That is the shape shared by `no-sleep-in-test`,
  `no-randomness-without-seed` and `no-network-in-unit-test`.
- `testing/no-focused-test` — reports a test or suite marked to run on its own, `it.only` and
  `describe.only` and the other runners' `.only`. A focused test that passes proves almost nothing,
  because nothing else ran.
- `testing/no-skipped-test` — reports a test that does not run: `.skip` or `.todo` in JavaScript and
  TypeScript, `#[ignore]` beside `#[test]` in Rust in either order, and a `pytest.mark.skip` or
  `unittest.skip` decorator in Python. A skipped test rots without anything noticing, so the rule asks
  for it to be deleted, fixed, or suppressed with an owner and an expiry.
- `architecture/no-internal-import` — reports an import that reaches past a package's public surface,
  coupling you to something nobody promised to keep. It reads the import path and nothing else, so a
  marker counts only after the first segment: `some-lib/src/deep` is reported and `src/utils`, a path
  alias to your own code, is not; `package._private.helpers` is reported and `from __future__ import
  annotations` is not. A relative import is always silent, because your own internals are yours to reach
  into. Two tiers: `internal`, `private`, `impl` and a Python `_` prefix say the author did not mean this
  for you and report at error, while `dist`, `src` and `build` merely name build output that some
  packages publish as their documented entry, so they report at warning; a path naming both is certain.
  Rust is out of scope — module privacy there is enforced by the compiler, so a module you can import is
  one its author made public. Two segment shapes are exempt for reasons that are not conventions: a scoped
  package's name spans two segments, so `@scope/internal` may be the whole package, and a Python
  `__dunder__` is a language protocol rather than an author's decision, so `import package.__main__` is
  silent. `allow` exempts a module the project must reach into.
- `security/no-shell-command` — reports a command run through a shell, where any interpolated value
  becomes executable. The three languages put the defect in three different places, so the rule reads
  three signals. Python's callee is innocent and the argument is the finding, so the check is callee-blind — any call
  passing a truthy `shell=` reports, which is what sees `sp.run(...)` and `run(...)` after an aliased or
  `from` import without listing either — and `shell=False` is read rather than merely looked for. JavaScript's callee is the
  finding — `exec` shells out, `execFile` does not — but the common spelling destructures it, so a bare
  `exec` counts only where the file imports `child_process` by `import` or `require`; without that
  import the same name is a regular expression's `exec`, so `pattern.exec(reference)` is silent. Python's
  bare names are read the same way, so `from os import system` then `system(cmd)` is reported, gated on the
  file importing `os`, `commands` or `subprocess` — and in both languages a name the file **declares
  itself** is never the module's, so a local `def system(x)` or `function exec(p)` is silent. Rust's
  program is the finding, so `Command::new("sh")` is reported and `Command::new("git")` is not. A literal
  command with nothing interpolated is reported too: it is not injectable today, but the argument-array
  form is no harder to write, and reporting only interpolated strings would mean deciding what
  interpolation looks like inside an f-string. `allow-in` exempts a release script.
- `testing/no-test-helper-in-production` — reports a production file importing its own test tree. That
  ships test scaffolding to users and inverts the dependency, so production depends on the tests, and it
  breaks any build that excludes them. Only a **local** import counts — `./`, `../`, a bare `.`, or Rust's
  `crate::`/`super::` — which is what keeps `some-lib/tests/util` silent, since a third-party package's
  test tree is its own business and cannot be shipped by you. Segments match whole and
  case-insensitively, so `Tests/` counts and `testing-utils/` does not. A file that is itself a test is
  exempt, because a test using its own helpers is the arrangement being protected; `test-paths` decides
  that and defaults to the conventions of all four languages, and `helpers` names the scaffolding
  segments. Setting either replaces the default rather than adding to it.
- `testing/assertion-required` — reports a test that asserts nothing. Such a test verifies only that the
  code does not raise, so it passes when the behaviour is wrong, which is the failure a test exists to
  prevent. It reports at **warning** whatever severity is configured, including inside `recommended@1`,
  because whether a test asserts through a helper is not decidable without resolution. It reuses
  `Violation::cap()`, though not in the same shape as `security/no-weak-hash`, which caps one of its two
  violations and keeps the other sharp; this rule has one violation and caps it, because there is no
  subcase where it can prove a test asserts nothing. `fail-on: warning` still buys a hard gate, but a
  repository-wide one rather than a per-rule one. Three shapes that look
  assertion-free are silent: `pytest.raises` and `#[should_panic]`, because asserting that something
  raises is asserting; a `describe` or other suite, because it asserts through the tests inside it; and an
  empty test, which is `no-empty-test`'s finding. For the helper case, `extra-assertions` names the
  functions a repository asserts through, so it configures the rule rather than turning it off.
- Assertion facts. A rule can ask which calls in a file are assertions, what each is called, and how
  many operands it took. Which calls count is a framework question rather than a language one, so each
  language module answers it, and each answers a different shape: Python has assertion syntax, so
  `assert value == 1` is a statement no call fact would have seen; Rust's assertions are macros, matched
  against the six names exactly; JavaScript has neither, so the fact reads the callee for `expect` and
  the `assert` module, including the type assertions `expectTypeOf` and `assertType`, which a typed suite
  may use to the exclusion of every other kind. Rust's `#[should_panic]` is recorded too — the attribute is the assertion, and
  without it every `should_panic` test would look assertion-free — at the function's range rather than
  the attribute's, so it falls inside the test that owns it. The names are explicit sets rather than an
  `assert` prefix, because a prefix
  claims a domain helper called `assert_invariant`. `expect(value).toBe(1)` is one assertion, not two —
  the matcher is a second call on the same chain — but its *range* spans the whole chain, because the
  matcher is what the assertion checks and without it `expect(v).toBe(1)` and `expect(v).toBeGreaterThan(0)`
  are indistinguishable. An assertion also carries its own text, so
  `no-duplicate-assertion` can compare two of them. Whether an operand was the *message* is not
  recorded: that needs a per-name arity table for three ecosystems, and a wrong one would demand a
  message from Jest's `expect`, which has none. Three boundaries are deliberate: a path-qualified macro
  such as `static_assertions::assert_eq!` is not recorded, nor is `should`-style JavaScript, nor
  `raises(...)` reached through an aliased import. This unblocks `testing/assertion-required`,
  `no-conditional-test-logic`, `no-duplicate-assertion` and, with that table, `assertion-message-required`.
- Test facts. A rule can ask whether a declaration is a test, what its name is, which marker made it
  one, and whether that marker carried focus or skipping. What counts as a test is a framework
  question rather than a language one, so each language module answers it: Rust reads the attributes
  preceding a function, which stack, so `#[test]` and `#[ignore]` in either order describe the same
  test; Python reads a `test_` prefix or a `pytest.mark` decorator; JavaScript and TypeScript read a
  runner call and its member, so `it.only` and `describe.skip` carry focus in the name. The fact stops
  at syntax: a rule that wants to treat a path as a test directory combines the fact with a glob,
  because an analyzer sees no configuration. This unblocks `testing/no-focused-test`,
  `no-skipped-test`, `no-empty-test`, `no-sleep-in-test`, `no-randomness-without-seed` and
  `no-network-in-unit-test`, each of which asks about other facts falling inside a test's range.
  `no-conditional-test-logic` needs more than this fact and is not among them: the problem is an
  assertion reachable on only one path, and knowing what an assertion is takes a fact that does not
  exist yet.

