---
title: iamprover
date: 2026-07-31 06:30:02 +00:00
tags:
  - UTKARSH698
  - GitHub Actions
draft: false
repo: https://github.com/UTKARSH698/iamprover
marketplace: https://github.com/marketplace/actions/iamprover
version: v0.6.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `iamprover` is a tool that uses SMT solvers to formally verify security invariants over AWS IAM policies. It encodes policy-evaluation semantics into Z3 and provides proofs or concrete counterexamples showing how security invariants hold or fail, respectively. The action automates the verification of IAM policies by encoding them in YAML and checking against pre-defined security invariants.
---


Version updated for **https://github.com/UTKARSH698/iamprover** to version **v0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iamprover) to find the latest changes.

## Action Summary

`iamprover` is a tool that uses SMT solvers to formally verify security invariants over AWS IAM policies. It encodes policy-evaluation semantics into Z3 and provides proofs or concrete counterexamples showing how security invariants hold or fail, respectively. The action automates the verification of IAM policies by encoding them in YAML and checking against pre-defined security invariants.

## What's Changed

Formally verify AWS IAM security invariants using the Z3 SMT solver. A PASS is a mathematical proof that no violating request exists within the modeled semantics; a FAIL produces a concrete counterexample showing exactly which principal, action, resource, and policy combination violates the invariant. This release moves iamprover from checking one principal's direct permissions to reasoning about the whole principal graph.

## New

- **Transitive `sts:AssumeRole` reachability (`--closure assume-role`).** Every invariant can now extend over principals reachable through bounded AssumeRole chains, not just direct grants — catching escalation paths where a principal has no direct access but can assume into a role that does. An edge exists when the source's identity policy grants an assume-role action on the target and the target's trust policy allows the source. Guarded trust conditions (for example `sts:ExternalId`, `aws:PrincipalOrgID`, or source-account constraints) are conservatively treated as traversable whenever iamprover cannot prove they prevent the assumption, preserving the tool's sound over-approximation guarantee.
- **`--max-hops` (default 4)** bounds chain length for predictable runtime on large live-account graphs.
- Counterexamples show the full chain, one step per hop, ending in the actual violation.
- `--closure` is a mode, not a boolean, so future closure relations (e.g. `iam:PassRole` into service execution) slot in as new values without another flag.

## Usage

```bash
pip install iamprover

aws iam get-account-authorization-details > gaad.json
iamprover verify --gaad gaad.json --invariants invariants.yaml --closure assume-role
```

Or as a GitHub Action:

```yaml
- uses: UTKARSH698/iamprover@v0.6.0
  with:
    gaad: gaad.json
    invariants: invariants.yaml
    closure: assume-role
```

## Soundness

Reachability preserves iamprover's sound over-approximation guarantee. Graph construction and traversal are performed as a finite structural computation in Python, while authorization decisions for each candidate edge and the final violating request continue to use iamprover's existing Z3-based policy evaluation engine. Unsupported or ambiguous trust constructs are conservatively treated as traversable whenever iamprover cannot prove they prevent the assumption, ensuring they can introduce false positives but never hide a real escalation path.

## Also included since v0.4

- Permission boundaries
- SCPs
- RCPs

Full changelog: https://github.com/UTKARSH698/iamprover/compare/v0.4.0...v0.6.0
