---
title: kramlipi CI Repair
date: 2026-07-18 22:39:09 +00:00
tags:
  - kramlipi
  - GitHub Actions
draft: false
repo: https://github.com/kramlipi/code-agent-action
marketplace: https://github.com/marketplace/actions/kramlipi-ci-repair
version: v0.1.6
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, `kramlipi/code-agent-action`, automates CI verification and repair processes by running a specified command (`verify-cmd`) to check the status of a workflow run. It ensures that the build is green before proceeding with further tasks or generating a draft pull request if specified. The action supports various expert modes for different types of fixes, such as bug-fixing, code-review, and testing intelligence. It also manages secrets for authentication and licensing with options for free CI to paid upgrades via license API.
---


Version updated for **https://github.com/kramlipi/code-agent-action** to version **v0.1.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kramlipi-ci-repair) to find the latest changes.

## Action Summary

This GitHub Action, `kramlipi/code-agent-action`, automates CI verification and repair processes by running a specified command (`verify-cmd`) to check the status of a workflow run. It ensures that the build is green before proceeding with further tasks or generating a draft pull request if specified. The action supports various expert modes for different types of fixes, such as bug-fixing, code-review, and testing intelligence. It also manages secrets for authentication and licensing with options for free CI to paid upgrades via license API.

## What's Changed

## kramlipi CI Repair v0.1.4

Verify-gated CI repair for GitHub Actions.

```yaml
- uses: kramlipi/code-agent-action@v0.1.4
  with:
    expert: bug-fix
    verify-cmd: pytest -q
    publish: true
  env:
    GEMINI_API_KEY: ${{ secrets.GEMINI_API_KEY }}
```

The Solution: A Senior Engineer Agent in Your CI Pipeline
kramlipi CI Repair doesn't just comment on problems; it actively solves them. It steps into your workflow exactly like a seasoned team lead to accelerate development and guarantee code quality.

Auto-Fixes Broken Tests: When a build fails, the agent jumps into the workspace, diagnoses the failure, and iteratively rewrites the code until your test suite passes successfully.

Improves Code Coverage: It doesn't just patch the bug; it proactively writes new test cases to cover the edge cases it uncovers, preventing future regressions.

Senior-Level Code Reviews: It provides deep, meaningful review comments on your Merge Requests (MRs) to catch design flaws early, keeping your main branches pristine and development fast.

Delivers Ready-to-Merge PRs: Once the agent successfully turns the build green, it packages the fix into a clean draft PR. Your team only reviews work that is already verified.

How it Differs from the Noise
Not an IDE Distraction: It stays out of your way, running asynchronously in the background only when your pipeline needs it.

No Comment Spam: Every PR comment is structured like a precise, senior engineering code review—actionable and context-aware.

Zero Data Lock-in: We don’t ask you to "upload your monorepo" to a third-party cloud. The product source stays private, and execution happens safely inside your ecosystem. You use your own AI model Gemini, Claude etc.

Built on absolute trust
Hard Boundaries: The agent is explicitly blocked from editing .github/workflows—it will never "fake" a green build.

Complete Security Control: Customer-hosted, running via a public binary release with Bring-Your-Own-LLM (BYO LLM) API keys.

Links
Get Started in 2 Minutes: [kramlipi.github.io/get-started](https://kramlipi.github.io/get-started/)
Website: https://www.kramlipi.com/
