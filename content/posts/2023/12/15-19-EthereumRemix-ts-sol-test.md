---
title: JS & TS Solidity Unit Tests Action
date: 2023-12-15 19:13:11 +00:00
tags:
  - EthereumRemix
  - GitHub Actions
draft: false
repo: EthereumRemix/ts-sol-test
marketplace: https://github.com/marketplace/actions/js-ts-solidity-unit-tests-action
version: v1.4.0
dependentsNumber: "11"
---


Version updated for **EthereumRemix/ts-sol-test** to version **v1.4.0**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/js-ts-solidity-unit-tests-action) to find the latest changes.

## Release notes

- Fixed bugs introduced by migrating remix provider to web3 v4.
- Fix loading dependencies using remix-url-resolver

#### Options
```yml
  evm-version:
    description: 'set evm version (e.g: istanbul, berlin etc)'
    required: false
  optimize:
    description: 'set optimize (e.g: true, false)'
    required: false
    default: 'false'
  optimizer-runs:
    description: 'set optimizer runs (e.g: 200)'
    required: false
    default: '0'
  node-url:
    description: 'set node url (e.g: https://mainnet.infura.io/v3/your-api-key)'
    required: false
  block-number:
    description: 'set block number (e.g: 123456)'
    required: false
    default: 'latest'
  hard-fork:
    description: 'set hard fork (e.g: istanbul, berlin etc. See full list of hard forks here: https://github.com/ethereumjs/ethereumjs-monorepo/tree/master/packages/common/src/hardforks)'
    required: false
```

#### Example
```yml
name: sol-test-js
on: [push]

jobs:
  run_sample_test_job:
    runs-on: ubuntu-latest
    name: A job to run solidity tests in js
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Run Custom Fork Test
        uses: EthereumRemix/ts-sol-test@v1.4.0
        with:
          test-path: 'sample/tests/custom/hardFork.test.ts'
          contract-path: 'sample/contracts/custom/mainnet_ens.sol'
          compiler-version: '0.8.17'
          hard-fork: 'merge'
          node-url: 'https://rpc.archivenode.io/e50zmkroshle2e2e50zm0044i7ao04ym'
```

## Contributors
Yann Levreau @yann300, David Disu @ioedeveloper 
