---
title: QWED Protocol Verification
date: 2026-03-23 13:38:38 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v4.0.1
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v4.0.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

QWED Protocol is a GitHub Action designed to create a model-agnostic verification layer for AI systems, including large language models (LLMs) and AI agents. Its primary function is to detect and block unverified, potentially erroneous outputs—such as hallucinations or incorrect computations—before they reach production. By offering multiple verification engines and ensuring process determinism, it provides robust safeguards for improving trust and reliability in AI-driven applications, regardless of the underlying model.

## Release notes


<p>Patch release aligning the TypeScript SDK, backend API schemas, and security guard integrations introduced in <strong>v4.0.0 Sentinel Edition</strong>.
Addresses all critical findings from <strong>Sentry</strong>, <strong>CodeRabbit</strong>, <strong>SonarCloud</strong>, and <strong>CodeQL</strong> during PR <a href="https://github.com/QWED-AI/qwed-verification/pull/97">#97</a> review.</p>
</blockquote>
<hr>
<h2>🆕 New Endpoints</h2>
<h3><code>POST /verify/process</code></h3>
<p>Glass-box reasoning process verifier with two modes:</p>
<ul>
<li><strong>IRAC mode</strong> — Validates that AI reasoning traces contain all four IRAC components (<code>Issue</code>, <code>Rule</code>, <code>Application</code>, <code>Conclusion</code>) with decimal compliance scoring.</li>
<li><strong>Milestones mode</strong> — Checks completion of custom milestone lists with process rate calculation.</li>
</ul>
<p><strong>Python SDK</strong></p>
<pre><code class="language-python">result = client.verify_process(
    trace="Issue: contract breach. Rule: Article 2. Application: ...",
    mode="irac"
)
</code></pre>
<p><strong>TypeScript SDK</strong></p>
<pre><code class="language-typescript">const result = await client.verifyProcess(reasoning, { mode: 'irac' });
console.log(result.result?.score);          // 1.0
console.log(result.result?.missing_steps);  // []
</code></pre>
<hr>
<h3>Agent Security Checks</h3>
<p><code>POST /agents/{id}/verify</code> now accepts an optional <code>security_checks</code> object:</p>

Check | Guard | What it does
-- | -- | --
exfiltration: true | ExfiltrationGuard | Scans the query for PII (SSN, credit cards, API keys, JWTs) before processing
mcp_poison: true | MCPPoisonGuard | Scans the query for prompt injection patterns and unauthorized URLs


<hr>
<p><strong>Full Changelog:</strong> <a href="https://github.com/QWED-AI/qwed-verification/compare/v4.0.0...v4.0.1"><code>v4.0.0...v4.0.1</code></a></p></body></html><!--EndFragment-->
</body>
</html># v4.0.1 — Sentinel Guard Sync

> Patch release aligning the TypeScript SDK, backend API schemas, and security guard integrations introduced in **v4.0.0 Sentinel Edition**.
> Addresses all critical findings from **Sentry**, **CodeRabbit**, **SonarCloud**, and **CodeQL** during PR [[#97](https://github.com/QWED-AI/qwed-verification/pull/97)](https://github.com/QWED-AI/qwed-verification/pull/97) review.

---

## 🆕 New Endpoints

### `POST /verify/process`

Glass-box reasoning process verifier with two modes:

- **IRAC mode** — Validates that AI reasoning traces contain all four IRAC components (`Issue`, `Rule`, `Application`, `Conclusion`) with decimal compliance scoring.
- **Milestones mode** — Checks completion of custom milestone lists with process rate calculation.

**Python SDK**
```python
result = client.verify_process(
    trace="Issue: contract breach. Rule: Article 2. Application: ...",
    mode="irac"
)
```

**TypeScript SDK**
```typescript
const result = await client.verifyProcess(reasoning, { mode: 'irac' });
console.log(result.result?.score);          // 1.0
console.log(result.result?.missing_steps);  // []
```

---

### Agent Security Checks

`POST /agents/{id}/verify` now accepts an optional `security_checks` object:

| Check | Guard | What it does |
|---|---|---|
| `exfiltration: true` | `ExfiltrationGuard` | Scans the query for PII (SSN, credit cards, API keys, JWTs) before processing |
| `mcp_poison: true` | `MCPPoisonGuard` | Scans the query for prompt injection patterns and unauthorized URLs |

> Blocked requests return `403 Forbidden` with a descriptive `detail` message.

---

## 🔒 Security Fixes

### Information Disclosure — `/verify/rag` *(Sentry + CodeQL)*

- **Before:** Error responses included `"message": str(e)` — leaking internal file paths, DB credentials, and stack traces to API consumers.
- **After:** Exceptions are logged server-side via `redact_pii(str(e))`. Clients receive only `"message": INTERNAL_VERIFICATION_ERROR` and `"verified": false`.

### Symbolic Precision — `max_drm_rate` *(CodeRabbit)*

- **Before:** `RAGVerifyRequest.max_drm_rate` accepted `float | str` — allowing implicit floating-point approximation (e.g., `0.1 + 0.2 ≠ 0.3`).
- **After:** Accepts `str` only (e.g., `"0"`, `"1/10"`). A `field_validator` enforces `fractions.Fraction`-compatible values with range check `0 ≤ rate ≤ 1`.

### Response Consistency — RAG Error Payload *(CodeRabbit)*

- Error responses now return `"verified": false` instead of `"is_valid": false`, matching the `RAGGuard` success response schema.

---

## 🛠️ SDK Changes — `@qwed-ai/sdk@4.0.1`

### New Methods

| Method | Description |
|---|---|
| `verifyProcess(trace, options?)` | IRAC structure or milestone validation |

### Breaking Changes

| Method | Change | Reason |
|---|---|---|
| `verifyRAG()` | `maxDrmRate: number` → `maxDrmRate: string` | Symbolic precision alignment with backend |

### Fixes

| Method | Fix |
|---|---|
| `verifyAgent()` | Return type → `AgentVerificationResponse`, payload aligned with `AgentVerifyRequest` schema |
| `verifyAgent()` | Agent IDs URL-encoded via `encodeURIComponent()` to prevent routing errors |
| `verifyAgentAction()` | Same `encodeURIComponent()` fix applied |
| `getAgentBudget()` | Same `encodeURIComponent()` fix applied |

### Type Changes (`types.ts`)

- `VerificationType` enum: added `Process`, `RAG`, `Security`
- `VerificationResultData.risk`: separated into `risk` (category) and `risk_level` (severity)
- Added `ProcessVerifier` fields: `score`, `process_rate`, `missing_steps`, `missed_milestones`
- Added `RAGGuard` fields: `drm_rate`, `chunks_checked`, `mismatched_count`

---

## 🧪 Test Coverage

New test file: `tests/test_api_phase17_endpoints.py`

| Test | Validates |
|---|---|
| `test_verify_process_endpoint` | `/verify/process` returns `200` with `verified` field |
| `test_verify_rag_endpoint` | `/verify/rag` returns `200` with `verified` field |
| `test_verify_rag_endpoint_exception_no_leak` | Error response does **NOT** contain raw exception strings |
| `test_agent_verify_security_checks` | Exfiltration → `403` on SSN, MCP Poison → `403` on `<important>` tags |

---

## 📦 Published Packages

| Package | Version | Registry |
|---|---|---|
| `qwed-verification` | `4.0.1` | [[PyPI](https://pypi.org/project/qwed/)](https://pypi.org/project/qwed/) |
| `@qwed-ai/sdk` | `4.0.1` | [[NPM](https://www.npmjs.com/package/@qwed-ai/sdk)](https://www.npmjs.com/package/@qwed-ai/sdk) |
| `qwedai/qwed-verification` | `4.0.1` | [[Docker Hub](https://hub.docker.com/r/qwedai/qwed-verification)](https://hub.docker.com/r/qwedai/qwed-verification) |

---

**Full Changelog:** [`[v4.0.0...v4.0.1](https://github.com/QWED-AI/qwed-verification/compare/v4.0.0...v4.0.1)`](https://github.com/QWED-AI/qwed-verification/compare/v4.0.0...v4.0.1)
