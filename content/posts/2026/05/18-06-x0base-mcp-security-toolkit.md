---
title: MCP Security Toolkit
date: 2026-05-18 06:33:19 +00:00
tags:
  - x0base
  - GitHub Actions
draft: false
repo: https://github.com/x0base/mcp-security-toolkit
marketplace: https://github.com/marketplace/actions/mcp-security-toolkit
version: v0.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/x0base/mcp-security-toolkit** to version **v0.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-security-toolkit) to find the latest changes.

## Action Summary

The `mcp-security-toolkit` GitHub Action provides a suite of tools for auditing and enhancing the security of AI agent systems, specifically those using Managed Code Processor (MCP) servers. It automates source code audits, schema risk analysis, prompt injection detection, and security assessments of JWTs and HTTP responses, addressing gaps in agent security by offering lightweight, atomic tools that eliminate the need for multiple external installations. This action is designed to aid developers and security professionals in identifying vulnerabilities and ensuring robust application security in the context of LLM-enabled features.

## What's Changed

Patch release. Completes the defensive-helpers library and tightens the dev-dependency policy.

## Added

- **`safe_filename(name)`** — basename-only validator. Rejects path separators, control characters, traversal tokens (`.`, `..`), Windows reserved device names (`CON`, `PRN`, `COM1`, …). For the case where an MCP tool accepts a filename and joins it to its own directory.

  ```python
  from mcp_security_toolkit.helpers import safe_filename

  @mcp.tool()
  def save_upload(filename: str, data: bytes) -> str:
      name = safe_filename(filename)
      (Path("/var/uploads") / name).write_bytes(data)
      return name
  ```

- **`evaluate_expression(expr, variables=None)`** — safe arithmetic-only evaluator. AST whitelist: binary / unary / bool / compare ops, ternary, names from `variables`, calls to a small builtin whitelist (`abs`, `min`, `max`, `round`, `len`, `int`, `float`, `bool`, `sum`). Caps expression length and `**` exponent (1024) to bound CPU. Use instead of `eval()` for user-supplied formulas / thresholds.

  ```python
  from mcp_security_toolkit.helpers import evaluate_expression

  evaluate_expression(
      "price * (1 - discount)",
      variables={"price": 100, "discount": 0.1},
  )  # → 90.0
  ```

The defensive helpers library now ships **5 primitives** — `safe_path`, `safe_filename`, `safe_url`, `safe_sql_identifier`, `evaluate_expression` — each fixing the corresponding `mcp_server_audit` finding category in one line. The toolkit is on both sides of the bug: detectors find, helpers fix.

## Changed

- Dev-dependency upper bounds removed from `pyproject.toml`. Dev deps aren't shipped to end users; the CI matrix on Python 3.10–3.13 × Ubuntu/macOS is the source of truth for compatibility. Upper bounds here only created Dependabot toil without supply-chain benefit. Runtime deps (`mcp`, `pydantic`) keep their tight bounds.

## Quality

- **231 tests** passing
- ruff clean
- twine check PASSED on sdist + wheel
- Published via PyPI Trusted Publishing (OIDC, no long-lived tokens) with Sigstore provenance attestations

## Install

\`\`\`bash
pip install --upgrade mcp-security-toolkit==0.3.1
\`\`\`

Or zero-install:

\`\`\`bash
uvx mcp-security-toolkit scan-installed
\`\`\`
