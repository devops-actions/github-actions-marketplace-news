---
title: pipeline-check
date: 2026-05-29 06:42:00 +00:00
tags:
  - dmartinochoa
  - GitHub Actions
draft: false
repo: https://github.com/dmartinochoa/pipeline-check
marketplace: https://github.com/marketplace/actions/pipeline-check
version: v1.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/dmartinochoa/pipeline-check** to version **v1.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-check) to find the latest changes.

## Action Summary

Pipeline-Check is a comprehensive security scanner designed to identify vulnerabilities and compliance issues across CI/CD pipelines, infrastructure-as-code configurations, container images, and cloud accounts. Supporting 32 providers and mapping findings to 18 compliance standards (including OWASP, SLSA, and NIST), it automates the detection of over 1,060 security risks, provides detailed risk assessments, and includes 111 autofixers for remediation. Its advanced capabilities include a taint analysis engine to detect complex multi-step vulnerabilities, enabling organizations to proactively secure their pipelines and ensure compliance with industry standards.

## What's Changed


### Added

- **Composer + RubyGems graduated from 8 to 10 rules each (4 new
  supply-chain detectors).**
  - **COMPOSER-009** flags ``auth.json`` committed alongside
    ``composer.json`` with literal credentials. Composer reads
    ``auth.json`` out of band for HTTP-basic / bearer / GitHub-OAuth
    / GitLab-OAuth / Bitbucket-OAuth tokens; its presence in git
    history is a credential leak. Placeholder values
    (``${COMPOSER_AUTH_TOKEN}`` / ``$ENV``) are ignored so a
    deliberately-templated auth.json doesn't false-positive. HIGH,
    13 standards mappings.
  - **COMPOSER-010** flags ``config.secure-http: false`` in
    ``composer.json``. Composer's default has been
    ``secure-http: true`` since 1.8; an explicit ``false`` is a
    project-wide HTTPS-enforcement downgrade that lets the
    resolver pull packages over plain HTTP from any source.
    Companion to COMPOSER-003 (per-URL HTTP detection).
    MEDIUM, 13 standards mappings.
  - **GEM-009** flags ``.bundle/config`` committed with embedded
    credentials. Detects literal-value entries under
    ``BUNDLE_GEMS__<HOST>`` / ``BUNDLE_GITHUB__COM`` /
    ``BUNDLE_*__USERNAME`` / ``BUNDLE_*__PASSWORD`` /
    ``BUNDLE_*__TOKEN`` keys. Placeholder values
    (``<%= ENV[...] %>`` / ``$ENV``) are ignored. HIGH, 13
    standards mappings.
  - **GEM-010** flags Gemfiles that use dynamic gem-list
    resolution (``Dir.glob`` / ``Dir[...]`` / ``eval(...)`` /
    ``instance_eval`` / ``require_relative`` / ``File.read``).
    The static-include helper ``eval_gemfile "<literal>"`` is
    explicitly allowed. Dynamic Gemfiles defeat every
    manifest-as-data audit (this rule pack, bundler-audit,
    dependabot). MEDIUM, 13 standards mappings.

  Lifts both providers' rule counts from 8 to 10, matching the
  gomod / cargo / pulumi MVP-graduates floor. README architecture
  block updated for both packs; comparison-table package-registries
  cell from ``91 rules across 8 providers`` to ``95 rules across 8
  providers``. Headline ``1060+ checks`` claim still in tolerance
  (catalog at 1072, tolerance window [1052, 1072]). 22 new unit
  tests, drift tests pass.

- **RubyGems / Bundler provider, 8 supply-chain rules.** New
  ``--pipeline rubygems`` / ``--rubygems-path`` parses ``Gemfile``
  (Bundler manifest, Ruby DSL) and probes for the sibling
  ``Gemfile.lock``. Text-only static analysis via a regex
  extractor over the canonical Bundler idioms (``source``, ``gem
  "name"``, scoped ``source … do … end`` blocks, ``group :dev``,
  option-hash forms with ``git:`` / ``github:`` / ``ref:`` /
  ``branch:`` / ``tag:`` / ``path:``), no ``bundle install``, no
  rubygems.org API access, no Ruby runtime required.
  Auto-detects ``./Gemfile`` at the working-directory root.
  Ships ``GEM-001..008``: missing Gemfile.lock, floating ``gem``
  constraint (covers no-version-at-all, ``~>``, ``>=``, ranges),
  plain-HTTP ``source``, source URL with embedded plaintext
  credentials, ``git:`` / ``github:`` source without a ``ref:``
  SHA pin (mutable branch / tag / default-HEAD), known-
  compromised gem version (curated registry seeded with
  rest-client 1.6.10-1.6.13 / strong_password 0.0.7, the two
  canonical RubyGems supply-chain incidents), multiple
  top-level sources without scoping (dependency-confusion
  vector), and ``gem … path: "..."`` declared outside ``group
  :development`` / ``:test``. Bumps the headline claim from
  ``1050+ checks across 31 providers`` to ``1060+ checks across
  32 providers`` and the comparison ``Package registries`` cell
  from ``83 rules across 7 providers`` to ``91 rules across 8
  providers``. 32 new unit tests, drift tests pass.

- **Composer (PHP) provider, 8 supply-chain rules.** New
  ``--pipeline composer`` / ``--composer-path`` parses
  ``composer.json`` (Composer manifest) and probes for the sibling
  ``composer.lock``. Mirrors the npm / PyPI / Maven / NuGet / Go
  modules / Cargo pack shape: text-only static analysis via the
  JSON stdlib parser, no ``composer install``, no Packagist
  access, no PHP runtime required. Auto-detects
  ``./composer.json`` at the working-directory root. Ships
  ``COMPOSER-001..008``: missing composer.lock, floating
  ``require`` constraint, plain-HTTP repository, repository URL
  with embedded plaintext credentials, ``minimum-stability``
  lowered to ``dev`` / ``alpha`` / ``beta`` / ``RC`` (widens
  every transitive constraint to dev-branch aliases), Composer
  ``scripts`` lifecycle hook piping a remote download into a
  shell, known-compromised package version (curated registry,
  seeded with the synthetic placeholder + a representative
  guzzlehttp/guzzle CVE entry), and ``config.allow-plugins:
  true`` (defeats Composer 2.2's plugin allowlist gate). Bumps
  the headline claim from ``1040+ checks across 30 providers``
  to ``1050+ checks across 31 providers`` and the comparison
  ``Package registries`` cell from ``75 rules across 6
  providers`` to ``83 rules across 7 providers``. 33 new unit
  tests, drift tests pass.

- **NPM-013, NUGET-010, OCI-009 (3 new package-ecosystem rules).**
  - **NPM-013** flags ``package.json`` ``files`` field entries
    that are broad wildcards (``*``, ``**``, ``**/*``, ``*/**``,
    ``.``, ``./``). Those publish the entire repo tree at
    ``npm publish`` time minus whatever ``.npmignore`` happens to
    block, the documented gap NPM-011's docstring already pointed
    at. HIGH severity, with 12 standards mappings.
  - **NUGET-010** flags ``NuGet.config`` storing a feed credential
    in plaintext via ``<packageSourceCredentials>`` /
    ``<add key="ClearTextPassword" .../>``. The parser captures
    presence only (no literal credential), so findings can't leak
    the value. HIGH severity, 13 standards mappings.
  - **OCI-009** flags image manifests missing OCI 1.1 base-image
    annotations ``org.opencontainers.image.base.name`` /
    ``base.digest`` (SLSA L3 base-image attribution gap;
    orthogonal to OCI-001's ``image.source`` / ``image.revision``).
    Honors the OCI-spec empty-string sentinel for ``scratch``
    images. MEDIUM severity, 13 standards mappings.

- **Inline explain mode (``--inline-explain``).** New terminal-output
  flag that injects each failing finding's ``exploit_example``
  (when one is recorded) directly under the existing
  Recommendation block, saving the
  ``pipeline_check --explain CHECK_ID`` round-trip when triaging
  in the terminal. No-op for JSON / SARIF / JUnit / markdown / HTML
  outputs, which already carry the field. The flag conflicts with
  the existing ``--explain CHECK_ID`` early-exit option, which is
  why it carries the ``inline-`` prefix. 5 new tests.

- **GitLab Code Quality output (``--output codequality``).** New output
  format emitting the Code Climate ``gl-code-quality-report`` JSON shape
  GitLab CI renders as inline MR annotations (the GitLab parallel of
  GitHub's SARIF code-scanning experience). Each failing finding becomes
  one entry per ``(check_id, location)`` pair, so an aggregate finding
  with N offending lines produces N inline annotations. Severity maps
  CRITICAL -> ``blocker``, HIGH -> ``critical``, MEDIUM -> ``major``,
  LOW -> ``minor``, INFO -> ``info``. ``fingerprint`` is a stable SHA-1
  over ``(check_id, path, line, description)`` so GitLab can dedupe
  identical findings across runs. Passing findings are skipped (the
  format has no "passed" concept). Zero new dependencies; 16 new tests.

- **Azure Cloud + GCP live cloud-posture providers (closes #163).** New
  ``--pipeline azure-cloud`` and ``--pipeline gcp`` providers reach AWS-
  shaped coverage. Phase 1 seeded each pack with 15 rules across
  identity, network, storage, compute, and logging; phase 2 expanded
  both to 50 rules. The providers shell out to ``az`` / ``gcloud`` for
  live inventory in the same pattern as the AWS provider's boto3 path.
  CIS Microsoft Azure Foundations Benchmark and CIS Google Cloud
  Foundations Benchmark are wired up as standards mappings. Provider
  rule counts: AZ 0 -> 50, GCP 0 -> 50.

- **Secret verifier expansion (phase 2).** Twelve new live-verification
  probes for ``--verify-secrets``: DigitalOcean (``/v2/account``),
  Netlify (``/api/v1/user``), Terraform Cloud (``/api/v2/account/details``),
  Linear (GraphQL ``viewer``), Atlassian (``/me``), Asana
  (``/api/1.0/users/me``), New Relic (NerdGraph ``actor``), Telegram Bot
  (``/getMe``), Replicate (``/v1/account``), Cohere (``/v2/models``),
  Mailchimp (datacenter extracted from key suffix, Basic auth),
  and Square (``/v2/locations``). All probes are read-only, rate-limited,
  and identity-extracting where the API supports it. Verifier count
  13 -> 25. 26 new tests.

- **Secrets-in-CI-logs detection (cross-provider).** Four new rules
  detecting ``echo`` / ``printf`` / ``cat`` of secret-named variables,
  ``printenv`` / ``env`` environment dumps, and ``set -x`` shell trace
  with secret-bound variables in scope: GL-036 (GitLab CI), BB-032
  (Bitbucket Pipelines), ADO-031 (Azure DevOps), CC-032 (CircleCI).
  Shared detection logic extracted to ``_primitives/log_leak.py``.
  Extends the GHA-033 pattern (GitHub Actions, already shipped) to
  every CI provider that supports inline scripts. Standards mappings
  across all 10 frameworks.
- **AI agent pipeline risk rules.** Two new rules expanding the
  GHA-058 agentic-CLI category. GHA-103 (CRITICAL) detects AI
  code-review bots (CodeRabbit, CodiumAI PR-Agent, Sourcery, Codeball,
  GitHub Copilot) running on ``pull_request_target`` or ``issue_comment``
  triggers with write permissions and no ``environment:`` gate, the
  attack vector demonstrated by the HackerBot-Claw campaign (February
  2026). GHA-104 (HIGH) detects workflows where an agentic CLI
  generates code and pushes commits directly (via ``git push`` or
  auto-commit actions like ``stefanzweifel/git-auto-commit-action``,
  ``EndBug/add-and-commit``) without routing through a pull request
  review cycle. Both rules pass when an ``environment:`` gate is
  present. GHA rule count 93 -> 95.
- **Gitea / Forgejo Actions provider.** ``--pipeline gitea`` reuses the
  full GHA rule pack against ``.gitea/workflows/`` and
  ``.forgejo/workflows/`` YAML files. Auto-detected when either
  directory is present. Rules fire under their original ``GHA-NNN`` IDs
  since Gitea Actions uses the same runner and syntax. GitHub-specific
  reputation rules (GHA-041..043, GHA-089..091, GHA-096) pass silently
  when ``--resolve-remote`` metadata is absent. Provider count
  26 -> 27.
- **History dashboard enhancements (closes #160).** The
  ``pipeline_check history`` dashboard gains three features: per-rule
  burn-down sparklines in the top-N firing rules table (inline SVG
  trend lines showing each rule's count across snapshots), a
  resource-level heatmap section showing which file paths consistently
  fail, and fleet directory integration so the history loader can read
  a fleet ``--output-dir`` directly (recursive ``**/findings.json``
  discovery with deduplication). 9 new tests.

### Changed

- **``exploit_example`` backfill on every CRITICAL and HIGH rule.**
  All 13 CRITICAL rules and all 36 HIGH rules now carry a concrete
  ``exploit_example`` paired with their existing recommendation
  prose. New rules at those severities ship one from the start;
  MEDIUM / LOW remain opportunistic. ``pipeline_check explain
  <RULE>`` surfaces the example inline when present.
- **Scorecard fixture exemption documented** in ``CONTRIBUTING.md``.
  The Scorecard workflow's SARIF filter that strips ``tests/`` and
  ``bench/`` results was already in place; the contributing guide now
  explains the pattern so future fixture authors know no manual
  exemption is needed.

### Fixed

- **Full-feature bug-review sweep (high + medium severity).** Nine
  fixes from a review of the engine and feature surface:
  1. **Remote-resolve SSRF via HTTP redirect (high).** The GitLab
     ``include: { remote: }`` fetcher and the GitHub raw fetcher
     rejected non-``https://`` URLs on the first hop but followed 3xx
     redirects to any scheme, so an ``https`` include could redirect to
     ``http://169.254.169.254/...`` or another internal host. Both now
     fetch through a shared ``HTTPSOnlyRedirectHandler`` opener
     (``_primitives/safe_http.py``) that refuses any redirect to a
     non-https target.
  2. **PyPI secret verifier promoted dead tokens.** A GET to
     ``upload.pypi.org/legacy/`` returns ``405`` regardless of the
     credential, but the verifier read ``405`` as VERIFIED, promoting
     any PyPI-shaped string to CRITICAL. It now reports UNKNOWN.
  3. **Google API-key verifier promoted invalid keys.** A
     ``400 INVALID_ARGUMENT`` (returned for an invalid key) was mapped
     to VERIFIED. The verifier now reserves VERIFIED for a ``200`` and
     classifies the invalid-key error as UNVERIFIED.
  4. **OSV cached truncated responses as clean.** A batch response with
     fewer result entries than queries left the unpaired packages
     looking advisory-free and cached them as clean for the TTL,
     suppressing real advisories. A length mismatch is now treated as a
     batch error (warned, not cached).
  5. **GitLab include cache key ignored the host.** The on-disk cache
     keyed on ``project:file@ref`` with no GitLab host, so the same
     project path on two ``--gitlab-url`` instances collided. The key
     is now host-scoped.
  6. **Cross-repo chains dropped reverse-direction pairs.** All four
     CXPC matchers deduped on an unordered ``(min, max)`` repo key, so
     ``X->Y`` and ``Y->X`` collapsed into one when both repos satisfied
     both legs. The key is now the ordered ``(repo_a, repo_b)`` pair.
  7. **Terminal reporter leaked Rich markup.** Finding and chain
     ``title`` / ``resource`` / ``description`` / ``recommendation`` /
     ``cwe`` / narrative fields were interpolated into Rich tables and
     panels without escaping (only ``exploit_example`` was escaped), so
     bracketed content was parsed as style markup and stripped. All
     user content now passes through ``rich.markup.escape``.
  8. **Autofix ``--apply`` flipped line endings on Windows.** Files
     were read with universal newlines and rewritten in text mode,
     converting a pure-LF file to CRLF on Windows. The apply path now
     reads and writes with ``newline=""`` and re-applies the detected
     ending, so only patched lines change.
  9. **Docker / package-install flag fixers reclassified unsafe.**
     ``_strip_docker_flags`` (GHA-017 family) and ``_strip_pkg_flags``
     (GHA-018 family) are whole-file strips that can remove a benign
     flag on a command other than the flagged one, changing job
     runtime. They are now ``safety="unsafe"`` so they only run under
     ``--fix=unsafe``.
  Also: ``history --dir`` pointed at a fleet ``--output-dir`` ingested
  the ``fleet.json`` aggregate as a bogus score-0 snapshot; non
  scan-output JSON (no ``score``/``findings``) is now skipped with a
  warning.
- **Code-review sweep on the post-v1.5 cycle.** Fifteen findings from
  a high-effort review of the GitLab Code Quality reporter,
  ``--inline-explain`` feature, docs-site fix, and action.yml
  packaging:
  1. **Rich markup leak in ``--inline-explain``.** Exploit examples
     contain literal ``[...]`` tokens (YAML lists, Terraform list
     refs, K8s capabilities); the Rich Panel parsed them as style
     markup and silently stripped 59 rules' bracketed segments.
     Escape the body through ``rich.markup.escape`` before
     interpolation, rename the label to ``Proof of exploit`` so it
     matches the ``--explain`` and HTML report surfaces, and pin
     the behavior with a regression test that walks bracketed
     fragments through the renderer.
  2. **Misleading ``--inline-explain`` help text.** The flag claimed
     SARIF, JUnit, and markdown outputs "already carry the field"
     when only JSON and HTML do. Rewrite the help text to name the
     surfaces that actually surface ``exploit_example`` and the
     ones that don't.
  3. **``action.yml`` ``output-file`` default ignored the chosen
     format.** A consumer setting ``output: codequality`` without
     overriding the filename got the JSON written to
     ``pipeline-check.sarif``, invisible to GitLab's
     ``artifacts.reports.codequality:`` slot. The composite action
     now derives a per-format default (``gl-code-quality-report.json``
     for codequality, ``pipeline-check.json`` for JSON,
     ``pipeline-check.xml`` for JUnit, etc.) when the input is
     blank, and ``upload-sarif`` reads the resolved path from the
     run step's output rather than the raw input.
  4. **Code Quality paths not normalized to forward slashes.** A
     Windows-hosted GitLab Runner emitted backslash paths GitLab
     couldn't match against the MR diff. Normalize before
     serializing, matching the SARIF reporter's convention. Pinned
     by tests covering both ``Location.path`` and the
     ``Finding.resource`` fallback path.
  5. **Code Quality fingerprint included description.** Description
     text drifts between releases (and per-run with flags like
     ``--verify-secrets-show-identity``), so the SHA-1 flipped and
     GitLab treated previously-dismissed MR threads as brand-new.
     Drop ``description`` from ``_fingerprint``; identity is now
     ``(check_id, normalized_path, line)`` only. Added regression
     tests covering description-drift and cross-OS-path stability.
  6. **Empty ``location.path`` in Code Quality output.** Findings
     with no structured location and an empty ``resource`` emitted
     ``"path": ""`` which the Code Climate schema rejects. Fall
     back to an ``"unknown"`` sentinel so the issue still surfaces.
  7. **``hashlib.sha1`` without ``usedforsecurity=False``.**
     Crashed on FIPS-mode hosts; trips Bandit B324. Added the
     kwarg.
  8. **``_SEVERITY_MAP`` silent fallback.** A future ``Severity``
     enum addition would silently downgrade to ``info`` via the
     dict-get default. New test asserts
     ``set(_SEVERITY_MAP) == set(Severity)``.
  9. **``.md-typeset table:not([class])`` selector fragility.** The
     ``is-visible`` → ``data-revealed`` rename treated only today's
     trigger; any future feature adding a class to a ``<table>``
     would have re-broken the same 13 rules. Replaced all 13
     selectors with ``table:not(.highlighttable)`` so the only
     opt-out is the known Pygments line-numbered case.
  10. **Eight hand-wired write-or-stdout branches in ``cli.py``.**
      Extract a single ``_emit_report(text, output_file, label,
      *, quiet)`` helper and route SARIF / JUnit / markdown /
      codequality / cyclonedx / threatmodel / JSON through it.
      Adding the next format is now one ``_emit_report(...)`` call
      instead of 11 lines of copy-paste. HTML keeps its own write
      path because the reporter bundles assets inside.
  11. **``--inline-explain`` only honored by the terminal reporter.**
      The flag's natural shape is a per-``Finding`` decision so
      SARIF, JUnit, markdown, and codequality could honor it too.
      Added a ROADMAP entry and a ``TODO(altitude)`` comment in
      ``reporter.py`` flagging the lift. Help-text fix in #2 makes
      the current carve-outs explicit in the interim.
  12. **No pre-commit hook running the drift suites.** Recurring
      ``fix(ci): ...`` commits (typing-extensions pin, codequality
      import sort + doc drift) all came from drift tests that
      passed locally but failed post-merge. Added
      ``.pre-commit-config.yaml`` with ruff on commit and the four
      drift suites (test_cli_docs_drift, test_doc_claims,
      test_english_variant, test_rule_framework) on pre-push.
      ``CONTRIBUTING.md`` documents ``pre-commit install --hook-
      type pre-push``. This is distinct from the existing
      ``.pre-commit-hooks.yaml`` which defines consumer-facing
      hooks for downstream users.
  13. **Divergent labels for ``exploit_example``.** ``explain.py``
      and the HTML reporter rendered ``Proof of exploit``; the new
      ``--inline-explain`` block used ``Exploit:``. Aligned all
      three on the canonical label.
  14. **Layout thrash in ``autoTagInnerPage``.** Interleaved
      ``getBoundingClientRect`` reads with ``setAttribute`` writes
      forced a layout reflow per iteration on long pages. Split
      into a pure-read pass that collects pending elements and a
      pure-write pass that applies the attributes.
  15. **Redundant ``sort_keys=False`` and ``default=False``
      kwargs.** Pure noise (both restate stdlib / Click defaults).
      Dropped from ``codequality_reporter`` and the ``--inline-
      explain`` Click option.

- **Doc-site tables lose their outline after instant-nav revisit.**
  The scroll-reveal animation in ``docs/javascripts/animations.js``
  tagged ``.md-typeset table:not([class])`` elements with
  ``data-reveal`` and, on intersection, added an ``is-visible`` class.
  The added class caused the 13 table-style rules in
  ``docs/stylesheets/extra.css`` keyed on ``table:not([class])``
  (border, border-radius, ``overflow:hidden``, padding, hover
  striping) to stop matching, so revealed tables rendered without
  their outline. The asymmetry between cold load and revisit came
  from Material's ``navigation.instant``: on a fresh navigation the
  chrome wasn't laid out when ``getBoundingClientRect()`` ran, so
  tables read under the 600px cutoff and never got tagged; on
  revisit positions measured correctly and the bug bit. Switched
  the reveal marker from ``.is-visible`` (class) to ``data-revealed``
  (attribute) across both files, so the marker no longer disturbs
  ``:not([class])`` selectors.


