---
title: SAM Doctor AWS Deployment Diagnostics
date: 2026-08-08 14:41:20 +00:00
tags:
  - jakegold1647
  - GitHub Actions
draft: false
repo: https://github.com/jakegold1647/sam-doctor
marketplace: https://github.com/marketplace/actions/sam-doctor-aws-deployment-diagnostics
version: v0.9.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action analyzes the log of failed AWS SAM, CloudFormation, or GitHub Actions deployments locally and identifies common failure patterns by providing a concise diagnosis, redacted evidence lines, verification commands, and links to official documentation. It helps developers quickly diagnose issues without accessing AWS or making network calls, focusing on specific error lines and rollback context for effective troubleshooting.
---


Version updated for **https://github.com/jakegold1647/sam-doctor** to version **v0.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sam-doctor-aws-deployment-diagnostics) to find the latest changes.

## Action Summary

This GitHub Action analyzes the log of failed AWS SAM, CloudFormation, or GitHub Actions deployments locally and identifies common failure patterns by providing a concise diagnosis, redacted evidence lines, verification commands, and links to official documentation. It helps developers quickly diagnose issues without accessing AWS or making network calls, focusing on specific error lines and rollback context for effective troubleshooting.

## What's Changed

## Highlights

**Stable rule ids** (#37, contributed in #47). Every rule now carries a permanent id like `iam.deny.explicit`, in JSON reports as `rule_id` and in the rules catalog as `id`. Titles keep improving; the id is the integration key. `docs/stability.md` records the commitment.

**SARIF output** (#43). `--format sarif` on `diagnose`, `demo`, and `batch` emits a SARIF 2.1.0 run ready for GitHub code scanning, with the stable id as `ruleId`. A narrowed schema contract ships in `docs/schemas/sarif-report.schema.json` (contributed in #54).

**Confidence gating** (#38). `--fail-on-confidence high|medium` on the CLI and `fail-on-confidence` on the Action gate the exit status without hiding any finding. `sam-doctor init --fail-on-confidence` writes it into the generated workflow (contributed in #52).

**Safer init** (#36, contributed in #51). Generated workflows are manual-only (`workflow_dispatch`) until you opt into `--on-push` - trying `init` can no longer wire up an automatic AWS deployment.

**request-packet** (#41, contributed in #53). When no rule matches, `sam-doctor request-packet` writes a small redacted excerpt around the first likely error for a rule request - never the whole log.

**Windows CI** (#42). The documented support path is now enforced: the suite, gates, and the composite Action itself run on `windows-latest`.

## New rules

- The template failed SAM or CloudFormation schema validation (#30, contributed in #48)
- The deployment bucket denied access to the packaged artifacts (#28)
- An S3 bucket name in the template is already taken (#20)
- The template exceeds a CloudFormation size or count quota (#46)
- Another CloudFormation operation is already in progress on the stack (#44)
- SAM could not upload a build artifact referenced by the template (#45)

The catalog is now 44 rules, every one backed by a positive/negative fixture pair in the registry gate (#40, started in #49), and 20 have dedicated error-reference pages kept honest by the drift gate (#39, contributed in #50).

Full details in [CHANGELOG.md](https://github.com/jakegold1647/sam-doctor/blob/main/CHANGELOG.md). Thanks to @waterlemonnn for six merged PRs in this release.
