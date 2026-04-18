---
title: Agent-Blackbox Blame Finder
date: 2026-04-18 13:57:41 +00:00
tags:
  - hjs-spec
  - GitHub Actions
draft: false
repo: https://github.com/hjs-spec/Agent-Blackbox
marketplace: https://github.com/marketplace/actions/agent-blackbox-blame-finder
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/hjs-spec/Agent-Blackbox** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-blackbox-blame-finder) to find the latest changes.

## Action Summary

**Agent Blame-Finder** is a GitHub Action designed to automate fault analysis in multi-agent systems by tracking and identifying the root cause of failures. It installs a "black box" in each agent to record decision-making processes, their dependencies, timestamps, and cryptographic signatures to ensure accountability. The action provides instant blame analysis, visualizes causality chains, and highlights problematic agents, saving time and effort in troubleshooting complex systems.

## What's Changed

## 🚀 Initial Release: Agent Blame-Finder

Agent Blame-Finder is now available! It acts as a cryptographic blackbox for multi-agent systems, enabling you to pinpoint which agent caused a failure in seconds.

### ✨ Why This Exists

Multi-agent failures are notoriously hard to debug. Agents blame each other, and logs don't show causal responsibility. Agent Blame-Finder records every decision with a cryptographically signed chain of evidence. When something breaks, you get a definitive answer—not finger-pointing.

### 🔧 Core Capabilities

- **One-Click Blame Analysis**: Input an incident ID and instantly locate the broken link in the responsibility chain.
- **Causality Tree Visualization**: See agent decision flows as a Git-like tree.
- **Cryptographic Signatures**: Every decision is signed with Ed25519, making denial impossible.
- **Visual Dashboard**: Highlight failed nodes and view blame distribution with pie charts.

### 📦 Quick Install

```bash
pip install agent-blame-finder
```

### 🚀 Usage Example

```python
from blame_finder import BlameFinder

finder = BlameFinder(storage="./logs")

@finder.trace(agent_name="Coder-Agent")
def write_code(requirement: str) -> str:
    return "print('hello world')"

# Run agent
write_code("write a hello world")

# Find who messed up
print(finder.blame(incident_id="task_123"))
```

### 📊 What's Included in This Release

- Python SDK 
- TypeScript SDK 


### 🔗 Links

- [JEP Protocol Reference Implementation](https://github.com/hjs-spec)
- [JAC Accountability Chain](https://github.com/hjs-spec)
- [Full Documentation](https://github.com/hjs-spec/agent-blackbox#readme)
