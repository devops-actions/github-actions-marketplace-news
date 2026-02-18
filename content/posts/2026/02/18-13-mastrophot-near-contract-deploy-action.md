---
title: NEAR Contract Deploy
date: 2026-02-18 13:27:27 +00:00
tags:
  - mastrophot
  - GitHub Actions
draft: false
repo: https://github.com/mastrophot/near-contract-deploy-action
marketplace: https://github.com/marketplace/actions/near-contract-deploy
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mastrophot/near-contract-deploy-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/near-contract-deploy) to find the latest changes.

## Action Summary

The NEAR Contract Deploy Action automates the deployment of compiled WASM smart contracts to NEAR blockchain networks (mainnet, testnet, or custom networks) directly from GitHub Actions. It simplifies the deployment process by handling authentication with a signer account and private key, managing retries for transient RPC errors, and providing useful outputs like transaction hashes and explorer URLs for further integration. This action streamlines contract deployment workflows, making it easier and more reliable for developers to deploy and monitor their contracts.

## Release notes

Production release of NEAR Contract Deploy GitHub Action.

## Features
- Deploy compiled `.wasm` contracts to NEAR (`mainnet`/`testnet`/custom RPC)
- Inputs: `network`, `account-id`, `private-key`, `contract-path`
- Optional controls: `rpc-url`, `explorer-base-url`, retry settings
- Outputs: `tx-hash`, `block-hash`, `explorer-url`, `network`, `account-id`

## Usage
```yaml
- uses: near-marketplace/deploy-contract@v1
  with:
    network: testnet
    account-id: ${{ secrets.NEAR_ACCOUNT_ID }}
    private-key: ${{ secrets.NEAR_PRIVATE_KEY }}
    contract-path: ./target/wasm32-unknown-unknown/release/contract.wasm
