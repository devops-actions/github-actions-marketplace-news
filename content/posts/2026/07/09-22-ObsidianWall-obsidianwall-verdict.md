---
title: ObsidianWall Verdict
date: 2026-07-09 22:42:57 +00:00
tags:
  - ObsidianWall
  - GitHub Actions
draft: false
repo: https://github.com/ObsidianWall/obsidianwall-verdict
marketplace: https://github.com/marketplace/actions/obsidianwall-verdict
version: v0.5.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/ObsidianWall/obsidianwall-verdict** to version **v0.5.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/obsidianwall-verdict) to find the latest changes.

## What's Changed

## ObsidianWall Verdict v0.5.2

**Verdict becomes a governance decision engine — not just a policy checker.**

---

### What's New

#### `verdict explain` — Full Reasoning on Demand
Terminal output from `verdict evaluate` is now a concise ~15-line summary by default. Full governance reasoning, condition traces, analyzer findings, and recommendations are one command away:

```bash
verdict evaluate --plan plan.json --policy budget.yaml
# → concise decision summary + remediation

verdict explain <decision_id>
# → full reasoning chain, retrieved from local evidence store
```

`verdict explain` reads from a dedicated evidence store, not from the `--output` file — so it works even if that file has since been overwritten by a later run.

#### Output Formats — `--format text|json|yaml`
```bash
verdict evaluate --plan plan.json --policy budget.yaml
verdict evaluate --plan plan.json --policy budget.yaml --format json
verdict evaluate --plan plan.json --policy budget.yaml --format yaml
```

`text` (default) is the new concise summary. `json` preserves the full artifact for CI/CD pipelines and scripts — unchanged from prior versions. `yaml` is new. The `--output` file always contains the complete artifact regardless of which format is chosen for stdout.

#### Governance Objective
Policies can now declare the organizational outcome they exist to achieve:

```yaml
metadata:
  governance_objective:
    statement: "Maintain cloud spend within approved budget"
```

Every decision against that policy reports whether the objective was **Upheld**, **Violated**, or **Pending Approval** — shifting the artifact from reporting technical facts ("budget exceeded") to reporting whether organizational intent held. Fully optional — existing policies work unchanged.

#### Evidence Store
Full governance artifacts are now stored separately from the lean decision ledger, in a dedicated `decision_artifacts` table. This is the foundation `verdict explain` runs on, and the same store future Sentinel and Compass evidence types (drift snapshots, SBOMs, cost reports) will use without any schema changes.

#### Rule-Based Recommendation Confidence
Recommendation confidence scores are no longer flat constants — they're computed per finding type, reflecting how directly a recommendation addresses the specific finding that triggered it.

---

### Upgrading

```bash
pip install --upgrade obsidianwall-verdict
```

No breaking changes. Existing policies, scripts, and CI/CD pipelines using `--format json` (or the equivalent prior default) continue to work unchanged. `verdict evaluate` without `--format` now returns the concise summary instead of the full JSON artifact — add `--format json` to any script or pipeline that was parsing the old default stdout output.

---

### Links

- [PyPI](https://pypi.org/project/obsidianwall-verdict/0.5.2/)
- [Documentation](https://obsidianwall.dev)
- [What is Programmable Assurance?](https://programmableassurance.org)

