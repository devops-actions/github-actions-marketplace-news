---
title: websec-validator
date: 2026-07-06 06:24:05 +00:00
tags:
  - raccioly
  - GitHub Actions
draft: false
repo: https://github.com/raccioly/websec-validator
marketplace: https://github.com/marketplace/actions/websec-validator
version: v0.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/raccioly/websec-validator** to version **v0.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/websec-validator) to find the latest changes.

## What's Changed

Minor: the **browser-vuln trio** (XSS / clickjacking / CSRF) closes the classic-web-vuln gap, and a
new **enterprise / CI integration surface** turns websec from a CLI-a-human-runs into a truth source a
pipeline, dashboard, or any MCP agent can consume — SARIF, a `--fail-on` gate, git-diff baselining, a
GitHub Action, an MCP server, and versioned output schemas. All stdlib, zero new runtime deps.

### Added
- **SARIF 2.1.0 output** (`formats.py`) — every `run` writes `results.sarif` (one `rule` per attack
  class carrying its CWE/ASVS/OWASP citation; severity → error/warning/note; stable
  `partialFingerprints`). Drops into GitHub Code Scanning (inline PR annotations + Security tab),
  GitLab, Azure DevOps, VS Code, DefectDojo. `--format sarif` also emits it to stdout for piping.
- **CI gate** — `--fail-on {critical,high,medium,low}` exits 1 when a finding at/above that severity
  remains (report-only by default).
- **Baseline / diff** (`baseline.py`) — `--baseline <prior findings-ledger.json>` marks findings
  `new`/`unchanged`/`fixed` via a stable per-finding fingerprint (surfaced as SARIF `baselineState`);
  `--fail-on` then gates on **only the new** findings, so a legacy backlog doesn't block every PR.
- **Reusable GitHub Action** (`action.yml`) — composite action: install → run → upload SARIF, with
  `fail-on` / `baseline` / `scan` inputs.
- **MCP server** (`mcp_server.py`, `websec mcp` + a `websec-mcp` entry point) — Model Context Protocol
  over stdio (raw JSON-RPC 2.0, stdlib only) exposing `websec_recon` / `websec_findings` /
  `websec_sarif` / `websec_briefing` so Cursor/Cline/Windsurf/Zed can call recon as typed tools.
- **Versioned output contract** — `schema_version` on FACTS/ledger/envelope + published JSON Schemas
  (`schemas/facts.schema.json`, `schemas/ledger.schema.json`); a `findings.envelope.json` artifact.
- **JSON envelope output** (`--format json`) — a self-describing wrapper around the ledger for
  non-GitHub CI / dashboards.
- **Reflected / DOM / template XSS sink class** (`surface.py`, 16th sink class) — the classic
  browser-rendered vuln the recon layer previously deferred entirely to optional Semgrep. Detects
  DOM sinks (`innerHTML`/`outerHTML`/`insertAdjacentHTML`/`document.write`/jQuery `.html()`), React
  `dangerouslySetInnerHTML`, Vue `v-html`, and server template-escape-off (Jinja `|safe`, `mark_safe`,
  `Markup(`, `{% autoescape false %}`, interpolated `res.send`/`res.write` HTML). A per-file sanitizer
  guard (DOMPurify / sanitize-html / bleach / `escapeHtml`) suppresses the lead so a sanitized render
  doesn't false-fire; kept LOW-confidence like every surface signal (`xss` → CWE-79/CWE-116, ASVS V5.3.3).
- **Framework-agnostic clickjacking baseline** (`transport_security.py`) — a web surface that sets
  neither `X-Frame-Options` nor a CSP `frame-ancestors` directive is framable (UI-redress). Previously
  clickjacking was only checked inside Next.js configs; now it parallels the CSP/HSTS baseline for
  Express/Flask/Django/any surface (`clickjacking` → CWE-1021/CWE-451, ASVS V14.4.7).
- **CSRF baseline** (`transport_security.py`) — a cookie/session-authenticated app with HTTP routes
  but no anti-CSRF token library/middleware (csurf/csrf-csrf/@fastify/csrf/Django/Rails) and no
  `SameSite` cookie attribute. Derived from the auth extractor so a Bearer-token-only API is exempt —
  low-FP by design (`csrf` → CWE-352, ASVS V4.2.2).

### Changed
- Metrics: 15 → **16 sink classes**, 238 → **285 tests**. New modules: `formats.py`, `baseline.py`,
  `mcp_server.py`, `schemas/`. New CLI: `--format`, `--fail-on`, `--baseline`, `websec mcp`.

### Added (coverage — false negatives the FP/FN audit surfaced)
- **AWS SAM / serverless route modeling** (`routes.py`) — a `template.yaml`'s `AWS::Serverless::Function`
  Api/HttpApi events and Function URLs are now mapped to routes (handler resolved to the source file,
  build-dir `dist/`→`src/` aware), so a serverless backend is no longer 0-routes/unprobed. A Function URL
  with `AuthType: NONE` emits an **unauthenticated-serverless-endpoint** finding (a public dashboard
  serving account/P&L/PII data is the risk). Stdlib-only line/regex parse — no YAML dependency. On the
  audit corpus this surfaced a public P&L dashboard and a 19-route backend that were previously invisible.
- **Broken-auth backdoor detector** (`auth.py`) — the total-auth-bypass bugs the route/guard model can't
  see because the endpoint *is* "guarded", just by something forgeable. Flags a **dev-token backdoor**
  (`token.startsWith('dev-')` deriving a principal), an **accept-any-credential** login (explicit
  accept-any/MVP intent, or a password-length-only check with no hash compare), and a **fail-open
  signature/secret verification** (`if(env.*_SECRET){ verify }` that silently skips when the secret is
  unset). New classes `auth-backdoor` (CRITICAL, CWE-288/798/287) and `fail-open-auth` (HIGH, CWE-636/325).
  On the audit corpus it caught a treasury API's `dev-*` bearer bypass, an accept-any-password login that
  self-elevates to admin, and a fail-open Stripe webhook verify — all previously missed.

### Fixed
Real-repo false-positive audit (ran recon against a diverse set of real GitHub repos — TS/Python
frontends, backends, CLIs, static sites):
- **Path-scoped standalone guard mounts** (`authz.py`) — `app.use('/api', requireAuth)` on its own
  line, with routers mounted on `/api` in later statements, is now recognized (resolving each router
  instance's import and respecting Express source order, so a router mounted *before* the guard — e.g.
  a public login route — stays unguarded). Cut a real backend's guarded-route false positives 63→5.
- **Frontend API-client files no longer parsed as server routes** (`routes.py`) — in a combined
  frontend+backend monorepo, a React axios client (`import {api} from './client'; api.get('/x')`) and
  static hosting config (`public/_redirects`) were emitted as endpoints and flagged missing-auth. Now
  dropped via a client-vs-handler discriminator that still keeps serverless handlers (Cloudflare Pages
  `onRequest*`, Lambda `handler`) even when they call axios/fetch. Cut a monorepo's missing-auth 185→3.
- **Python test files** (`test_*.py` / `*_test.py` / `conftest.py`) are now classified as tests
  (`base.py`), so a `test_curl.py` doing `requests.get()` no longer false-fires SSRF.
- **Browser-hardening findings gated on a served-web surface** (`transport_security.py`) — CSP / HSTS /
  clickjacking no longer fire on a non-web Python/CLI tool that merely builds an HTML string (a report
  generator); they require an HTTP-serving construct (`new Response` / `res.send` / a framework).

Second FP audit — a 15-agent adversarial workflow verified every finding across the corpus against the
real code and clustered the false positives; the dominant patterns are now fixed (corpus findings
308 → 191, −37%, with zero true-positive loss):
- **App-specific auth-wrapper recognition** (`authz.py`) — a handler wrapped in an application HOF that
  composes a known guard (`withDealAuth = withAuth(...)`, `withSuperAdmin`, `requireUserRecord`) is now
  credited (dynamic guard-alias resolver, generic-aware `withDealAuth<{…}>(`). Also recognizes Fastify
  `addHook('onRequest', auth)` / per-route `{preHandler: auth}` and a secret-bearer guard
  (`Bearer ${CRON_SECRET}`). Cut one real app's missing-auth 94→3 (total 111→18).
- **Request-driven sinks gated on a web surface** (`surface.py`) — SSRF / path-traversal /
  command-injection / open-redirect are suppressed on a repo with no HTTP listener (a CLI / library /
  data tool: `languages` analyzed, no routes, no framework) and in more script/CLI file classes
  (research/, tools/, notebooks/, a Python `__main__`/argparse module).
- **PKCE is not password hashing** (`crypto_usage.py`) — a `createHash('sha256')` over an OAuth PKCE
  `code_verifier` (RFC 7636) no longer false-fires weak-password-hash.
- **webhook-forgery requires receiver evidence** (`integrations.py`) — an OAuth authorization-code
  callback, a webhook-subscription-management CRUD route, or a GET stub at a webhook-ish path is no
  longer flagged unsigned; a weak path (`/callback`) now needs raw-body/event/signature evidence, and
  verification via an imported helper (`constructEvent`) counts. Cleared ~16 FPs; kept real leads.
- **CSRF credits framework defaults** (`transport_security.py`) — NextAuth/Auth.js (SameSite=Lax by
  default) and Next.js Server Actions (built-in Origin check) no longer trigger the no-SameSite CSRF lead.

