---
title: Pipelock Agent Security Scan
date: 2026-06-12 15:25:49 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v2.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v2.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## What's Changed

## Changelog
* 5b7beb12aa1158dddea7c989dec4406c504b2a61 Add Conductor emergency control and stale-policy fail-closed enforcement (#741)
* 0ed5f57e4dc3cc5f5605fb6518abc69a92603ab1 Add Conductor fleet observability and audit query commands (#740)
* 05268b0b21a2896ac98b2a3d932d890be9cbe80a Add Conductor production operator runbook and provisioning docs (#739)
* 954c3df4593c43a4e00b0d84946dca2638c4ca96 Add conductor publish for signed policy bundle distribution (#738)
* e606f1728e376fb0d8c8cc84a4d9ce07e137966e Add contain egress explanations and response-size allowances (#706)
* 5b246c1ab080913cbbd32712f4b9646905f7cdac Add live baseline ratify operator surface (#732)
* 19535011a3514a077fd70151a2075fc96a84a7d8 Bind EvidenceReceipt v2 decisions to policy_hash (#719)
* eb462a1b93c8509847afec1108a5e828c2a9d786 Bind action receipts to process runs with nonce (#729)
* f8690af701d54c1bd2e22f7e2941c032b341b6b9 Conductor follower enrollment, rollback application, head-reset (#743)
* 6adfb482da150c73fe0267292351be35827c663d Contain control-plane adaptive escalation (#709)
* 3d07dcb0a6fc779ff5114a95d01990a1664f87bd Emit receipts on A2A block paths for transport parity (#727)
* 867bd6d646d1876d7764c0a9e57875337ed5a680 Export recorder signing public keys (#735)
* dbcb0808269c8b7b0cad070da1aed671b74f7689 Fail closed when signed receipts are required (#730)
* f8f849e6e5b766e82ef84666c600fa9821f6a1d0 Fix Conductor rollback reconcile upgrade crashloop, restore coverage (#745)
* 1d0846187eb87b83cad3206e6f67fb22a3aa4947 Fix URL-DLP false-positive remediation hint (#742)
* 3e52a2f2ae83e4d4b21f22d322abba61b6319063 Fix receipt-chain rotation and operator evidence ACLs (#725)
* 2f3556cf9e96d38e0f3a5bae72a1a4de8be466a7 Gate per-profile address allowlists on verified entitlement (#714)
* bcb9741d3700ffcd100e72c842fc5df9c3036f11 Harden conductor audit ingest idempotency and lookup (#678)
* 094e9f2ead7907a90c8e57bd1ffbe1f4401a1a2d Harden conductor audit queue lifecycle and error mapping (#724)
* b3dffd0da7d31654f1acb14d8330939553a540ff Harden contain credential defaults and git push guard (#705)
* 2bccfb85cac07c42f3bdd09787f71dec3eec9d57 Harden contain setup and MCP receipt parity (#723)
* d5c2dfcfa6b66672a161ccc3c3364eae2f5e30df Make receipt verification safe by default (#726)
* 29ecdc75decda52cbf49c901451388d45128ef87 chore(deps): update dependency cryptography to v48 (#669)
* 5588a58770de5054aefe220229f269555c72998d chore(hooks): scope pre-commit stages so a Go-only push doesn't need verifier toolchains (#682)
* 511b2092db93d2aedf8c1de163c953ecb3092f41 chore(verifiers): make TS + Rust reference verifiers publishable (npm + crates.io) (#713)
* 15dd5c2435bd96b0061fac8ec50a72c8353139fd ci(govulncheck): float to latest 1.26.x so stdlib advisories self-heal (#667)
* fda3d193c5367030bf4eb6e252d35ae568f2cab0 ci: Update Azure/setup-helm action to v5 (#651)
* 7a5031a4de1eda781f42e2b4a3b11f4c8e93facc ci: Update ci-actions (#717)
* d3be8d32663281e546b4d9955d2c5be2053ff3f4 ci: run python verifier from source to stop recurring Scorecard pin alert (#665)
* 7351c787a21e296acfac46410ec4f49cd3096296 deps: Lock file maintenance rust-verifier (#649)
* 786052a7bb89093bd9429dde4468718a33bda168 deps: Pin dependencies (#646)
* 42c2978c1655893cc2674e912e76d203740a8d9d deps: Update Rust crate serde_json to v1.0.150 (#647)
* 736a5190ce5529b1426be91e710714cece023281 deps: Update docker-base-images (#638)
* 49c01ffe2cc7b45e7c4f6188194b0884b1af96db deps: Update docker-base-images (#675)
* f3f9cd643f82b6a246f4c64674d8c5d0f078b011 deps: Update docker-base-images (#694)
* ed5855d9b377db6af9c7712ce3f279bd7b2b2d80 deps: Update docker-base-images (#702)
* 7585a71e28586d924fd97e8cf22a73b065dba4b0 deps: Update docker-base-images (#716)
* dadcde027cd10b5a8c7785fefb0cbedcaa69fac0 deps: Update go-deps to v0.46.0 (#718)
* 3638b23b44b287d11dadd5293bb239ded60adb9f deps: Update go-deps to v1.51.0 (#703)
* 2299f75959c59706efeeae533519f8e734d96e18 deps: Update rust-verifier to v0.1.25 (#668)
* a976cfae732b73cbe67c83cdd649be6a4fb83121 docs(aarp): publish claims dictionary (#721)
* 54e3bac0924066a7e619417c7c558f6671a3b67f feat(a2a): verify Agent Card signatures against trusted origin-scoped keys (#689)
* 8bd4fbd1aedb852a5789a64c92ca26b66e1fd15c feat(aarp): AARP v0.1 assurance envelope core (#660)
* 1e2ae96a13de3619ce2ab17cc8c3457b3450e5b0 feat(aarp): SVID X.509 attestation appraisal + hostile corpus (Go reference) (#670)
* 7eeeb05a627c84dfa2712d5a6d0f6610165bc64c feat(aarp): four-language hostile corpus + verifier lock (#663)
* 381c4fc330d3b42e20e4afe62c845569aa17443a feat(aarp): make the appraiser brutally literal about what it proves (#720)
* 55e3eb0f193aeb142587c7e41e34f26aff447caf feat(aarp): port X.509-SVID attestation to TS/Rust/Python; lock four-language SVID corpus (#674)
* 10fa8158a7d9c9fd0e1af3df6b10cc05b4ade7c1 feat(aarp): verified X.509-SVID attestation binding (#661)
* 6157e26668dfb32100864403976240ac044dd908 feat(assess): honor CRL in paid artifact gating (#690)
* e7dde68c6d4934dffa1effff87c41fdd6b5bdfe0 feat(capture): add rpc id to CaptureRequest for request<->response join (#708)
* 720b67e85cfec3f1da09276e0e7250af34ebe6e6 feat(conductor): add bootstrap command for a self-verifying dev fleet (#655)
* ae2b5372562fe443218537e719ff1ac012260de3 feat(contain): runtime contract + `contain doctor` self-test (#704)
* ced2901dd6e16b83ac915a11f6c0ff41c6cc8145 feat(dlp): detect DB connection strings, GitLab token families, and cloud service-account keys (#657)
* e828c3f74b9b07c095f9dbc6c2fb6fc396ae4536 feat(license): intermediate signing certificates with CRL revocation (#684)
* 22958a7daf09e7243429e0c824da2d5c8d856ced feat(license): wire intermediate license chain through runtime and service flows (#687)
* 343a4e938d186674b48010cf581823e12dff3841 feat(playground): synthetic replay capture rig for signed Audit Packet gallery (#681)
* d075eab7cc61400205be2e357b1b05e2ffe23a52 feat(receipt): add source-span v2 receipt payload (#697)
* d8c4b0b075daa56564d03562934472788dfaf123 feat(receipt): dual-emit v2 proxy_decision receipts on the live proxy path (#691)
* 7c65323b47cba05764f4e6f613ff6bb13a7d387e feat(receipts): enable flight recorder by default and seal transcript root on shutdown (#728)
* c2c3ba9103011d59066cbaffa82ed0fb8165feb6 feat(runtime): close in-flight conductor apply window and add license-reload error precision (#712)
* a4119e1839d1f1ea09bfa1290d654ad5876aaf3c feat(runtime): enforce fleet-license revocation at runtime (#707)
* 1e25fb171de9864c64e8de72cb01e543bcb1d817 feat(svid): offline X.509-SVID validation against pinned trust-bundle history (#653)
* e9097850c43bac27b2e582eaa88f9a4f784ee7bf feat(taint): cross-agent contamination tracking across A2A/MCP (#677)
* f653dce30de4be1abac31cc2c04d59a4e96e468e feat(verifier): verify EvidenceReceipt v2 chains offline (#664)
* 43f9dcb1e41a49076633d779fcff846ef36b543b feat(verifiers): add spanned EvidenceReceipt v2 verification (#700)
* 521cdbbdc9a7dc0bed405578e764c3b6051025d9 feat: add operation-aware playground replay capture (#686)
* 30b62cadd296f471807dd2ef93291975f479fe9e feat: add skill scan command (#672)
* e98995c8f0f9186bef3bb88b03f2d572bae3698c feat: self-service Enterprise Eval fulfillment (license service) (#680)
* 6907555c8f5c5f5fe5cdb5bf97158ee3bbf75c17 fix(ci): avoid unpinned AARP verifier install (#679)
* 9df41e3df0a779395bb4214fbd6f08d61e70bcf2 fix(dlp): bound Twilio + Mailgun patterns to documented key shapes (#656)
* 92981b6905c43e94db372fd7220032150e8a681a fix(dlp): require secret-plausible leading value char on credential patterns (#715)
* 03db8140e3e8fcb74e6eee9c36918e29ea25a9eb fix(mcp): protect concurrent subprocess teardown (#733)
* 496e9680a4a5d0962f5de4dad90692736aa2aa04 fix(mcp): treat connection teardown as a clean stream end in ForwardScanned (#654)
* bab2d93c9610e614cdd681abbd34b119bb9bd51f fix(mcp/provenance): domain-separate tool signatures and block duplicate names (#659)
* 8da835c5792568c6135165cb742ba4aec9a8b131 fix(proxy): harden cross-request exfil detection against key partitioning and flood-to-evict (#666)
* 4802074dd328aed569b7d7213791f9254558ebc5 fix(receipt): align cross-language verifier canonicalization, reject duplicate keys (#652)
* f5fd95e09352196ca0e1ce3595b9b0a79cabbfdd fix(receipt): sanitize secret-bearing fields before signing (#676)
* 6482bc533a57a35a376eaf1d51c22653e877c21a fix(release): build with patched Go 1.25.11 (#746)
* 92d9c70f5953ea72170d487defeb98fad03cc48b fix(runtime): join listener goroutines before cleanup nils shared fields (#688)
* f174d704204bf0cd0cade04589b96e69fbcef5b9 fix(scanner): direction-scope agent-secret exfil checks; skip path-shaped env values (#693)
* d8d278ad5c8d93490092adcc774b25a855f6b243 fix(scanner): exempt operator-governed API paths from path entropy; harden flaky test families (#701)
* 00a52667a9026929893274b9cb003fbb2189048c fix(scanner): label MatchSpan offsets by indexed view (#685)
* 40abeb4f9ec25b35dbbdbbb5282fe2145ecc2ea3 fix(seedprotect): close Unicode evasion gaps in BIP-39 seed-phrase detection (#658)
* caa96d11853121ceaf91afe76c0d8bab5d0ec72a fix(testdata): force LF line endings for test goldens on Windows checkouts (#710)
* 8a790bf841517eb5f3f1b55bf449ee97b0182748 fix(windows): cross-platform file-permission gate (#695) + key-free MCP capture (#696) (#698)
* 6dda831e4e3988ec793fa6aa4fdeca4319f68dc3 fix: clarify conductor key purposes and chart examples (#736)
* 4ce283354711935f9063ce54fb7eb0c9a90e6fc4 fix: detect cross-tool sensitive file directives (#650)
* eb102fb0feadfb195f6ef4ab6cfa9bc4ca7cde8b fix: response-injection FPs on standards prose + seccomp CI test hang (#737)
* 069a2e7f259b9db99017e6f48753af0687e1f43e helm: add enterprise deployment modes (#648)
* d2eff87dc7f596849829de54b295f57af962a43e test(aarp): add Evidence Theater Kill Suite overclaim gate (#722)
* 1b5f8121a1a7e43e4c746f21e2adf99bac411e7a test(cli): harden run listener port allocation (#692)


