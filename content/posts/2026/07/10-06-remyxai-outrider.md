---
title: Remyx Outrider
date: 2026-07-10 06:23:30 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.14
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.14**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Rewrites the preflight and INVOCATION.md prompts to enumerate three legitimate implementation modes instead of a binary port-or-Issue choice.

## Three modes

1. **Direct port** — implement the paper's method as-described. Requires the repo to host the paper's full infrastructure.
2. **Adapted port** — implement the paper's *core mechanism* at full fidelity while substituting *auxiliary components* (learned estimators, bespoke optimizers, benchmark suites) with target-native equivalents (parameter-free proxies, existing library functions, scope cuts).
3. **Inspired experiment** — take the paper's core *insight* or *framing* and implement a target-native experiment drawing on it. The PR applies the paper's idea rather than reproducing its method.

Route to Issue only when all three modes fail. The coding session's self-review must cite which mode was used and, for Modes 2/3, name the specific substitutions or reframed insight.

## Motivation

The prior rubric treated any auxiliary-infrastructure gap as a Route-to-Issue condition, biasing branch-creation rate to ~0 on targets where top-ranked candidates all bundle training subsystems the repo doesn't host.

## Validation

- **Diffusers A/B/C**: 0 branches across baseline / v1-aux-substitution / v2. Confirmed the impedance mismatch is structural on that target class (all top candidates were training-time methods; diffusers is inference-time).
- **Lerobot A/B**: 0 → 1 branch. Exemplar: WorldSample's value-overestimation-gated-training-signal insight adapted to LeRobot's SAC critic ensemble via a new parameter-free `value_overestimation.py` wired into `_compute_loss_critic`. Honest self-review explicitly cites Mode 3: *"This is an inspired adaptation, not a port: there is no world model and no learned scheduler."*

Full suite green (859/859).
