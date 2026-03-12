---
title: QWED Protocol Verification
date: 2026-03-12 05:55:22 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v4.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v4.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

QWED Protocol is a model-agnostic verification layer designed to ensure the reliability of AI-generated outputs, particularly for Large Language Models (LLMs) such as OpenAI, Anthropic, and local models. It provides production-grade validation by utilizing 11 specialized verification engines to detect and prevent AI hallucinations, ensuring only verifiable outputs are deployed. This action automates the quality assurance process for AI systems, making outputs more trustworthy and minimizing risks associated with unverified or misleading responses.

## Release notes

<html>
<body>
<!--StartFragment--><html><head></head><body><h1>🛡️ QWED v4.0.0 — Sentinel Edition</h1>
<blockquote>
<p><strong>147 commits</strong> since v3.0.1 — the largest update in QWED history.</p>
</blockquote>
<p>QWED v4.0.0 introduces <strong>Agentic Security Guards</strong>, <strong>Process Determinism</strong>, critical security hardening, and enterprise-grade CI/CD infrastructure. This release makes QWED the most comprehensive open-source deterministic verification layer for LLMs and AI Agents.</p>
<hr>
<h2>🆕 Agentic Security Guards (Phase 17)</h2>
<p>A brand-new guard subsystem purpose-built for securing AI agent tool chains and RAG pipelines.</p>
<p>All three guards went through <strong>five rounds</strong> of security review and hardening via CodeRabbit and SonarCloud.</p>

Guard | Description
-- | --
RAGGuard | Detects prompt injection, data poisoning, and context manipulation in Retrieval-Augmented Generation pipelines. Produces IRAC-compliant compliance reports.
ExfiltrationGuard | Prevents data exfiltration through AI agent tool calls by analyzing output patterns, destination URLs, and payload structure.
MCP Poison Guard | Detects poisoned or tampered Model Context Protocol (MCP) tool definitions before agent execution, protecting against supply-chain attacks on AI tools.


<hr>
<h2>📝 Documentation &amp; Badges</h2>
<ul>
<li>Added <strong>OpenSSF Best Practices</strong> badge (Silver level)</li>
<li>Added <strong>Snyk</strong> security badge and partner attribution</li>
<li>Added <strong>Docker Hub</strong> pulls badge and dynamic BuildKit badge</li>
<li>Updated engine count to reflect all <strong>11 verification engines</strong></li>
<li>Added <strong>Ecosystem Trust &amp; Infrastructure</strong> section to README</li>
</ul>
<hr>
<h2>🧪 Test Coverage</h2>
<ul>
<li>ProcessVerifier: decimal scores, edge cases, IRAC long input, malformed data</li>
<li>Attestation edge cases and <code>qwed_local</code> execution tests</li>
<li>Logic exception handling and stats engine coverage</li>
<li>Secure executor Docker availability checks</li>
</ul>
<hr>
<h2>📦 Installation</h2>
<pre><code class="language-bash">pip install qwed==4.0.0
</code></pre>
<hr>
<h2>🔗 Links</h2>
<ul>
<li>📖 <a href="https://docs.qwed.ai/">Documentation</a></li>
<li>🐍 <a href="https://pypi.org/project/qwed/">PyPI</a></li>
<li>🐳 <a href="https://hub.docker.com/r/qwedai/qwed-verification">Docker Hub</a></li>
<li>📦 <a href="https://www.npmjs.com/package/@qwed-ai/sdk">npm</a></li>
<li>🦀 <a href="https://crates.io/crates/qwed">crates.io</a></li>
</ul>
<hr>
<p><strong>Full Changelog:</strong> <a href="https://github.com/QWED-AI/qwed-verification/compare/v3.0.1...v4.0.0"><code>v3.0.1...v4.0.0</code></a></p></body></html><!--EndFragment-->
</body>
</html># 🛡️ QWED v4.0.0 — Sentinel Edition

> **147 commits** since v3.0.1 — the largest update in QWED history.

QWED v4.0.0 introduces **Agentic Security Guards**, **Process Determinism**, critical security hardening, and enterprise-grade CI/CD infrastructure. This release makes QWED the most comprehensive open-source deterministic verification layer for LLMs and AI Agents.

---

## 🆕 Agentic Security Guards (Phase 17)

A brand-new guard subsystem purpose-built for securing AI agent tool chains and RAG pipelines.

All three guards went through **five rounds** of security review and hardening via CodeRabbit and SonarCloud.

| Guard | Description |
|-------|-------------|
| **RAGGuard** | Detects prompt injection, data poisoning, and context manipulation in Retrieval-Augmented Generation pipelines. Produces IRAC-compliant compliance reports. |
| **ExfiltrationGuard** | Prevents data exfiltration through AI agent tool calls by analyzing output patterns, destination URLs, and payload structure. |
| **MCP Poison Guard** | Detects poisoned or tampered Model Context Protocol (MCP) tool definitions before agent execution, protecting against supply-chain attacks on AI tools. |

---

## 🆕 New Standalone Guards

| Guard | Description |
|-------|-------------|
| **SovereigntyGuard** | Enforces data residency policies and local routing rules for compliance-sensitive deployments (GDPR, data localization). |
| **ToxicFlowGuard** | Stateful detection of toxic tool-chaining patterns across multi-step agent workflows. Catches attack sequences that single-step guards miss. |
| **SelfInitiatedCoTGuard (S-CoT)** | Verifies self-initiated Chain-of-Thought logic paths for reasoning integrity, ensuring LLMs don't fabricate reasoning chains. |

---

## 🆕 Process Determinism

A new class of deterministic verification:

- **ProcessVerifier** — IRAC/milestone-based process verification with decimal scoring, budget-aware timeouts, and structured compliance reporting. Ensures AI-driven workflows follow deterministic process steps — not just correct answers, but correct *procedures*.

---

## 🔒 Critical Security Fixes

| Fix | Details |
|-----|---------|
| **Code Injection Prevention** | Replaced all `eval()` calls with AST-compiled execution (SonarCloud S5334). |
| **Sandbox Escape Fix** | Patched critical sandbox escape and namespace mismatch vulnerability in the code verification engine. |
| **SymPy Injection Fix** | Hardened symbolic math input parsing against injection attacks. |
| **Protocol Bypass Fixes** | Fixed URL whitespace bypass and protocol wildcard bypass vulnerabilities. |
| **CVE Patches** | Resolved CVE-2026-24049 (Critical, pip/wheel), CVE-2025-8869, and HTTP request smuggling via h11/httpcore upgrades. |
| **Snyk Remediation** | Fixed all 19 Snyk Code findings across the codebase. |
| **CodeQL Remediation** | Secured exception handling in `verify_logic`, `ControlPlane`, `verify_stats`, and `agent_tool_call` endpoints. |

---

## 🐳 Docker Hardening

15+ improvements to the Docker image:

- Pinned base image digests with hash-verified requirements
- Non-root user execution with `gosu`/`runuser`
- Inlined entrypoint script to fix exec format errors across platforms
- Enforced LF line endings via `.gitattributes` and `dos2unix`
- Automated Docker Hub publishing on release and main branch push
- SBOM generation (SPDX) and Docker Scout vulnerability scanning

```bash
docker pull qwedai/qwed-verification:4.0.0
```

---

## 🔧 CI/CD Infrastructure

| Tool | Integration |
|------|-------------|
| **Sentry SDK** | Integrated error tracking and monitoring for production deployments. |
| **CircleCI** | Added Python matrix testing pipeline (3.10, 3.11, 3.12). |
| **SonarCloud** | Added code quality and coverage workflow. |
| **Snyk** | Added security scanning workflow with SARIF output. |
| **Docker Auto-Publish** | Automated image publishing to Docker Hub on every release. |

---

## 📝 [Documentation](https://docs.qwed.ai/) & Badges

- Added **OpenSSF Best Practices** badge (Silver level)
- Added **Snyk** security badge and partner attribution
- Added **Docker Hub** pulls badge and dynamic BuildKit badge
- Updated engine count to reflect all **11 verification engines**
- Added **Ecosystem Trust & Infrastructure** section to README

---

## 🧪 Test Coverage

- ProcessVerifier: decimal scores, edge cases, IRAC long input, malformed data
- Attestation edge cases and `qwed_local` execution tests
- Logic exception handling and stats engine coverage
- Secure executor Docker availability checks

---

## 📦 Installation

```bash
pip install qwed==4.0.0
```

---

## 🔗 Links

- 📖 [Documentation](https://docs.qwed.ai)
- 🐍 [[PyPI](https://pypi.org/project/qwed/)](https://pypi.org/project/qwed/)
- 🐳 [[Docker Hub](https://hub.docker.com/r/qwedai/qwed-verification)](https://hub.docker.com/r/qwedai/qwed-verification)
- 📦 [[npm](https://www.npmjs.com/package/@qwed-ai/sdk)](https://www.npmjs.com/package/@qwed-ai/sdk)
- 🦀 [[crates.io](https://crates.io/crates/qwed)](https://crates.io/crates/qwed)

---

**Full Changelog:** [`[v3.0.1...v4.0.0](https://github.com/QWED-AI/qwed-verification/compare/v3.0.1...v4.0.0)`](https://github.com/QWED-AI/qwed-verification/compare/v3.0.1...v4.0.0)
