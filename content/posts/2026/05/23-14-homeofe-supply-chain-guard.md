---
title: Supply Chain Guard
date: 2026-05-23 14:11:43 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.2.17
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.2.17**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

The **supply-chain-guard** GitHub Action is an open-source security scanner designed to enhance software supply chain security across multiple ecosystems, including npm, PyPI, Docker, Terraform, GitHub Actions, and more. It automates the detection of malware campaigns, code-level threats, supply chain attacks, credential leaks, and infrastructure vulnerabilities while verifying package provenance and generating accurate Software Bill of Materials (SBOMs). Its comprehensive capabilities help identify and correlate security risks into attack-chain incidents, mitigating threats like account takeovers, dependency confusion, and untrusted CI/CD configurations.

## What's Changed

### v5.2.17 (2026-05-23)
**Threat intel: Megalodon GitHub workflow injection + DPRK OtterCookie Node.js stealer (May 22, 2026)**

Two May 22 disclosures, both pivoting on adjacent IPs in `216[.]126[.]225[.]0/24` (likely shared DPRK-adjacent infrastructure).

- **Megalodon GitHub Actions workflow injection** (The Hacker News, 2026-05-22): an automated campaign pushed 5,718 malicious commits to 5,561 GitHub repositories in a six-hour window. The attacker forged author identities as `build-bot`, `auto-ci`, `ci-bot`, and `pipeline-bot`, then injected GitHub Actions workflows that ran base64-encoded bash to exfiltrate CI env vars, AWS / GCP credentials, SSH private keys, OIDC tokens, and Docker / Kubernetes / Terraform configs to `216[.]126[.]225[.]129:8443`. Added the C2 IP plus a new `MEGALODON_C2_ENDPOINT` rule that catches the endpoint with or without the port.
- **DPRK OtterCookie Node.js stealer** (SANS ISC diary 33006, 2026-05-22): sample uploaded to VirusTotal as `extracted-decoded.js`; obfuscator.io-style obfuscation; targets 41 crypto-wallet Chrome extension IDs (MetaMask, Phantom, Coinbase, Ledger) plus 200+ sensitive file patterns (`.env`, `.pem`, `.p12`, `.jks`, SSH keys, seed phrases) across Windows-via-WSL, macOS, and Linux. C2 over three ports on `216[.]126[.]225[.]243`: 8085 (browser creds), 8086 (file uploads), and 8087 with WebSocket reverse shell at `/api/notify`. Sample SHA-256 `049300aa5dd774d6c984779a0570f59610399c71864b5d5c2605906db46ddeb9`; highly specific hardcoded HMAC-SHA256 key `SuperStr0ngSecret@)@^`. Added two new rules (`OTTERCOOKIE_HMAC_KEY`, `OTTERCOOKIE_C2_ENDPOINT`) plus IP, URL, and hash IOCs, and a campaign test block.


