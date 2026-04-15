---
title: ZelC Kinetic Engine
date: 2026-04-15 22:02:33 +00:00
tags:
  - rocheston
  - GitHub Actions
draft: false
repo: https://github.com/rocheston/zelc
marketplace: https://github.com/marketplace/actions/zelc-kinetic-engine
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/rocheston/zelc** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zelc-kinetic-engine) to find the latest changes.

## Action Summary

ZelC is the first programming language designed specifically for autonomous, AI-driven cybersecurity operations. It automates the generation and execution of secure, evidence-based cybersecurity actions from natural language inputs, enabling seamless integration with AI agents and multi-cloud environments. Key features include native cybersecurity primitives, cryptographic proof generation, and a read-only execution model for enhanced safety.

## What's Changed

 
# 🚀 ZelC - The Kinetic Engine Enters the Pipeline

Welcome to the official GitHub Actions runner for the **ZelC Cybersecurity Programming Language**! 

With this release, we are bringing the power of the Rocheston Kinetic Engine directly into your CI/CD pipelines. General-purpose languages rely on fragile scripts and hopes. ZelC relies on **Intent, Physics, and Cryptographic Evidence.**

This Action allows DevSecOps teams to seamlessly enforce supply-chain integrity, generate immutable Software Bill of Materials (SBOMs), and mathematically prove that every build is secure before it ever reaches production.

---

### 🔥 What’s Included in v1.0.0

* **⚡ Native Pipeline Integration:** Run `.zelc` playbooks directly against your repository source code during the build process.
* **🛡️ Intent-Driven Execution:** Enforce strict kinetic scopes. If a script attempts an action outside of its allowed boundaries, the build fails automatically.
* **🧾 Immutable Evidence Generation:** Automatically output cryptographic receipts and SBOMs that can be saved as build artifacts for compliance and auditing.
* **🐳 Powered by the Official Docker Image:** Uses the streamlined `rocheston/zelc:latest` container for rapid, secure execution.

---

### 🛠️ How to Use It

Integrating ZelC into your DevSecOps workflow takes less than 60 seconds. Add the following step to your `.github/workflows/build.yml` file:

```yaml
steps:
  - name: Checkout Code
    uses: actions/checkout@v4

  - name: 🛡️ Run ZelC Kinetic Engine Scan
    uses: rocheston/zelc@v1.0.0
    with:
      playbook: '.github/security/audit.zelc'
      api_key: ${{ secrets.ZELFIRE_API_KEY }}

  - name: 📦 Upload Cryptographic Evidence
    uses: actions/upload-artifact@v4
    with:
      name: ZelC-Evidence-Receipt
      path: zelc_evidence.json
```

### 📚 Getting Started

New to the Cybersecurity Programming Language for the modern era? 
* **Read the Docs:** [ZelC Documentation & Visual Guide](https://rocheston.com/zelc/)
* **Learn the Syntax:** [Intent Blocks & The Physics Constraint Engine](https://rocheston.com/zelc/reference.html)
---
**The modern language for Security Operations, Compliance, and AI-Driven Defense.** *Built for SOC analysts, security engineers, and compliance teams.* 🟢 ACTIVE PROTOCOL

Built with 💛 by Haja Mo


