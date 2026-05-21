---
title: Pipelock Agent Security Scan
date: 2026-05-21 06:42:57 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v2.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v2.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source AI firewall designed to secure AI agents by providing network scanning, process containment, policy enforcement, and independently verifiable action receipts generated outside the agent’s trust boundary. It addresses critical security challenges such as agent egress security, data loss prevention (DLP), and prompt injection defense while acting as a proxy for outbound traffic and scanning for vulnerabilities. Key capabilities include mediator-signed attestation, robust credential and injection pattern detection, and compatibility with various AI tools and SDKs.

## What's Changed

## Changelog
* 42a3a21b0dc5fe0b1442b959c05428f9c33746fa Add MCP launcher config contract (#561)
* 629a05186c2a31951bdb3f2a731c1925792eff5f Add cluster MCP proxy contract to sidecar init (#559)
* b7f5856e03e3a177e0b4eda2a5027d482a9af132 Add pipelock-verifier: standalone Audit Packet + receipt validator (#500)
* cbca12008ee4e8667e432922ea75480fc1cf4515 Add route-scoped non-JSON redaction exceptions (#506)
* 19e0a93b2bef37c15f3589d666f54e4265e8fb7a Add signed MCP integrity manifest trust (#560)
* 99693acf11aa14c07eb161353917cf746709357c Harden redaction and transport coverage for 2.5 (#568)
* 9ced70bbdfc2e0fbf7f6ec314cbbadcecfb4dee0 Tune adaptive burst scoring and Browser Shield defaults (#550)
* 7db413ba1e4c1aa3ad981bb7a550bb3ad45b8e30 chore(deps): bump idna in /.github in the pip group across 1 directory (#565)
* 7682367991203dd8e00dd5afab2c9ec84e394227 chore(deps): migrate from dependabot to renovate with cooldown (#543)
* ebdd08f8144e7c9b58d0a0067f2d14e58bc757c0 chore(verifiers): add prettier to TS verifier + pre-commit hooks for rust/ts (#517)
* e7a5a4adab8777dadc8792c88eb889637b4d5c55 ci: Update ci-actions (#555)
* 037f3244fe041a43e09340407a83f770f235a904 ci: add verifier workflow for TypeScript and Rust SDKs (#511)
* 37626639abf926609324924f3508a465a8952e69 ci: bump the ci-actions group with 4 updates (#504)
* 7537dea00fc0cb75cf8b34eea34c5188ab36972f deps: Pin ghcr.io/luckypipewrench/pipelock Docker tag to 3dcd7e8 (#544)
* 3840794100ef9d4ec6af3bf6626ec1cb3ed23581 deps: Update Rust crate thiserror to v2 (#556)
* 72172529d1fd04795bf4e0fe92485cfa555c197e deps: Update docker-base-images (#547)
* e2096f0a57173627533cc7dcbfdd8e5fe1ff2b14 deps: Update gcr.io/oss-fuzz-base/base-builder-go Docker digest to 3efcff1 (#563)
* 1c6caa0d5d56c68711efae59ada9afc925eebec8 deps: Update gcr.io/oss-fuzz-base/base-builder-go Docker digest to 803021b (#553)
* e23dcf61f5bca30b72550c7cc4779412d146a989 deps: Update ts-verifier (#554)
* fa9c4cd97f84ccfcbd6d2ff28221622b94b98f47 deps: bump cryptography (#502)
* bd79004d8bfb2e4be51b84687d9e54ceec2cd773 deps: bump the go-deps group with 6 updates (#503)
* f81afff08228edd4dbbddf95daed802d51eb9a80 deps: bump the pr-review-deps group across 1 directory with 2 updates (#509)
* 5285686ae8d83ee5f0094f14f062765e3c096492 deps: bump urllib3 from 2.6.3 to 2.7.0 in /.github (#507)
* 4cf74d217383084352e3ff74c695712357064466 docs(security): add policy and threat-model documents (#515)
* f184d87aaf34de4d60eb33aa5799d1c701430bed emit: optional OTel agent.threat.detection.* attributes on scanner-decision OTLP records (#518)
* 5912e80f03715a8e3cce9bf127e8c11b003cd9a9 feat(cli): add pipelock cline install subcommand for MCP wrapping (#519)
* 5e15aff14898fc97d26cc34887f0e94db9892713 feat(cli): add pipelock opencode install subcommand for MCP wrapping (#523)
* 1a7ae796acc0407babf19235abf0991120fc9412 feat(cli): add pipelock zed install (#531)
* 17df0e9e2b34b11dc05e467ef56677612452e9c6 feat(cli/contain): add read-only verify subcommand and cobra skeleton (#512)
* 10ba1dc05a6067919d57cea8865a929e893c933d feat(cli/setup): add codex install command for Codex CLI MCP servers (#499)
* eed8329a487fc1250b0458cd2e090e50183d4a91 feat(contain): add enforcement doctor and workspace ACL lifecycle (#549)
* 8b12b570d16b1ce95d1905ed8054bddd8cae5241 feat(contain): add snapshot restore CA regeneration (#538)
* 3040a80a81a631f7e918b7f38dbb8972fdd85a5f feat(contain): implement containment install lifecycle (#527)
* 7b535ad204e0e81025f90c8d8b70cea4d579e84b feat(contract): enforce tombstones at activation and accepted-load time (#521)
* 08aef2ca617ca0be2245fe6e80968f8b12e6c80c feat(diag): add enforcement smoke checks to verify-install (#562)
* c3e01b1a865d5ab72b4489b83d01ea91c58993a9 feat(envelope): require SPIFFE actors on inbound + add envelope trust CLI (#522)
* 60d8faeaed50f1a3d77119fd91b417a4ccf693ca feat(mcp): add integrity manifest tooling (#557)
* 382a1c7e74164f6961c4b818bfa9e1bf1cabc7eb feat(mcp): attribute Layer/Pattern/Severity on block receipts (#536)
* 69d843e2c5336bfbba8131d5de4a4235e374e7d0 feat(proxy): productionize Browser Shield evidence and transport parity (#533)
* d58d168e423b09abbd97364554b5ab46ab9a4693 feat(sandbox): bridge MCP sandbox egress through scanner (#535)
* 9b956927581fd3035d253b7f8a5eadea77ef38e7 feat(scanner): close three skill-poisoning vector gaps in response patterns (#514)
* 0f24f7223d973e93f8acb7d7e9f48fc767e7be7e feat(sdk): add Rust audit packet verifier (#508)
* bdedb6bf49493f2128db9c7a604824b54ea92443 feat(sdk): add TypeScript audit packet verifier (#505)
* 36f95853453755cdb86fc4df1aa952a34c34bd1d feat(sdk): publish Audit Packet v0 schema with Go bindings (#498)
* bfa4f4474b4aaa5561b208fbc3ad51c3a21d24ca feat: agent egress overhead benchmark with Go runtime metrics (#528)
* 66a0a5e49d246539ccd05bcd047b86200718ca0f fix(audit): apply DLP validators in project scan (#510)
* 3710f15c3ae2ec154b8f75893079e7435d3bee3d fix(audit): drop misleading T1046 tag on DNS-resolver-failure blocks (#539)
* 925b739faeee32efa7a4ae22030bb689ceccf65b fix(claude-hook): fail-closed on unsupported hook events (#524)
* 419f3975a055609b59042f7939160dd7a25bed94 fix(contain): make install idempotent across .bak rotations and fix version banner double-v (#541)
* d0583b0eb787e9e0e79707bc7adb331b471a468b fix(proxy): drive SSE streaming activation from response Content-Type (#530)
* c93a3221ac75a4b10bfdf3569579d91f56001c39 fix(rules): separate bundle keyring from license key (#526)
* ebfc2ef60d76b5f22ac8e83dd330bddb65ed7493 refactor(proxy): drop blockreason severity/retry delegate wrappers (#537)
* d140751b6c66020142fbf884367e89180b51f601 scanner: add SigV4 presigned URL structural carve-out to URL DLP (#516)
* fa16985792e794fd9a2c43c9ab9c7c172ada2950 scanner: harden response disclosure and split-payload detection (#540)


