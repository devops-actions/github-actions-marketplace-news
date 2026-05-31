---
title: pipeline-check
date: 2026-05-31 06:33:31 +00:00
tags:
  - dmartinochoa
  - GitHub Actions
draft: false
repo: https://github.com/dmartinochoa/pipeline-check
marketplace: https://github.com/marketplace/actions/pipeline-check
version: v1.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/dmartinochoa/pipeline-check** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-check) to find the latest changes.

## Action Summary

Pipeline-Check is a comprehensive security scanning tool designed to identify and address vulnerabilities in CI/CD pipelines across popular platforms like GitHub Actions, GitLab CI, Jenkins, and more, as well as infrastructure tools like Terraform, Kubernetes, and Docker. It automates the detection of security risks by performing over 1,100 checks mapped to 18 compliance standards, including OWASP, NIST, and PCI DSS, and provides severity scoring, autofixes, and correlation of findings to attack chains. This action helps organizations proactively secure their pipelines, improve compliance, and prevent multi-step or cross-job security threats.

## What's Changed


### Added

- **PyPI behavioral-trust signals (PYPI-019, PYPI-020, LOW).** The PyPI
  parallels of NPM-015 / NPM-016, both ``--resolve-remote``-gated and
  scoped to direct dependencies. PYPI-019 flags a direct dependency
  whose latest release ships no PEP 740 provenance attestation (from
  the PyPI JSON API's per-file ``provenance`` field). PYPI-020 resolves
  the dependency's GitHub repo from ``info.project_urls`` and queries
  the OpenSSF Scorecard API (reusing ``_primitives/scorecard``),
  flagging upstreams below 5/10 or failing Dangerous-Workflow. The
  single-publisher analog (NPM-014) is not shipped: PyPI exposes no
  reliable maintainer-account-list API. pypi 17 -> 19.
- **CI Go-module-verification rules (GHA-110, GL-037, CC-033, HIGH).**
  A shared primitive (``_primitives/go_insecure_env.py``) plus three
  per-provider rules flag a CI pipeline that disables Go module
  integrity verification via env / variables / inline ``export``:
  ``GOFLAGS=-insecure``, ``GOSUMDB=off``, ``GONOSUMCHECK``, any
  ``GOINSECURE``, or a broad ``GOPRIVATE`` / ``GONOSUMDB`` glob (the
  env-var twin of GOMOD-001; ``GOPROXY=off`` / ``direct`` and scoped
  ``GOPRIVATE`` are not flagged). GHA-110 walks workflow / job / step
  ``env:`` + ``run:``; GL-037 walks global + job ``variables:`` +
  scripts; CC-033 walks job + run-step ``environment:`` + run commands.
  github 100 -> 101, gitlab 38 -> 39, circleci 32 -> 33.
- **Weak-coverage provider deepening: deferred fourth picks.** Five
  rules across four providers. nuget: NUGET-017 (public gallery active
  alongside a private feed, not disabled in
  ``<disabledPackageSources>``, HIGH); 18 -> 19. cargo: CARGO-014 (no
  committed cargo-deny / cargo-vet / cargo-audit gate, LOW); 13 -> 14.
  pulumi: PULUMI-014 (ESC ``environment:`` import without a
  project / org qualifier, MEDIUM); 13 -> 14. argocd: ARGOCD-016 (Helm
  ``valueFiles`` from a remote URL, HIGH), ARGOCD-018 (custom resource
  health / action Lua in ``argocd-cm``, MEDIUM); 16 -> 18. The cargo
  loader gained a probe for committed audit-gate config files. All five
  mapped across the standards registries and the provider / standards
  docs regenerated.
- **Weak-coverage provider deepening: cargo, helm.** Six rules closing
  the two packs that needed a loader extension. cargo: CARGO-011
  (``build.rs`` compile-time network / process / ``include!``, HIGH),
  CARGO-012 (``.cargo/config.toml`` source ``replace-with`` or
  linker ``rustflags``, HIGH), CARGO-013 (``Cargo.lock`` package
  resolved off crates.io, MEDIUM); 10 -> 13. helm: HELM-015 (``oci://``
  dependency pinned only by a mutable tag, HIGH), HELM-016 (default
  secret in ``values.yaml``, HIGH), HELM-017 (``tpl`` of an untrusted
  ``.Values`` value, chart SSTI, HIGH); 14 -> 17. The cargo loader now
  reads ``build.rs`` / ``.cargo/config.toml`` / the ``Cargo.lock``
  body; the helm ``Chart`` now carries the parsed ``values.yaml`` and
  ``templates/`` texts. All six mapped across the standards registries
  and the provider / standards docs regenerated.
- **Weak-coverage provider deepening: gomod, rubygems, maven.** Nine
  rules continuing the coverage-pass deepening, the three packs that
  needed no new base-loader reads. gomod: GOMOD-011 (`tool` directive
  pulls a build-time executable, MEDIUM), GOMOD-012 (`require` /
  `replace` targets a bare-IP / explicit-port host, HIGH); 10 -> 12.
  rubygems: GEM-011 (Bundler `plugin` runs at install time, HIGH),
  GEM-012 (per-gem `:source` override, MEDIUM), GEM-013 (git gem over
  `git://` / `http://`, HIGH); 10 -> 13. maven: MVN-015 (command-running
  plugin bound to the build lifecycle, build-time RCE that survives a
  version pin, HIGH), MVN-016 (`build.gradle` `allowInsecureProtocol =
  true`, HIGH), MVN-017 (`<server>` with a `<privateKey>` + plaintext
  `<passphrase>`, HIGH), MVN-018 (`distributionManagement` release repo
  accepts `-SNAPSHOT` artifacts, MEDIUM); 14 -> 18. All nine mapped
  across the standards registries and the provider / standards docs
  regenerated.
- **NuGet dependency-confusion and build-execution batch (NUGET-016 /
  NUGET-018 / NUGET-019, HIGH).** NUGET-016 flags a `NuGet.config` that
  adds a private feed without a `<clear/>`, so `nuget.org` is still
  inherited and a public package can shadow an internal name (the Birsan
  dependency-confusion class NUGET-007 structurally misses when only the
  internal feed is listed). NUGET-018 flags build-time MSBuild execution
  (an `<Exec>` wired to a build / restore phase, or an `<Import>` of a
  package's generated `build/` path). NUGET-019 is the NUGET-012
  follow-up: `signatureValidationMode=require` with an empty or absent
  `<trustedSigners>` is a no-op. All three reuse NUGET-012's re-parse
  pattern. nuget rule count 15 -> 18.
- **Weak-coverage provider deepening: composer, pulumi, argocd, pypi.**
  Fourteen rules closing supply-chain gaps the roadmap's coverage pass
  flagged. composer: COMPOSER-011 (external VCS repository re-points a
  package), COMPOSER-012 (disables Packagist / marks a custom repo
  canonical), COMPOSER-013 (`config.disable-tls`), COMPOSER-014
  (`minimum-stability` lowered without `prefer-stable`); 10 -> 14.
  pulumi: PULUMI-011 (plugin from a custom download server), PULUMI-012
  (plugin version unpinned), PULUMI-013 (dynamic provider runs code at
  deploy time); 10 -> 13. argocd: ARGOCD-014 (web terminal /
  `exec.enabled`, CRITICAL), ARGOCD-015 (Kustomize `--enable-helm`),
  ARGOCD-017 (in-cluster Application from a mutable source); 13 -> 16.
  pypi: PYPI-015 (direct artifact URL), PYPI-016 (primary `--index-url`
  repointed off PyPI), PYPI-017 (remote `--find-links`), PYPI-018
  (`--no-binary` forces the sdist build path); 13 -> 17.
- **NPM-014: direct dependency relies on a single npm publisher (LOW).**
  Flags a direct dependency whose npm `maintainers` array (the accounts
  with publish access) has exactly one entry, the single-point-of-
  compromise / account-takeover blast radius behind the axios, chalk,
  and lodash class of supply-chain incidents. Network-dependent: reads
  the publisher list from the same `registry.npmjs.org` packument the
  NPM-008 cooldown gate already fetches under `--resolve-remote`, so it
  adds no extra requests, and passes silently when resolution is off.
  Scoped to direct deps; LOW severity by design (a single publisher is
  ubiquitous, so it stays below the default `--fail-on` gate while still
  surfacing in a report). npm rule count 13 -> 14. Inspired by a review
  of `proof-of-commitment` / getcommit.dev. 16 tests.
- **NPM-015 / NPM-016: provenance gap + OpenSSF Scorecard (LOW).** The
  other two behavioral supply-chain signals from the
  `proof-of-commitment` review. NPM-015 flags a direct dependency whose
  latest version ships no build-provenance attestation
  (`dist.attestations`), so it can't be cryptographically traced to its
  source commit and CI build, the guarantee this project ships on its
  own wheel (SLSA / PEP 740). NPM-016 resolves each direct dependency's
  GitHub repo from its packument and queries the OpenSSF Scorecard API
  (`api.securityscorecards.dev`), flagging upstreams that score below
  5/10 or fail the Dangerous-Workflow check. Both reuse the packument
  the cooldown/single-publisher passes already cache (NPM-016 adds one
  external API per linked repo), are `--resolve-remote`-gated, scoped to
  direct deps, LOW severity (posture signals below the default
  `--fail-on` gate), and mapped to OWASP, ESF, NIST 800-53, NIST CSF 2,
  SOC 2, and PCI DSS. npm rule count 14 -> 16. 35 tests.
- **GHA-107 / GHA-108: runtime egress control for sensitive workflows
  (MEDIUM / LOW).** GHA-107 flags a `step-security/harden-runner` step
  left in `egress-policy: audit` (also the default when the input is
  omitted), which records outbound traffic but blocks nothing, so the
  exfiltration path the agent exists to close stays open. GHA-108 is an
  advisory rule: a workflow that mints an OIDC token (`id-token: write`)
  or gates a job on a deployment `environment:` but runs no
  egress-control agent at all has credentials worth stealing and no
  runtime defense-in-depth against a compromised dependency or action
  shipping them off the runner. Both map to CICD-SEC-7 / CICD-SEC-10,
  ESF-D-BUILD-ENV, and CWE-693, and are wired across the standards
  packs. GHA rule count 97 -> 99.
- **GHA-109: harden-runner is not the first step (LOW).** Completes the
  harden-runner pack. Fires when a job uses `step-security/harden-runner`
  but at least one step (a `checkout`, a `run:`, a setup action) runs
  before it, so that earlier step's outbound traffic is neither recorded
  nor filtered, harden-runner only covers what happens after it starts.
  Passes when it's the first step or the job doesn't use it. LOW
  severity (the common shape, a checkout placed first, is a small gap
  with a one-line fix). CICD-SEC-7 / CICD-SEC-10, ESF-D-BUILD-ENV,
  CWE-696. GHA rule count 99 -> 100.
- **AC-035: AI agent is both reviewer and committer (CRITICAL).** New
  attack chain pairing GHA-103 (AI review bot on an untrusted trigger
  without an environment gate) with GHA-104 (agent pushes directly) OR
  GHA-106 (agent holds a write-scoped token) on the same workflow. The
  AI both ingests attacker-authored input and can write back, so a
  prompt-injection payload (HackerBot-Claw) makes it approve and
  commit its own malicious change with no human in the loop. Per-
  workflow co-occurrence; OR-leg deduped to one chain per workflow.
  T1195.002 / T1059 / T1078.004. Chain count 48 -> 49 (35 AC).
- **AC-036: untrusted-code execution with no egress containment
  (HIGH).** New attack chain pairing an execution leg (GHA-003 script
  injection, GHA-035 github-script injection, GHA-016 `curl | bash`, or
  GHA-044 build-tool PPE) with an egress leg (GHA-107 harden-runner in
  audit mode, or GHA-108 no agent at all) on the same workflow.
  Attacker-influenced code runs while nothing blocks outbound traffic,
  so it can exfiltrate the OIDC token / GITHUB_TOKEN / secrets. Models
  missing egress control as a severity amplifier: GHA-107 / GHA-108
  alone are LOW advisories, but paired with a code-execution primitive
  they are the last-line-of-defense gap harden-runner's block mode
  closes. Reachability confirmed (and promoted to HIGH confidence) when
  the legs share a job via job-anchor intersection; co-occurrence
  otherwise. T1059 / T1552 / T1041. Chain count 49 -> 50 (36 AC).
- **GHA-106: AI agent CLI runs with a write-scoped GITHUB_TOKEN
  (HIGH).** Fires when a job invokes an agentic CLI (`claude` /
  `gemini` / `q chat` / `cursor-agent` / `aider` / `openhands` /
  `goose`) and its effective `permissions:` grant `write-all`, the
  legacy global `write`, or any of `contents` / `packages` / `actions`
  / `deployments` set to `write`. The agent reads untrusted input at
  runtime (issue / PR bodies, review comments), so a prompt-injection
  payload (the HackerBot-Claw vector) acts with the token's full write
  scope. Sits upstream of GHA-104 (agent + explicit push) and is
  broader than GHA-061 (App-token mint filter); job-level
  `permissions:` correctly override the workflow block. Lower-impact
  scopes (`pull-requests` / `issues` / `checks` / `id-token`) and the
  missing-block case (GHA-004's domain) are not flagged. MEDIUM
  confidence, mapped across all 12 applicable standards. GHA rule
  count 96 -> 97; catalog 1073 -> 1074. 10 unit tests + a per-check
  real-example pair.
- **GHA-105: self-hosted runner reachable from an untrusted PR
  trigger (HIGH).** Fires when a workflow's `on:` includes
  `pull_request` or `pull_request_target` and at least one job's
  `runs-on:` names a self-hosted runner (bare `self-hosted` string, a
  list containing it, or the long-form `{ group, labels }` dict). Fork
  / PR code then executes on persistent infrastructure the org owns,
  exposing cached credentials, the internal network, and every later
  job the runner services. Complements GHA-012 (ephemeral marker) and
  GHA-036 (`runs-on` interpolation). MEDIUM confidence (can't tell a
  public repo from a private one with only trusted contributors),
  mapped across all 11 applicable standards. GHA rule count 95 -> 96;
  catalog 1072 -> 1073. 10 unit tests + a per-check real-example pair.
- **Fixer discoverability (`--list-fixers`).** New early-exit flag
  that lists every check ID with a registered autofixer, one line per
  ID as `ID  SEVERITY  TIER  TITLE`, and exits without scanning.
  `--safety safe|unsafe|all` narrows the listing by tier (`safe` is
  the default `--fix` mode; `unsafe` needs `--fix=unsafe`). Surfaces
  the full 111-fixer set so users can tell at a glance which rules
  have a fixer and which tier each belongs to. Pipes into `grep` for
  a provider prefix. Severity and title come from the same registry
  `--explain` reads, so a new fixer auto-lists. Documented under
  `--man autofix` and `docs/usage.md`. 8 new tests.
- **Contributor tooling: one-command pre-PR gate and a rule scaffold.**
  `scripts/preflight.py` runs the same gates CI does (ruff lint,
  doc-freshness, strict mypy, pytest) in one command and prints a
  pass/fail summary; `--quick` swaps the full suite for the fast
  drift/framework subset. `scripts/new_rule.py` scaffolds a rule module
  plus its test stub, picks the next free ID, and prints the remaining
  drift-gate checklist. Adds a "Your first rule in 10 minutes" guide, a
  devcontainer, CODEOWNERS, a PR template, and `make check` / `fmt` /
  `types` / `fast-test` / `docs-all` / `new-rule` targets.

### Changed

- **NPM-009 names the dependency that introduced each new transitive.**
  Findings now read `<name> (via <parent>)` instead of just the bare
  package name, so a reviewer knows which direct dependency's bump to
  audit. The pnpm (v6 packages + v9 snapshots) and yarn (classic +
  Berry) lockfile synthesizers now preserve each package's declared
  dependency edges, which they previously dropped, so attribution works
  across every lockfile format alongside `package-lock.json`. The rule
  walks the edge graph to the nearest manifest dependency and falls back
  to the immediate declaring parent for a deep transitive with no
  manifest ancestor.
- **Cleaner default terminal report.** The findings table sizes to its
  content instead of padding out to the full terminal width, so a scan
  on a wide terminal no longer leaves a lake of empty space. Resource
  paths render with forward slashes (a Windows scan now reads like the
  docs) and head-truncate when long, so the filename and line number
  always survive instead of folding mid-token (`release.ym` / `l:172`).
  Severity colors match the design system's terminal-tuned scale
  (CRITICAL red, HIGH orange, MEDIUM gold, LOW cyan), so a CLI
  screenshot reads as the same product as the HTML report and docs.
  The `Conf.` column, which previously printed `HIG` on every row,
  now appears only when a shown finding sits below HIGH confidence, so
  the common all-high scan drops the noise column and gives titles the
  room. A single dim `Next →` line closes a terminal scan, pointing at
  `pipeline_check explain <top-rule>` and `--fix --apply` (when fixers
  exist) so even a passing run with findings says what to do next.
- **`init` reads like a guided tour.** The post-scan summary now prints
  the grade and the top-to-fix severities in the same color language as
  a scan report, forward-slashes the resource paths (matching the
  table), and closes with a numbered "next steps" block (commit the two
  files, see findings, `explain` the top rule, `--fix --apply`) instead
  of a single dense line. Clean scans get a "from a clean slate" path
  that points straight at the CI gate. The machine-readable `[init]`
  log lines are preserved for anything grepping the output.
- **Faster CLI startup and scans.** The provider registry now imports a
  provider module only when that provider is selected, instead of
  importing all 32 at load time, and `boto3` moved behind
  `TYPE_CHECKING` in the AWS modules (it was used only in annotations
  plus one `Session()` call). A GitHub-only scan or `--help` no longer
  pulls in `botocore` / `s3transfer`, so cold startup drops from ~346ms
  to ~138ms. Separately, `Scanner.run()` caches the standards-to-control
  resolution per check_id rather than rebuilding the same `ControlRef`
  list for every finding, which roughly halves the rule and
  post-processing phase on a workflow set with many findings. The
  attack-chain engine now filters the findings list to failing findings
  once before evaluating rules, instead of having each of the ~45 rules
  re-walk a list dominated by passing findings; on a large monorepo
  (~5k-16k findings) chain evaluation drops roughly 5x (about 9ms to
  2ms at 50 files). No behavior change: same findings, same controls,
  same chains, same gate results.
- **`--inline-explain` now spans every text reporter.** The flag used
  to affect only the terminal panel; the structured formats dropped
  `exploit_example` entirely. The include/skip decision now lives in a
  shared `inline_exploit()` gate in `checks/base.py`, and SARIF (rule
  `help.text` / `help.markdown`), JUnit (`<failure>` body), markdown (a
  collapsible Proof-of-exploit section after the failures table), and
  Code Quality (issue `description`) all honor it. `--output json` and
  `--output html` continue to carry the field unconditionally. The
  Code Quality fingerprint is unchanged (it hashes only `check_id` /
  path / line), so enabling the flag never churns a dismissed MR
  thread. 13 new tests.
- **Landing-page hero now performs a live scan (docs site).** The hero
  terminal types the command in, ticks a scanner spinner, streams
  findings with scanner cadence, counts the score up, and stamps the
  grade, replacing the previous fade-in. Its rule rows now carry real
  titles and severities from the registry (GHA-008 / 001 / 016 / 015)
  instead of an invented severity gradient, the scan result is exposed
  to screen readers behind a visually-hidden summary while the animated
  specimen stays `aria-hidden`, and the provider grid gains the Composer
  and RubyGems tiles. The headline accent gradient (previously scoped to
  a `.pg-hero__title` element absent from the markup) now renders.
  CSS-only reveal with a graceful no-JS / reduced-motion final state; no
  package behavior change.

### Fixed

- **GHA-098 no longer counts `step-security/harden-runner` as a
  security scan.** harden-runner is a runtime egress monitor, not a
  SAST / SCA / secret scanner, so a deploy job whose only scan-shaped
  step was harden-runner incorrectly satisfied the scan-before-deploy
  gate. Removed it from the recognized-scanner set; its own
  configuration is now covered by GHA-107 / GHA-108 / GHA-109.
- **Script-injection false negative on inline shell assignments
  (GHA-003 and the shared taint engine).** `VAR="${{ github.event.* }}"`
  inside a `run:` block was treated as the safe capture-to-variable
  idiom and skipped. That idiom only holds for runtime shell/ADO
  expansions: GitHub substitutes `${{ … }}` into the script text before
  the shell parses it, so a PR title of `foo"; whoami; "` closes the
  assignment and runs `whoami`. `is_quoted_assignment` no longer
  whitelists `${{ … }}` assignments, so GHA-003 now flags them (the
  safe form remains routing the value through an `env:` block). The
  `$VAR` / `${VAR}` / `$(VAR)` runtime-expansion idioms used by the
  GitLab, Bitbucket, and Azure injection checks are unaffected.
- **Single-quoted shell references no longer false-positive (shared
  taint engine).** The quote-neutralization pass stripped only
  double-quoted segments, so `echo 'literal $VAR'` was reported as an
  unquoted injection even though single quotes suppress expansion
  entirely (single-quoting is itself a recommended mitigation). Both
  quote styles are now stripped before re-checking, with the
  double-quote alternative tried first so an apostrophe inside a
  double-quoted span (`"it's $VAR"`) is handled correctly. This also
  closes a matching false negative where a literal `"` inside two
  single-quoted segments masked a genuinely unquoted reference between
  them. Applies to the GitHub, GitLab, Bitbucket, and Azure
  script-injection checks.
- **Indirect taint through lowercase env vars (GHA taint graph,
  TAINT-001/002/003).** The shell env-var reference pattern was
  uppercase-only, so `echo "out=$title" >> "$GITHUB_OUTPUT"` (a
  lowercase env var bound to untrusted context) dropped the taint link
  and the downstream consumer was flagged by nothing. The name class is
  now case-insensitive; resolution still intersects the exact declared
  env keys, so it only recovers real flows.
- **GHA-002 now catches `github.head_ref` checkouts.** A
  `pull_request_target` workflow that checks out
  `ref: ${{ github.head_ref }}` (the documented shorthand for, and more
  common form than, `github.event.pull_request.head.ref`) was missed.
- **GHA-003 untrusted-context catalog: fork-repo fields added, `actor_id`
  over-match removed.** `github.event.pull_request.head.repo.*` and
  `workflow_run.head_repository.*` free-form fields (`description`,
  `homepage`, `default_branch`), all controlled by a fork PR author,
  are now treated as untrusted. Separately, the `github.actor`
  alternative gained a word boundary so it no longer swallows
  `github.actor_id` (a numeric account ID that can't carry shell
  metacharacters) into a false positive.
- **Shape-based secret detection now suppresses vendor examples and
  placeholders.** The `secret_shapes` catalog (used by the GitLab,
  Azure, Bitbucket, and Dockerfile literal-secret and AWS-long-lived
  rules) had no placeholder or vendor-example filter, so AWS's
  documented dummy key `AKIAIOSFODNN7EXAMPLE` was reported as a CRITICAL
  finding (it appears in many tutorials, and was even in some rules' own
  examples), and credential-named keys holding `REPLACE_ME` / `changeme`
  / `<your-token>` were flagged as leaked secrets. New `aws_key_in()` and
  `is_placeholder_value()` helpers reuse the same `VENDOR_EXAMPLE_TOKENS`
  / `PLACEHOLDER_MARKER_RE` suppression the entropy-based path already
  applied, so the two detection paths now agree. Real keys and real
  literal secrets are still flagged. The Kubernetes Secret-manifest
  checks (K8S-017/018/037) deliberately flag placeholders as a
  maintenance footgun and are intentionally left unchanged.
- **GitHub fine-grained PATs are now detected.** The secret catalog
  matched only the classic `ghp_/gho_/ghu_/ghs_/ghr_` prefixes; the
  `github_pat_…` fine-grained format (GitHub's recommended PAT since
  2022) was missed entirely. Added the shape and routed its `gi…`
  prefix through the token dispatch.


