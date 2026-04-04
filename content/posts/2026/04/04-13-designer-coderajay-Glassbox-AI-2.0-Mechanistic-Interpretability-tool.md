---
title: Glassbox EU AI Act Compliance Audit
date: 2026-04-04 13:40:58 +00:00
tags:
  - designer-coderajay
  - GitHub Actions
draft: false
repo: https://github.com/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool
marketplace: https://github.com/marketplace/actions/glassbox-eu-ai-act-compliance-audit
version: v4.2.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/designer-coderajay/Glassbox-AI-2.0-Mechanistic-Interpretability-tool** to version **v4.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/glassbox-eu-ai-act-compliance-audit) to find the latest changes.

## Action Summary

Glassbox is an open-source toolkit designed to automate the creation of technical documentation required for compliance with the EU AI Act Annex IV, streamlining regulatory processes for high-risk AI systems. It also offers advanced tools for researchers to analyze transformer models, enabling efficient discovery of minimal faithful circuits responsible for predictions. This action supports both white-box and black-box AI models while providing structured outputs to aid compliance and interpretability efforts.

## What's Changed

**5 bugs fixed — found via end-to-end test (pip install → audit report)**

### Fixes

**1. RMSNorm fold dimension mismatch** (`multi_arch.py`)  
TransformerLens stores W_Q as `(n_heads, d_model, d_head)`. Code assumed `(n_heads, d_head, d_model)`. `gamma.unsqueeze(0)` produced wrong broadcast shape. Fixed: `gamma.unsqueeze(1)`.

**2. Comprehensiveness = 0 for all non-IOI prompts** (`core.py`)  
Name-swap fallback produced a corrupted prompt with identical prefix to clean, so corrupt-patching was a no-op. Added degenerate-corruption detection + `_comp_zero_ablation()` fallback. Factual recall now gives comp≈0.40, sentiment≈0.27.

**3. GlassboxV2 accepts model name string** (`core.py`)  
`GlassboxV2("gpt2")` now works — auto-loads via `HookedTransformer.from_pretrained()`.

**4. Warning when clean_ld ≤ 0** (`core.py`)  
Model prefers distractor over correct token → circuit results unreliable. Now emits logger.warning.

**5. CrossModelComparison Pearson r always 0** (`cross_model.py`)  
Only circuit heads (1-10) were stored in attributions dict. Now stores all n_layers×n_heads attributions. Pearson r: 0.000 → 0.127 (distilgpt2 vs gpt2).

```bash
pip install glassbox-mech-interp==4.2.2
```
