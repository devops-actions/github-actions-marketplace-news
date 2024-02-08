---
title: Repository Gardening
date: 2024-02-08 03:26:21 +00:00
tags:
  - Automattic
  - GitHub Actions
draft: false
repo: Automattic/action-repo-gardening
marketplace: https://github.com/marketplace/actions/repository-gardening
version: v5.0.0
dependentsNumber: "58"
---


Version updated for **Automattic/action-repo-gardening** to version **v5.0.0**.
- This action is used across all versions by **58** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repository-gardening) to find the latest changes.

## Release notes

## 5.0.0 - 2024-02-07
### Added
- Auto-label features in the mu-wpcom package. [#32221]
- Board triage: automate triage of Verbum-related issues. [#35326]
- Board triage task: automatically add issues classified as bugs to the project board. [#33493]
- Gather Support References task: automatically label issues that include support references. [#32398]
- Label automations: mark revert PRs with a label. [#33472]
- Label cleanup: Remove `[Status] Stale` from closed PRs. [#31743]
- New task: updateBoard allows you to automate updates to a GitHub Project Board fields to match priority labels on an issue in your repo. [#33469]
- Project Board automations: automatically update the status field based on the "Triaged" label. [#33482]
- Project Board triage: automatically assign teams to an issue based on issue labels. [#34313]
- Repo Gardening Action: Add add_labels input to addLabels task for setting custom path: label matching directly in the workflow. [#32306]

### Changed
- addMilestone task: if a milestone description contains a string with "Code Freeze: YYYY-MM-DD" or "Branch Cut: YYYY-MM-DD", and that date has elapsed, then don't add PRs to that milestone. This prevents merged PRs from being automatically added to milestones that have entered a code freeze. [#31973]
- Board triage: update team Zap's assignment settings. [#35466]
- Check description task: support different phrasing in milestone descriptiion. "Code Freeze" can also be "Branch cut". [#31987]
- Description task: update milestone details to include information about the different release schedules. [#33675]
- Gather Support References: also gather p2 comment references. [#33979]
- Gather Support References: consider forum links to be a valid support reference. [#35148]
- Issue Triage: update the "Escalated" status label to "Priority Review Triggered". [#33756]
- Label cleanup: Task now runs for closed issues as well as PRs. [#31743]
- Labelling: handle automatic labeling of Contact Form changes in the package. [#33864]
- Labels: prefix module labels with [Feature], to match new bug reporting tool. [#32118]
- Labels: update "Premium Content" to "Paid Content". [#33119]
- Labels: update Stats's label name. [#32916]
- Project Board triage: handle issues waiting on a third-party fix when auto-triaging. [#33876]
- Updated package dependencies. [#33650]
- Update the label used to mark issues that have reports from Happiness Engineers. [#32711]
- Use the node20 runner instead of the deprecated node16 runner. [#35262]

### Removed
- Description task: remove reference to "Required review" check that was removed a while back. [#33683]
- Status checks: remove commit verification status check. [#33075]

### Fixed
- Adds Woo Sync to GH label name exceptions. [#33713]
- Automated Board triage: fix event reference to trigger the action. [#34482]
- Board triage: ensure the task works when the organization name is capitalized [#34980]
- Don't crash on milestones with null description. [#32599]
- Issue references: avoid changing capitalization of p2 shortlinks. [#34426]
- Issue references: do not gather support references in Pull Requests, only in issues. [#34426]
- Project Board automations: do not run any automation on closed issues. [#33539]
