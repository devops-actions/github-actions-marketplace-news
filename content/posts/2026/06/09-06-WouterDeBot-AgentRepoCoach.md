---
title: AgentRepoCoach — AI agent codebase health scoring
date: 2026-06-09 06:49:22 +00:00
tags:
  - WouterDeBot
  - GitHub Actions
draft: false
repo: https://github.com/WouterDeBot/AgentRepoCoach
marketplace: https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/WouterDeBot/AgentRepoCoach** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring) to find the latest changes.

## What's Changed

## What's new

**Java language adapter** — AgentRepoCoach now scores Java repositories. Detection via `pom.xml`, `build.gradle`, or `*.java` files. Scores error quality (`throw new` sites with fix hints), test quality (JUnit 4/5), navigability, and decision queryability.

**METHODOLOGY.md validation-status table** — component table now shows empirical vs theoretical evidence basis for each of the 6 CAH components.

### Install / upgrade
```
pip install --upgrade agentrepocoach
```

See [CHANGELOG.md](CHANGELOG.md) for full details.
