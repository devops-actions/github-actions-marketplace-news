---
title: Dissent Review
date: 2026-03-16 06:13:23 +00:00
tags:
  - itsarbit
  - GitHub Actions
draft: false
repo: https://github.com/itsarbit/dissent
marketplace: https://github.com/marketplace/actions/dissent-review
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/itsarbit/dissent** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dissent-review) to find the latest changes.

## Action Summary

Dissent is a GitHub Action that utilizes swarm intelligence to automate code reviews by deploying AI agents with specialized expertise (e.g., security, performance, architecture). These agents independently review code changes, debate findings, and provide ranked insights, fostering deeper analysis and reducing false positives. It streamlines pull request reviews by posting consensus-driven comments directly on diffs and supports custom reviewer personas and various AI models.

## Release notes

## What's new in v0.2.0

### Review quality improvements
- **New correctness persona** - 6th built-in agent focused on logic bugs: cache key completeness, wrong scope mutations, off-by-one errors, missing conditional cases. This is the agent that catches bugs the other 5 miss.
- **Sharper prompts** - findings now require specific titles (naming the exact problem), concrete triggering scenarios in the detail, and code-level suggestions. No more vague "cache issue" titles.
- **Hallucinated challenge filter** - agents must quote the exact claim they're disputing (`quoted_claim` field). Challenges where the quoted text doesn't appear in the actual finding are filtered out, preventing agents from challenging things the finding never said.

### Deduplication and signal quality
- **File+line deduplication** - findings from different agents pointing to the same location are merged into one card with co-authors listed, instead of appearing as separate near-duplicate entries.
- **Endorsement deduplication** - each agent can only endorse or challenge a given finding once across all debate rounds. Fixes the "Endorsed by: Architecture, Testing, Architecture, Testing..." spam.
- **Debate prompt tightened** - agents challenged to identify specific incorrect claims, not just general disagreement.

### GitHub bot improvements  
- **No more duplicate reviews** - re-running dissent-pr on the same PR now supersedes old Dissent reviews (marks them "superseded" with a link to the latest), so the PR stays clean.

### README
- New **"Reading the Output"** section explaining consensus score formula, endorsements, challenges, withdrawn, and swarm summary categories.
