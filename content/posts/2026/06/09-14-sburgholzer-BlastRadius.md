---
title: Blast Radius - AWS Infrastructure Risk Analysis
date: 2026-06-09 14:48:35 +00:00
tags:
  - sburgholzer
  - GitHub Actions
draft: false
repo: https://github.com/sburgholzer/BlastRadius
marketplace: https://github.com/marketplace/actions/blast-radius-aws-infrastructure-risk-analysis
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sburgholzer/BlastRadius** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blast-radius-aws-infrastructure-risk-analysis) to find the latest changes.

## What's Changed

## Installation

Download and run with Node.js 20+:
```bash
curl -sL https://github.com/sburgholzer/BlastRadius/releases/download/v0.1.0/blast-radius.js -o blast-radius.js
chmod +x blast-radius.js
./blast-radius.js analyze --format cdk --stack MyStack --ai-gate
```

Or use directly:
```bash
node blast-radius.js analyze --format terraform-plan --input plan.json --threshold 75 --ci
```


## What's Changed
* ci: add PR check workflow with path-based filtering and PR comments by @sburgholzer in https://github.com/sburgholzer/BlastRadius/pull/1
* ci: add release workflow - bundles CLI on version tags by @sburgholzer in https://github.com/sburgholzer/BlastRadius/pull/2

## New Contributors
* @sburgholzer made their first contribution in https://github.com/sburgholzer/BlastRadius/pull/1

**Full Changelog**: https://github.com/sburgholzer/BlastRadius/commits/v0.1.0
