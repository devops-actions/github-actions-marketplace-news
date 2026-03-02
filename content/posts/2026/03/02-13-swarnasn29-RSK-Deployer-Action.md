---
title: Rootstock Foundry Deployer
date: 2026-03-02 13:18:40 +00:00
tags:
  - swarnasn29
  - GitHub Actions
draft: false
repo: https://github.com/swarnasn29/RSK-Deployer-Action
marketplace: https://github.com/marketplace/actions/rootstock-foundry-deployer
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/swarnasn29/RSK-Deployer-Action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rootstock-foundry-deployer) to find the latest changes.

## Action Summary

The **Rootstock Foundry Deployer Action** is a GitHub Action designed to simplify and automate the deployment of Foundry smart contracts to Rootstock (RSK) networks, including Mainnet and Testnet. It addresses common deployment challenges such as handling legacy transaction errors, selecting the correct Blockscout API, and ensuring sufficient RBTC balance for deployment. Key features include automated gas estimation, pre-deployment validation, contract verification support, and exporting useful deployment metadata as outputs for seamless integration into CI workflows.

## Release notes

**Automated Foundry deployments for Rootstock.**

This Action simplifies the process of deploying smart contracts to Rootstock Mainnet and Testnet.

**Key Features:**

- Zero-Config Compatibility: Automatically handles the --legacy flag required by Rootstock.
- Smart Verification: Auto-selects the correct Blockscout API endpoints for contract verification based on Chain ID.
- Safety Guards: Integrated balance checks prevent failed deployments due to low RBTC.
- DevOps Ready: Exports contract_address and transaction_hash as Action outputs for downstream jobs.

**What's Included:**

- Docker-based GitHub Action environment.
- Pre-installed Foundry toolchain (Forge/Cast).
- Robust bash entrypoint with error handling.
