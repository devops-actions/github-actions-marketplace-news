---
title: Pipelock Agent Security Scan
date: 2026-07-14 15:14:42 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v3.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Pipelock is an AI-powered firewall designed to monitor and control secret exfiltration, prompt injection, and SSRF within mediated networks. It inspects content using various protocols (HTTP, WebSocket, CONNECT, MCP, A2A) and generates mediator-signed action receipts that can be verified outside the agent runtime. This ensures a content-aware decision is made without relying on blind trust in agent behavior.**
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v3.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

**Pipelock is an AI-powered firewall designed to monitor and control secret exfiltration, prompt injection, and SSRF within mediated networks. It inspects content using various protocols (HTTP, WebSocket, CONNECT, MCP, A2A) and generates mediator-signed action receipts that can be verified outside the agent runtime. This ensures a content-aware decision is made without relying on blind trust in agent behavior.**

## What's Changed

## Changelog
### 🚀 Features
* 5564402468dab4f3b493c1c271462352368d835a feat(cli): explain hook blocks via explain --command/--tool/--file (#877)
* 5a04b7c250e380047189cf71a97fcf05c99b5a63 feat(conductor): add --dry-run to publish/kill/rollback and a replay CLI (#989)
* 6440a4502fcf239cb06062ff4c526fe716ff3fa5 feat(conductor): dry-run and decision-replay for signed policy, kill, and rollback actions (#950)
* ad6cb93788e1fee73f46f2e8efcd57e2965b47c3 feat(conductor): fleet runtime/apply-state drift guardrail with fail-closed publish preflight (#910)
* 693b51d9951fa79f5b16e910626898e2f3abd33f feat(conductor): sign follower applied-state into audit batches for verifiable fleet overview (#948)
* 480371343fb2302f16bd148cd2925444a46e6947 feat(contain): add verified run launcher (#846)
* a59d78c59aa4f4165918e9edb960cb57b5637af6 feat(dashboard): add RBAC permission seam (#967)
* 3add482f41ff2bbb5afa8dd6e634491afd5de43e feat(dashboard): add durable state operability (#971)
* fa96926bcc85341ccb4b570bac8836f275528a2a feat(dashboard): add trust and keys audit view (#970)
* 757263d05238e92814d282d91536d485997b7e81 feat(dashboard): cross-agent evidence explorer, decision investigator, and free viewer (#946)
* 61d18c4d1b5d51da0f9940a126129cf7dc8a7b9c feat(dashboard): exemption lifecycle store and coverage certificates (#947)
* a42d3f3700feb05828067b52e2370056ebc8ce60 feat(dashboard): land on Overview at root; restyle the free evidence console (#995)
* 86c43a677901f2f2bfd3df7e6f0df879bf52ccd1 feat(dashboard): live per-agent forward-budget data via runtime snapshot (#968)
* 68eb7c90f74ed8963aff6eaa8e3162522ed9a122 feat(dashboard): mTLS client-certificate authentication (#973)
* 20bc05625d73ff85c6413616342f38d787517ef4 feat(dashboard): operator console revamp with a free evidence view, tier gating, and honest states (#991)
* af2ba15ba77147c49a88463965985fcae915ba06 feat(dashboard): pipelock dashboard serve command for the Evidence view (#888)
* f2de27c847e24aecb71d33379f1a2c6c62653803 feat(dashboard): read-only Evidence view for Pro/Enterprise (#885)
* ad7d5443ab21764a283182ed538e32af317a6848 feat(dashboard): read-only Signed Action Workbench and Incident Cockpit (#960)
* 0d4f6d1db6b359ffefc6b16251dd560554e74b13 feat(dashboard): read-only exemptions inventory with inert-exemption detection (#923)
* e07c26a20eb330a24639b010858a707b9162b951 feat(dashboard): read-only fleet overview of signed follower state (#951)
* 3f06e6d82d7dca24396f9a2192e19a0fc275203d feat(dashboard): read-only per-agent budget panel (#966)
* 5d76d52d93e12d5d124c64b35a9eceda84a07d5c feat(deferred): cascade-depth limit + pending-ancestor linkage for held MCP actions (#887)
* 8474b3101cae688a048897c61d75a2e4cb95c864 feat(enterprise): add compliance console (#969)
* 212c4171a20897ed8b2427b6b42e36c7d86d2e72 feat(examples): add tool-poisoning-honeypot MCP manifest-poisoning demo (#997)
* 426069fc6f208a632554b81728136747ad422322 feat(mcp): record durable receipts before egress for all forwardable verdicts (#937)
* 596b9b58f05f40437236d25fdd5f41b52b0a96aa feat(mcp): tool-policy type/range/length/value arg validators (#881)
* c11639c077e56efa4255e4493c596d112e729bfa feat(playground): WASM browser verifier + load-test harness (#837)
* b01a2ce3341c5e3423acd07f844381a371a50a38 feat(playground): broker hardening for public exposure (#838)
* 55319465c3ee5281bf28bcc56222035617f848a0 feat(playground): harden broker for public internet exposure (#831)
* df958342c4cd21fef1ba0b38029c788516fac713 feat(playground): require real live model, add per-session verify kits, fix model 400 (#834)
* 2b402feaa6f1f1ffd2e3a078fab3ff633a48c07a feat(proxy): surface the exempt_domains full-trust blind spot (#936)
* 2a284eb21c2d3b9a94f9cd03d189be86057a2341 feat(receipt): additive exact-bytes receipt verification foundation (#915)
* d85d4e28b28056ca286e77d84b4edb7b48fe8110 feat(receipt): cross-language verifier parity for rotated chains (#935)
* 23bce3f4bb826fd766bdc10b4b714545114d5e30 feat(receipt): strict unknown-field rejection and two-mode chain contract (#963)
* c012f8970fa52427f480529ac8aa993d6364802b feat(replaycapture): add three Make It Leak episode scenarios (#896)
* 870e5a0b5804e26ca81ee110dc10ebe5a2dae612 feat(rules): verify official bundles on source builds (#955)
* 2134bf7644390c54c7d50b2d831a47454ff2532d feat(scanner): central block-remediation table, wired into explain and audit (#875)
* 42e1d2bc9fa350ae21f5ea5a27d4251b9b2fa3fe feat(scanner): operator-configurable endpoint/parameter query-entropy exemption (#916)
* 57379581e3361970554aac0f183556e9cd8817bd feat(verifier): wasm raw receipt-chain verification with parity harness (#952)
* f24301337d3e0bd913271d7708133967a65f0b5e feat: add CEF SIEM export format and action-aware export filtering (#920)
* 745459f9eb970083bc1204ad1edbe8f176cdbf45 feat: add MCP taint trust by server name (#865)
* 1954ff641ea723da68f46f2deba184da1473336a feat: add Rekor anchor submission backend (#861)
* 446ed5216902e4050bd2d4226a507e243b026630 feat: add durable SIEM event forwarding (#972)
* d11094bd71e568ff3ee937b458f791261ce9bd68 feat: add explain-event, quickstart, and status operator commands (#921)
* a6a806f861eff9eed289cb9568d7c556835234ce feat: add local receipt anchor bundles (#858)
* 730d3567e8f9fb4f39798f015581e542c1c277ae feat: add preset listing, richer startup summary, and unset-knob surfacing (#922)
* 016bce1264afafc13efc54b3a7db5731ac5163fa feat: durable intent before egress on CONNECT-intercept inner requests (#925)
* 72834c0465bb778620f0cae248301dc8de2db47b feat: durable receipt-evidence lifecycle and honest completeness verifier (#924)
* 7dfbcf24ab58b869766d919c0b038f0046760bb2 feat: make all seven config presets selectable via --preset (#874)
* e030fe5b3ced8e0d3c9141cd2be7faef4a5d7508 feat: operator surface to list, approve, and deny held (deferred) MCP actions (#905)
* a794ae85f65ad4585d08dcc869b1d1bc7f60d01b feat: verify Rekor anchor inclusion proofs (#866)
* ace33742d4afc8a96824fac2b35ebf3d9aa985e3 feat: verify the bound-genesis session-control wire format in every language (#926)
### 🐛 Bug Fixes
* 527f4b3d8a417e0fb368673b581615930defefd1 fix(anchor): make the Rekor hashedrekord hash algorithm configurable (#987)
* 771613d65ad8aa04c7da20e36c3ece93571c1123 fix(anchor): versioned per-session state index and hostile-filesystem fail-closed loading (#979)
* 18ca6f8209d4403a07d0891e3f172f62bace35fb fix(audit): emit operational visibility events (#843)
* cbda57f5bfc0c395e2ed3afc19dc92b34ff31695 fix(baseline): cross-process integrity lock and fail-closed profile integrity (#914)
* a1dd7adce39a3d4071e783c3444992ec41656dfb fix(baseline): enforce behavioral baseline on A2A methods (#894)
* 441f443882ec7ff4dfe451b98cabf2c8d75cff6a fix(baseline): fail closed on persisted profile tamper via signed integrity manifest (#897)
* bdd5b936b09145996486ad836cf3187187fbf57c fix(baseline): fail closed on unreadable or corrupt persisted profile under enforcement (#892)
* b1e569caa381c328de135697eec53e3ff3d12a96 fix(baseline): fingerprint integrity diagnostics (#943)
* 41e5c57051866d43c5d87cb4e7d5a927cfe3f95f fix(baseline): restore Windows regular-file reads without following symlinks (#980)
* 519f44c4034b1c0cd78b2960d50ae59d3136004d fix(baseline): sanitize control characters in agent-identifier log fields (#940)
* 312a99510176fae14538fcbeea2f4d577e6cf410 fix(conductor): additively merge published detection content onto follower baseline (#999)
* c95791ceb5ce64b25043796b155977e00a4212df fix(conductor): make bootstrapped policy bundles publishable with a loaded-config policy hash (#986)
* 1d883915413dcf54c5b11116216599f52874238e fix(conductor): reject empty-scope audit queries and enforce config-consumption gate (#904)
* 9f814f56d489cea2adf7d433b393737e6d24dae4 fix(conductor): survive upgrade with an existing bundle and add signed-decision replay modes (#993)
* 26cda650a7e66cd88ad85e40feeb118bab1d553c fix(coverage-cert): re-validate certificate body on verify and bind signer key (#1000)
* dddf7625059d51138a1746ffcb3f0f86a9728a93 fix(coveragecert): reject over-claiming certificates by construction (#1001)
* d1e1a3767526a53d3451ae5fabdf2a328ebeb829 fix(dashboard): accept mutual TLS as a sole authenticator (#982)
* b87e659f37fe921646f5e850807253a856eb81f2 fix(dashboard): harden auth boundary, store loading, and evidence read bounds (#978)
* 9484ba8f3b81820b1ee6e5dc78f39edfcaa32572 fix(dashboard,siemforward): default-proxy coverage certs, forwarder metadata floor, brand favicon (#1002)
* c331bf3c3986b358e552ef7b012a3b83f9d201f8 fix(deferred): never derive cascade linkage across session-less holds (#889)
* 58ab15b2a6db37ef0ee1bef7eccdb4262273053d fix(deferred): record depth-limit denials in the audit journal (#913)
* b6a29854648d5899372f245826b209ec692477fc fix(dlp): anchor dotted-token patterns case-sensitively to stop prose false positives (#836)
* 7a332275598d4f54a015f150b9bfca52c2c0d931 fix(emit): queue syslog delivery asynchronously (#845)
* df4e973ea94808085238751414ed5716047886a9 fix(evidence): fail closed when a coverage certificate signer is not in the pinned trusted-signer set (#984)
* 38891a2968f400e17e78fc8082f890968cbfc6e5 fix(evidence): re-tier point-in-time containment grade to kernel_observed (#938)
* 6d0b1bed9f26d2fffe81c9f6ec41f4a1ecc63f5e fix(mcp): audit completeness, full-object drift, fail-closed hardening (#895)
* 5cc240d3811ab9168af39ed4994a3752cfe2f9dd fix(mcp): enforce denial-of-wallet and chain detection on A2A methods (#900)
* b060d9d12bdf2454bb3680b033f1af4c3a809d6c fix(mcp): enforce session-binding, taint, and contract gates on A2A methods (#909)
* 0f82ed6a9cc4c88819a14d15375da7aed2f1670b fix(mcp): fail closed without envelope leak on empty action id under require-receipts; harden A2A method match + drift doc (#903)
* 1ef37c280c512874b750b1d727d9b4ecd35377d7 fix(mcp): harden input envelope handling (#840)
* cee8b07f762878d8b3f0ebb832b10ba9cd8b278b fix(mcp): namespace reserved-prefix tool names in enforcement identity (#934)
* 04438c312249c7260c675fb9cef9788f3c4630ca fix(mcp): reject null envelope params (#841)
* edea4fee584bf256f3d72522bf233c9c12767d79 fix(mcp): scan generic SSE across event boundaries (#844)
* eac23aa1b5df87bd6b2da692cdbd2ef5c3d0e01b fix(playground): orphan-VM reaper blinded by Fly summary mode (#883)
* 952ce867eaae94f75b16b2099757d084d4fd54c1 fix(playground): serve broker UI assets world-readable so the verifier wasm loads (#839)
* 6df4016b1ac23edba068b7ee25645638051affd6 fix(proxy): apply response suppressions inside scan cascade (#848)
* bd955774996f5c5a94cf42f741688172ff976786 fix(proxy): fail closed on undecodable multipart transfer encoding (#884)
* aae3f1effdc89540c1541061622a456c5a01b8ba fix(proxy): improve receipt failure visibility (#842)
* 0790b4f771b7550177fe6bac1903ad392821d339 fix(proxy): scan over-cap size-exempt responses with bounded memory (#899)
* 9f25513051ab3038650f10d283e7c498d01680e8 fix(receipt): bind receipt policy_hash to the request config snapshot (#961)
* 8d401dc2d3228bab61f5321e30590defe51d8ead fix(reload): fail closed when a bundle-resolution error would drop live detection rules (#988)
* 65d069c636cb64500c487485f63bcd813642f36a fix(reverse): label unscanned media passthrough honestly, never clean (#962)
* 40d37928797216df282e050efd968f86d123f1da fix(scanner): close core response-floor bypass (suppression masking + decoded normalization) (#893)
* 982eda13d4dd01c9dba16813e1c97b193e20322a fix(scanner): cut credential-path directive false positives with intent and path-tier anchoring (#911)
* bba7779ec1a2d6178f24458b96e192995ec8c3ff fix(scanner): normalize encoded DLP candidates (#847)
* b542aa169c6c474178cdbf362a29767359f45eb8 fix(scanner): reassemble invisible-split keywords across config and decoded scan passes (#882)
* c07629da274c48e56e4dc1bc3021a4b5753e5c55 fix(scanner): robust documentation-example-credential exemption (#878)
* 825205c48d12b422d5388a93de29b5880772a97d fix(scanner): sharpen credential-exfil response-injection patterns (#981)
* 3f1de21f0eb674f2ef65e44d395a1bd876349f9d fix(scanner): tighten markdown-link credential-exfil pattern to cut benign-docs false positives (#902)
* aca78f83c25947b934885cd9758fc83ed9dc3917 fix: add reverse response size exemption parity (#869)
* a0b685a5ecc2cdcb5f06374ed3a1c05c5df001e4 fix: attest full MCP tool definitions (#853)
* 16fd0a27042de252831e9d0277d87cb3c12abc2a fix: block split DLP in A2A task updates (#851)
* 9ad71caee1cf34699397f4508b6c08a0034c81aa fix: enforce required receipts in reverse proxy (#857)
* e3e530ea56b7393b098e5cbc6ee19bb3fb6220a4 fix: eval mint matches net_amount (tax-invariant) + playground bundle signed receipts (#832)
* a8bbbbc0dee988c930e886789f6eeba8d92f385b fix: harden containment nft drift proof (#868)
* 55246cd0601263371c2e6a379245094d7780e3ce fix: keep blocked tool drift out of baseline (#852)
* 44fdb46d996ef95b9e26464e726ef9a4ec8e71cf fix: reject duplicate MCP and A2A JSON keys (#855)
* 1cdcb784f9f2a80d839640c8bf1bf81ecc9f9ce5 fix: reject duplicate playground artifact keys (#856)
* 75994e462a1c8f53b7e7bda5bb594d2c3c206187 fix: reject required-mode reload downgrades (#860)
* d3dd85e4b98870d0c8b7a49eb035d87f1b59cb87 fix: scan MCP resource HTTP URIs (#854)
* 4ef465534bf3a8e383be4e4a872e76018419d818 fix: verify containment nft rules against current uids (#859)
### 📦 Dependencies
* 294b3c9b63e242b682dc6953e5a60b5f0e1e4488 chore(deps): update actions/cache action to v6 (#956)
* 969acecac69e03d8f72a7464ea92a817e97f69c4 chore(deps): update actions/checkout action to v7 (#957)
* ae33f9d5faf5e0d913594b97bcaccedb307f3f0d chore(deps): update dependency cryptography to v49 (#958)
* 1e0f42f44329cebb19e556f5703533ee4b160811 chore(deps): update luckypipewrench/pipelock action to v3 (#959)
### Other Changes
* d99a9f27951f3c4b9e19829a7ec91bf288e96f51 Add Cursor integration example with verify script (#927)
* bfec7d6584ea2c09579393ef32641f650778149c Add WebSocket proxy example with verify script (#932)
* fae303fb06108b62399fe75f69a21ce771c6ed20 Add canary tokens example with verify script (#933)
* bb4a516b702dd2e5fa19b4cc092ac4eb15419fb0 Add docker-compose proxy example with verify script (#945)
* d93034d79ee2da433c6b37051d506df6a37bf6b9 Baseline learning quality: learn only executed tool calls; per-request listener samples (#880)
* 8c7f7637b5ccc75c0fe2f281b2b2d8b7d60df258 Baseline/taint review follow-ups: startup cleanup + reload downgrade guard (#879)
* dcfa01d39cc6a405b4705bb56b48ae289993ec96 Behavioral-baseline runtime enforcement + fail-safe taint default (#876)
* 0f9e4dc2a5ec3fa1ea414e3747a297bc99366f29 Bound cumulative SSE event reads (#850)
* 6dfcfbdec78a72d2f26e7d4411d036af906f6c67 Embed validated config paths in installers (#873)
* 5bea182ebac07574cddd0d855b11371801a44e7d Evidence-health metrics, self-audit loop, and honest scorecard (#931)
* 3e30904baa7470a075d53e317cc032d9254d4ccb Fail closed on default MCP binary integrity (#849)
* 7c125e379dc99688efffaeed01b8ab5619af3555 Fail closed on unverifiable git diffs and harden rules config loading (#872)
* d167187025b457a9977d624af6a3b2522eb61701 Fix image data URL DLP false positives without weakening embedded-secret detection (#870)
* 77803d3550cbe6fd2e4316847e85b8776a4fcbf1 Fix taint ask handling for MCP stdio and local gateways (#965)
* f92bca161503402949c0cbf54c5119404d23d053 Harden dashboard raw evidence access (#890)
* c8ecffa6f5a06aa37fe34ea02da3fb003f49f7a5 Harden evidence rendering, hard-limits table, and containment grade (#930)
* 3f5fe5168637b280f01901a9b550e5fa504eb3e6 Harden scanner coverage: SSRF surfaces, encoded secrets, FP precision (#891)
* ebbef10ea53c0deab23cfc8d374340b8b8ac6507 Make crash reporting opt-in with a minimizing sanitizer (#917)
* fd0b94bf13ce0156bc840e0351ce3c97a2ce3949 Tighten inbound DLP enforcement for OCR AWS ID false positives (#906)
* 50b8045182af69cbb164619e5969d9c899e201af Use vendor-neutral examples and align config docs to defaults (#918)
* f80c59f39fa8cd1219b3be7af50d11014ecf9899 Validate signed session_control claims in every verifier (#929)
* 6b0167491cf59fb70701eb70697d727941dbaa3f chore(release): group and filter changelog, add branded release footer (#944)
* e8a396d244af27b1367e116fa22fc61246884ab3 ci(release): raise race-test timeout to 30m on monolithic release test steps (#1003)
* f3edb93c3f7dba654be86d849b7b0e6297ddb9b7 docs(dashboard): document OIDC identity-provider audience setup (#985)
* f1b5630fefe4bf31d4570057d38475fb123725ff harden(conductor): honest fleet provenance and fail-closed rollback ordering (#977)
* f13eab87b6bbfe10cd6894f7cccf180e31235e87 harden(evidence): dev-build rules, checkpoint signing, rekor egress, idempotent bundle merge (#983)
* 6a8ac5ed2c4dd8c0c8f0d480c05920274f31c7a3 harden(evidence): make posture proofs and session_open durable (#941)
* 29340c8db18c0d18c5d9b379fc20bb6e24e161ea harden(evidence): strict CSP + no-store on the free evidence-serve console (#998)
* c2a88df2cb3a466b0c695d342744f7f78e1cced3 harden(evidence,anchor): bound evidence receipt reads and fix Rekor hashedrekord artifact signatures (#992)
* f1c242a0acba37c456356a5c08fee7eba54ae1ca harden(mcp): A2A redaction parity and session-binding inventory (#976)
* 7a68cb1590e687742404ed75db2e15790ea16a59 harden(receipt): durable session-close and defense-in-depth posture-capsule verification (#949)
* d6e5242af5fb2998f0ab20e85f65afffefa8feff harden(receipt): fail-closed audit-completeness for defer, receipts, and baseline reads (#975)
* af90fb6efcbf4b61ebf46cfe2e90d84815c84cb2 harden(receipt): fail-closed receipt-emission completeness across MCP, proxy, and reverse (#942)
* 671890476b56d3a62afe296c9098b4bbd08c8d66 refactor: centralize DLP patterns into one generated source of truth (#919)
* f6e3eeefef897e07b6ab65b9bb9cfa057ea9c2d8 test(liveproof): live-proof harness through the shipped binary (#898)

---
📚 Docs: https://pipelab.org  •  💬 Community: https://discord.gg/badNfhGKTc

Pipelock is an open-source agent firewall. Come poke holes in it.


