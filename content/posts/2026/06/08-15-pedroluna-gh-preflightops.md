---
title: PreflightOps
date: 2026-06-08 15:30:25 +00:00
tags:
  - pedroluna-gh
  - GitHub Actions
draft: false
repo: https://github.com/pedroluna-gh/preflightops
marketplace: https://github.com/marketplace/actions/preflightops
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pedroluna-gh/preflightops** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/preflightops) to find the latest changes.

## What's Changed

### PreflightOps v0.1.1 adds stronger ITSM/change-governance support for teams that need formal production change records.

This release builds on the initial v0.1.0 MVP by adding ServiceNow/Jira-ready change ticket summaries and optional live ticket push support, while keeping PreflightOps offline by default.

## Highlights

- Added `--ticket-output` to generate copy/paste-ready Markdown change summaries
- Added ServiceNow/Jira-ready change ticket output for CAB reviews, internal approvals, and formal change governance
- Added optional ServiceNow and Jira push support when explicitly enabled
- Added custom ticket template support
- Added `docs/TICKET_GENERATOR.md`
- Added `examples/ticket-critical.md`
- Updated GitHub Action inputs for ticket generation and optional ServiceNow/Jira usage
- Improved documentation around offline-by-default behavior
- Expanded tests to cover ticket generation and integration behavior
- 221 passing tests

## GitHub Action example

```yaml
- uses: pedroluna-gh/preflightops@v0.1.1
  with:
    services: services.yaml
    change: change.yaml
    terraform: tfplan.txt
    k8s: k8s.yaml
    output: preflightops-report.md
    ticket-output: preflightops-ticket.md
    fail-on: critical
```
## CLI example
preflightops \
  --services examples/services-critical-risk.yaml \
  --change examples/change-critical-risk.yaml \
  --terraform examples/terraform-critical.txt \
  --k8s examples/k8s-risk.yaml \
  --output report.md \
  --json-output report.json \
  --ticket-output ticket.md
## Safety model

By default, PreflightOps makes no outbound calls. It reads local input files and writes local reports.

Live ServiceNow or Jira pushes only happen when explicitly enabled by the user and should be used only in trusted workflows with credentials provided through secrets or environment variables.

## Current limitations
Terraform and Kubernetes scanners are still lightweight and rule-based.
ServiceNow/Jira support is intentionally minimal and focused on ticket summaries / optional push.
PreflightOps does not replace CAB, security review, incident management, or human judgment.
## Goal

Make operational risk visible before deployment and help teams enter formal change reviews with clearer evidence.
