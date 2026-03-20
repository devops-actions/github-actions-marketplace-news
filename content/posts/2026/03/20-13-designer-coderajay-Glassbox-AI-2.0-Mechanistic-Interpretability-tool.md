---
title: Glassbox EU AI Act Compliance Audit
date: 2026-03-20 13:37:51 +00:00
tags:
  - designer-coderajay
  - GitHub Actions
draft: false
repo: https://github.com/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool
marketplace: https://github.com/marketplace/actions/glassbox-eu-ai-act-compliance-audit
version: v3.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool** to version **v3.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/glassbox-eu-ai-act-compliance-audit) to find the latest changes.

## Action Summary

Glassbox 3.0.0 is an open-source toolkit designed to automate the creation of Annex IV technical documentation required under the EU AI Act for high-risk AI systems, streamlining compliance processes for both open-source and proprietary AI models. It also provides advanced tools for researchers to identify and analyze the minimum faithful circuit in transformer models, offering significant performance improvements in mechanistic interpretability tasks. Key capabilities include automated compliance report generation, black-box model auditing, and a REST API for integration into workflows.

## Release notes

## Glassbox v3.0.0 — Enterprise EU AI Act Compliance Platform

> **Enforcement deadline: August 2026.** Every high-risk AI system in financial services, healthcare, HR, and legal must be able to explain its decisions. Glassbox is the audit infrastructure.

---

### What's new in v3.0.0

#### 🧪 BiasAnalyzer — EU AI Act Article 10(2)(f)
Three bias tests built for regulatory submission:
- **`counterfactual_fairness_test()`** — swaps demographic attributes in prompt templates, measures probability gap across groups
- **`demographic_parity_test()`** — flags positive outcome rate disparity across demographic groups  
- **`token_bias_probe()`** — detects stereotypical associations between demographic and role tokens
- Works **offline** (pre-computed logprobs) or **online** (live `model_fn`)
- `BiasReport.to_markdown()` generates Annex IV Section 5 ready for submission

```python
from glassbox import BiasAnalyzer
ba = BiasAnalyzer()
result = ba.counterfactual_fairness_test(
    prompt_template="The {attribute} applied for the loan",
    groups={"gender": ["male applicant", "female applicant"]},
    target_tokens=["approved", "denied"],
    model_fn=my_model,
)
```

#### 🔔 Webhooks
Full webhook system on the REST API:
- `POST /v1/webhooks` — register callback URL with HMAC-SHA256 signing
- Fires on `job.completed` and `job.failed` events
- `X-Glassbox-Event` + `X-Glassbox-Signature` headers on every delivery

#### 📊 Multi-Audit History Dashboard  
- F1 faithfulness trend chart (Chart.js) with Grade C threshold line
- Grade distribution bar chart (A/B/C/D counts)
- Audit table with Date/Model/Grade/F1/Status
- "Load from API" button connects to `GET /v1/audit/reports`

#### 🖼️ Circuit SVG Export
- "Download SVG" button in the D3 circuit graph panel
- Exports standalone `glassbox-circuit.svg` with inlined dark-mode styles
- Paper-ready at any resolution

#### 📋 Risk Register — Article 9
Persistent cross-audit risk tracking:
- `ingest_annex_report()` auto-extracts Section 5 risks from any AnnexIVReport
- Deduplication + occurrence counting across sessions  
- Status lifecycle: `open → mitigated | accepted | escalated`
- `trend_summary()` returns `compliance_health: green | amber | red`
- `to_markdown()` for embedding in PRs and reports

```python
from glassbox import RiskRegister
rr = RiskRegister("risks.json")
rr.ingest_annex_report(annex, model_name="gpt2")
print(rr.trend_summary())  # {'compliance_health': 'amber', 'open': 2, ...}
```

#### 🧪 Test Suites
- 76 new tests: `tests/test_audit_log.py` (32) + `tests/test_widget.py` (44)
- All offline with `tmp_path` fixtures

---

### Install

```bash
pip install glassbox-mech-interp==3.0.0
```

### Quick start

```python
from glassbox import GlassboxV2, AuditLog, BiasAnalyzer, RiskRegister, AnnexIVReport

gb   = GlassboxV2(model)
log  = AuditLog("audit.jsonl")
rr   = RiskRegister("risks.json")

result = gb.analyze("The capital of France is", " Paris", " London")
log.append_from_result(result)

annex = AnnexIVReport(model_name="GPT-2", provider_name="Acme Corp",
                       provider_address="London, UK",
                       system_purpose="Financial decision support",
                       deployment_context=DeploymentContext.FINANCIAL_SERVICES)
annex.add_analysis(result)
rr.ingest_annex_report(annex)
```

---

**Full changelog:** [CHANGELOG.md](CHANGELOG.md)  
**PyPI:** `pip install glassbox-mech-interp`  
**HuggingFace Space:** [designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool](https://huggingface.co/spaces/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool)

**Full Changelog**: https://github.com/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool/compare/v3.0.0...v3.0.0
