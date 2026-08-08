---
title: OSS Security Policy as Code
date: 2026-08-08 06:13:20 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v10.0.8
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  `oss-policy-kit` is a tool that evaluates OSS repositories against security policies using local files and evidence, generating Markdown, JSON, and SARIF reports. It provides detailed assurance grades based on the type of verification (deterministic, signal, or evidence-backed) and supports various report formats for both human review and automation.
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v10.0.8**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## Action Summary

`oss-policy-kit` is a tool that evaluates OSS repositories against security policies using local files and evidence, generating Markdown, JSON, and SARIF reports. It provides detailed assurance grades based on the type of verification (deterministic, signal, or evidence-backed) and supports various report formats for both human review and automation.

## What's Changed

## OSS Security Policy as Code Starter Kit v10.0.8

Housekeeping. A full X-ray of the project closed the items it left open, and three of them turned out not to be what the internal register said they were.

**Nothing about how the kit evaluates changed.** No control verdict, no `summary_by_status`, no `results_digest`, no `reports/2.0` or `findings/1.0` shape, and no exit code for a valid run moves here. Upgrading from v10.0.7 requires no action.

---

## Highlights

### Two control states reached you as an undocumented value

`map_status_to_reports_v2` ends in a defensive fallback that returns `UNKNOWN` with `reason: "unmapped-source-status"` for a status it does not recognise. That value appears in no document, no schema and no `--help` output, so anyone who received it had nothing to act on.

`ControlStatus` has nine members and the mapping covered seven. `NOT_EVALUATED` and `NOT_OBSERVABLE` fell through. `NOT_EVALUATED` is returned by evaluators across five modules — `OSS-SCORECARD-001` uses it whenever no Scorecard JSON is supplied — so an ordinary run was enough to put the undocumented discriminator into a report.

Both are now mapped, and the distinction is kept rather than collapsed:

| Status | Reported as | Meaning |
|---|---|---|
| `not-evaluated` | `UNKNOWN` / `reason: "not-evaluated"` | An input was not supplied, so no verdict was attempted. Supplying it changes the outcome. |
| `not-observable` | `UNKNOWN` / `reason: "not-observable-in-clone"` | The fact sits structurally outside a clone. No input resolves it. |

`docs/reports-contract-v2.0.md` now lists every `reason` value, and states plainly that `unmapped-source-status` reaching a report is a defect in the kit rather than a statement about your repository.

---

## Improvements

- **Waiver documentation named the wrong key.** Five places taught `expires_on` as the key to use — the example and the sentence beneath it in `docs/iac-terraform.md`, the edit hint in the quickstart, and the remediation message of the Bicep, CloudFormation and Pulumi evaluators. The canonical key is `expires_at`. `expires_on` remains accepted, verified by writing a waiver with each spelling and confirming both apply, so existing files keep working.
- **`init` carried a second copy of the stack-label map.** It had already drifted from the one in `profile_hints`, the module that emits those signals: one knew `container_docker`, the other knew `node_lockfile`, so the stack a repository was reported to use depended on which module answered. There is now one source, and a test that pins the container label so a Dockerfile-only repository is still named.

## Internal

These change no shipped behaviour, but they are why the release exists.

- The packaging test compared the two template copies byte for byte, so its verdict depended on the checkout rather than on content. It now compares content, with a separate assertion that the shipped copy is LF — the wheel is still held to the stricter rule.
- `api.deps.dev` is reachable from the dependency-review job. That check had been passing for months without ever exercising its own network path, because no pull request had added a dependency for it to look up.
- Three guards were added, each mutation-tested: every `ControlStatus` must be mapped and both copies of the map must agree; the stack labels must have one source; and the template comparison must still fail on real drift.

## Security

No vulnerability is fixed in this release. Release artifacts are unchanged in shape: signed wheel and sdist, CycloneDX SBOM, in-toto provenance attestation.

The dependency-review job carries a named allowance for three advisories against `mcp 1.23.3`, a transitive dependency of semgrep. It is scoped to those three advisory IDs rather than lowering the severity threshold, so every other vulnerable package still fails the gate. semgrep pins `mcp` exactly, so no upgrade exists; the allowance is removed as soon as semgrep depends on `mcp >= 1.28.1`.

## Upgrading

```text
pip install --upgrade oss-policy-kit
```

No migration is required from v10.0.7.

**Full Changelog**: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit/compare/v10.0.7...v10.0.8

