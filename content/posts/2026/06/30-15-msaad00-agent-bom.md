---
title: agent-bom Scan
date: 2026-06-30 15:09:29 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.90.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.90.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## What's Changed

## What's Changed
* ci: release-safety pre-flight gate for workflow startup failures by @msaad00 in https://github.com/msaad00/agent-bom/pull/3004
* ci: tolerate async external rebuilds in publish-registries by @msaad00 in https://github.com/msaad00/agent-bom/pull/3005
* fix(release): harden first-run auth and quickstart by @msaad00 in https://github.com/msaad00/agent-bom/pull/3006
* ci: split Alpine full suite from PR smoke by @msaad00 in https://github.com/msaad00/agent-bom/pull/3007
* feat(posture): rank credentials by exposure even without a CVE by @msaad00 in https://github.com/msaad00/agent-bom/pull/3008
* fix(parsers): go.mod block-require opener emits a phantom package (silent FN) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3009
* test: prevent xdist auth-env leak (intermittent 401!=200 flake) for good by @msaad00 in https://github.com/msaad00/agent-bom/pull/3011
* fix(scanners): offline coverage gap warns instead of discarding real findings (P0) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3012
* fix(readme): Glama MCP-server badge URL (broken image) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3017
* chore: combine weekly lockfile and MCP registry updates by @msaad00 in https://github.com/msaad00/agent-bom/pull/3016
* fix(mcp): raise clean error on out-of-sandbox scan path (unpack crash, P1) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3018
* fix(mcp): check tool parses pip specifiers + flags errors (no false-clean) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3019
* feat(ingest): hardware/firmware attestation evidence ingest by @andres-linero in https://github.com/msaad00/agent-bom/pull/3020
* fix(readme): replace oversized Glama card with a compact MCP badge by @msaad00 in https://github.com/msaad00/agent-bom/pull/3021
* fix(deploy): report invalid Smithery freshness config by @msaad00 in https://github.com/msaad00/agent-bom/pull/3023
* fix(api): reject unknown fields on request models (extra=forbid) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3022
* feat(graph): expose retained evidence manifests by @msaad00 in https://github.com/msaad00/agent-bom/pull/3024
* fix(graph): legacy context graph reads credential_env_vars (lateral-movement was credential-blind) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3025
* feat(red-team): LLM-harnessed adversarial variant generation (Series B foundation) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3026
* feat(red-team): bias, toxicity & hallucination detectors (Series B PR2) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3027
* feat(red-team): adversarial-coverage governance score + live-target firing (Series B PR3) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3029
* fix(demo): isolate advisory evidence from ambient DB by @msaad00 in https://github.com/msaad00/agent-bom/pull/3030
* fix(parsers): parse Cargo.toml when no lockfile (cargo manifest false-negative) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3031
* fix(mcp): check tool reads nonexistent explicit versions as clean (P1) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3032
* fix(sarif): locate dependency findings at their own ecosystem's manifest (P1) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3033
* fix(findings): surface hardcoded-secret findings in JSON/SARIF, not just console (P1) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3034
* fix(parsers): cover Cargo target and workspace dependencies by @msaad00 in https://github.com/msaad00/agent-bom/pull/3035
* fix(api): guard compliance summary list shapes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3036
* fix(audit): extra=forbid gaps + CLI lateral graph + single-framework narrative scoping (P2 batch) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3037
* fix(registry): reject Smithery proxy upstream publishes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3038
* fix(cloud): complete Azure SDK extra + honest CIS coverage (live-scan findings) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3039
* feat(cloud): normalized cross-cloud resource model (foundation) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3041
* fix(graph): anchor subscription-scoped cloud misconfigurations to the account node by @msaad00 in https://github.com/msaad00/agent-bom/pull/3040
* feat(cloud): inventory Key Vault, Container Registry, and databases (Azure) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3042
* feat(cloud): inventory network topology — VNet, public IP, load balancer (Azure) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3043
* feat(graph): ingest normalized cloud resources as graph nodes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3044
* feat(graph): internet exposure edge — public IP → load balancer by @msaad00 in https://github.com/msaad00/agent-bom/pull/3045
* feat(graph): VM → managed-identity privilege edge (ASSUMES) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3047
* feat(cloud): inventory Azure SQL, PostgreSQL, and MySQL servers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3048
* perf(cloud): discover Azure services concurrently by @msaad00 in https://github.com/msaad00/agent-bom/pull/3046
* feat(cloud): inventory AKS (managed Kubernetes) clusters by @msaad00 in https://github.com/msaad00/agent-bom/pull/3049
* feat(cloud): management-group hierarchy — the multi-subscription tenant tree by @msaad00 in https://github.com/msaad00/agent-bom/pull/3050
* chore(deps): combine UI dependency updates by @msaad00 in https://github.com/msaad00/agent-bom/pull/3053
* fix(cloud): load the private key for Snowflake snowflake_jwt auth by @msaad00 in https://github.com/msaad00/agent-bom/pull/3054
* refactor(typing): expand strict mypy coverage to api/ store modules by @andres-linero in https://github.com/msaad00/agent-bom/pull/3057
* feat(cloud): inventory Azure messaging, cache, disks, and App Service by @msaad00 in https://github.com/msaad00/agent-bom/pull/3055
* fix(cloud): repair five broken Snowflake CIS checks (MFA, password policy, shares) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3056
* feat(cloud): Snowflake object + dependency graph (tables/views + lineage) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3058
* feat(cloud): inventory Azure edge/WAF — App Gateway, Front Door, API Management by @msaad00 in https://github.com/msaad00/agent-bom/pull/3060
* feat(cloud): Snowflake exfil graph — shares, external stages, sensitive objects by @msaad00 in https://github.com/msaad00/agent-bom/pull/3062
* feat(cloud): Snowflake login-anomaly detection (impossible travel, failed-login bursts) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3061
* feat(cloud): Snowflake identity graph — auth posture + login-anomaly enrichment with MITRE by @msaad00 in https://github.com/msaad00/agent-bom/pull/3063
* feat(cloud): Snowflake compute + database/schema containment graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/3064
* feat(cloud): Snowflake data-pipeline objects — tasks, streams, pipes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3065
* feat(cloud): Snowflake integrations — storage/API/external-access/security/catalog by @msaad00 in https://github.com/msaad00/agent-bom/pull/3066
* feat(cloud): Azure RBAC role-assignment inventory (effective-permission foundation) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3067
* feat(cloud): Snowflake iceberg + external tables (open-table-format / external data) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3068
* fix+feat(cloud): Azure RBAC return-assembly fix + HAS_PERMISSION edges (live-validated) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3069
* fix(cloud): flag empty-type Snowflake users as weak-auth (live-caught) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3071
* fix(deps): add 3 dead-on-arrival Azure SDKs to the azure extra (live-found) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3070
* feat(cloud): AWS inventory parity batch 1 — RDS, DynamoDB, Lambda, EKS by @msaad00 in https://github.com/msaad00/agent-bom/pull/3072
* fix(cli): cloud inventory summary counts every asset collection (live-found) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3074
* feat(cloud): AWS inventory parity batch 2 — ELB, VPC, KMS, Secrets Manager by @msaad00 in https://github.com/msaad00/agent-bom/pull/3073
* refactor(model): prefer canonical findings for flat outputs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3076
* feat(cloud): AWS inventory parity batch 3 — CloudFront, ECR, Redshift, SNS/SQS by @msaad00 in https://github.com/msaad00/agent-bom/pull/3077
* fix(cli): forward --subscription/--authenticator to cloud CIS benchmarks by @msaad00 in https://github.com/msaad00/agent-bom/pull/3079
* feat(scan): add parent-child scan batches by @msaad00 in https://github.com/msaad00/agent-bom/pull/3075
* fix(graph): CLI graph export includes the cloud estate (was local-only) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3078
* feat(cloud): converge cloud CIS failures into the unified findings stream + gate by @msaad00 in https://github.com/msaad00/agent-bom/pull/3080
* test(aws): guard every boto3 client used is a valid AWS service by @msaad00 in https://github.com/msaad00/agent-bom/pull/3082
* feat(cloud): AWS Organizations — org/OUs/accounts/SCPs hierarchy (multi-account scale) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3081
* feat(security): obfuscation-resistant prompt-injection detection (24% -> 100%) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3083
* feat(cloud): Azure multi-subscription fan-out (tenant-scale, symmetric to AWS Orgs) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3084
* feat(graph): toxic-combination evaluator emits enforceable findings by @msaad00 in https://github.com/msaad00/agent-bom/pull/3085
* refactor(graph): factor cloud node/edge boilerplate into shared helpers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3087
* refactor(cloud): share env/truthy/int coercion helpers across providers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3086
* feat(cloud): wire Snowflake governance + activity discovery into the scan by @msaad00 in https://github.com/msaad00/agent-bom/pull/3088
* fix(cloud): correct Snowflake ACCESS_HISTORY and CORTEX_AGENT_USAGE_HISTORY columns by @msaad00 in https://github.com/msaad00/agent-bom/pull/3090
* feat(cloud): symmetric AGENT_BOM_AWS_INVENTORY flag + one-story cloud-connect doc by @msaad00 in https://github.com/msaad00/agent-bom/pull/3089
* fix(security): clear Scorecard branch and fixture vulnerability gaps by @msaad00 in https://github.com/msaad00/agent-bom/pull/3092
* feat(runtime): consume graph reachability for pre-emptive gateway blocking by @msaad00 in https://github.com/msaad00/agent-bom/pull/3091
* fix(ui): wrap long monospace config blocks in identity-audit cards by @msaad00 in https://github.com/msaad00/agent-bom/pull/3093
* feat(cloud): symmetric AGENT_BOM_SNOWFLAKE_INVENTORY gate + shared estate helper by @msaad00 in https://github.com/msaad00/agent-bom/pull/3094
* feat(runtime): feed runtime-observed incidents back into the unified graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/3096
* chore(deps): combine dependency updates (2026-06-24) by @andres-linero in https://github.com/msaad00/agent-bom/pull/3102
* feat(ui): cloud CIS benchmark drill-down on the compliance dashboard by @andres-linero in https://github.com/msaad00/agent-bom/pull/3103
* feat(ui): cross-domain overview landing page by @msaad00 in https://github.com/msaad00/agent-bom/pull/3104
* feat(cloud): auto-derive Azure subscription from the signed-in credential by @msaad00 in https://github.com/msaad00/agent-bom/pull/3105
* feat(cloud): enumerate AWS IAM inline policies (not just attached managed) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3106
* feat(graph): classify cloud data sensitivity from resource tags/labels (AWS/Azure/GCP) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3107
* fix(cloud): complete GCP connector — SDK extra + project auto-derive by @msaad00 in https://github.com/msaad00/agent-bom/pull/3110
* feat(cloud): multi-region aggregation for AWS estate inventory by @msaad00 in https://github.com/msaad00/agent-bom/pull/3111
* fix(gcp): thread credentials into CIS benchmark and surface check errors by @msaad00 in https://github.com/msaad00/agent-bom/pull/3112
* feat(deploy): connect-a-cloud Terraform modules for read-only onboarding by @msaad00 in https://github.com/msaad00/agent-bom/pull/3113
* fix(cloud): add google-api-python-client to gcp extra (CIS discovery clients) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3115
* feat(cloud): native GCP service-account impersonation (keyless read-only connection) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3116
* feat(gcp): instance internet-exposure and IAM privilege classification by @msaad00 in https://github.com/msaad00/agent-bom/pull/3117
* feat(gcp): expand estate inventory to GKE, Cloud Run, Functions, Cloud SQL, VPC, disks, Pub/Sub by @msaad00 in https://github.com/msaad00/agent-bom/pull/3118
* feat(snowflake): zero-latency SHOW-based identity discovery by @msaad00 in https://github.com/msaad00/agent-bom/pull/3119
* fix(ci): monitor Smithery freshness via catalog API by @msaad00 in https://github.com/msaad00/agent-bom/pull/3120
* docs: four-cloud read-only connect quickstart (AWS/Azure/GCP/Snowflake) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3121
* typing(api): expand strict mypy module coverage by @msaad00 in https://github.com/msaad00/agent-bom/pull/3123
* feat(deploy): keyless read-only collector for EKS/GKE/AKS (workload identity) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3124
* refactor(parsers): split skill audit behavior helpers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3125
* feat(cloud): GCP scale — Org→Folders→Projects hierarchy + multi-project fan-out by @msaad00 in https://github.com/msaad00/agent-bom/pull/3122
* fix(mcp): deterministic tool/skills surfaces for agent caching by @msaad00 in https://github.com/msaad00/agent-bom/pull/3126
* chore(deps): combine @types/node patch updates by @msaad00 in https://github.com/msaad00/agent-bom/pull/3132
* feat(nhi): lifecycle-enforcement for agent identities and JIT grants by @msaad00 in https://github.com/msaad00/agent-bom/pull/3127
* feat(gateway): harden policy engine with fail-closed, quarantine, conditional access, plugins, and OCSF webhook interop by @msaad00 in https://github.com/msaad00/agent-bom/pull/3128
* feat(cloud): Snowflake organization-to-accounts roll-up hierarchy by @msaad00 in https://github.com/msaad00/agent-bom/pull/3129
* fix(persistence): align SQLite/Postgres timestamps, dedup, and cost-table DDL by @msaad00 in https://github.com/msaad00/agent-bom/pull/3134
* Secure-by-default read-only cloud connect identities by @msaad00 in https://github.com/msaad00/agent-bom/pull/3135
* feat(cloud): partial-permission tolerance for AWS, Azure, and GCP inventory by @msaad00 in https://github.com/msaad00/agent-bom/pull/3136
* ci(pre-commit): add pydantic to mypy hook deps so local matches CI by @msaad00 in https://github.com/msaad00/agent-bom/pull/3133
* fix(skills): keep lone keyword hits from escalating skill trust verdict by @msaad00 in https://github.com/msaad00/agent-bom/pull/3137
* feat(cli): accept optional positional PATH for scan by @msaad00 in https://github.com/msaad00/agent-bom/pull/3138
* feat(graph): fuse LLM cost into the unified graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/3139
* feat(cloud): registry-wide container image sweep (ECR/ACR/GAR) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3140
* typing: enable strict mypy for the Postgres store layer by @andres-linero in https://github.com/msaad00/agent-bom/pull/3141
* CloudFormation one-click read-only AWS scan via CodeBuild by @msaad00 in https://github.com/msaad00/agent-bom/pull/3142
* fix(cloud): cloud CIS failures drive the verbose posture headline by @msaad00 in https://github.com/msaad00/agent-bom/pull/3143
* feat(storage): shared backend contract and selection factory for control-plane stores by @msaad00 in https://github.com/msaad00/agent-bom/pull/3144
* Auto-refresh vulnerability cache and surface a freshness indicator by @msaad00 in https://github.com/msaad00/agent-bom/pull/3145
* feat(cloud): unified cloud-aware scan across every configured provider by @msaad00 in https://github.com/msaad00/agent-bom/pull/3146
* ci: enforce chart image-tag alignment and scanner-only ClusterRole RBAC by @msaad00 in https://github.com/msaad00/agent-bom/pull/3147
* Readable-at-scale CIS findings report (terminal + HTML) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3148
* feat(cloud): detect cloud providers by credential source, not CLI on PATH by @msaad00 in https://github.com/msaad00/agent-bom/pull/3149
* fix(cli): degrade gracefully on low disk instead of crashing by @msaad00 in https://github.com/msaad00/agent-bom/pull/3150
* feat(api): REST cloud scanning endpoints and MCP write-tool role enforcement by @msaad00 in https://github.com/msaad00/agent-bom/pull/3151
* feat(deploy): one-apply EKS platform module + deploy-anywhere guide by @msaad00 in https://github.com/msaad00/agent-bom/pull/3152
* feat(cloud): agentless AWS EBS disk side-scan (CWPP) with guaranteed cleanup by @msaad00 in https://github.com/msaad00/agent-bom/pull/3153
* feat(cloud): grouped, readable CIS posture report in cloud scan by @msaad00 in https://github.com/msaad00/agent-bom/pull/3154
* feat(graph): ASPM correlation layer organizing AppSec findings around applications by @msaad00 in https://github.com/msaad00/agent-bom/pull/3155
* feat(cli): canonical front-door verbs (connect/scan/graph/report/up) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3156
* docs: align CLI/README references with cloud scan, registry sweep, and freshness surfaces by @msaad00 in https://github.com/msaad00/agent-bom/pull/3157
* feat(cloud): read-only audit-trail ingestion into behavioral graph edges by @msaad00 in https://github.com/msaad00/agent-bom/pull/3158
* feat(delivery): hardened outbound delivery foundation + OTLP traces emit by @msaad00 in https://github.com/msaad00/agent-bom/pull/3159
* fix(api): resolve CodeQL info-exposure + log-injection in cloud routes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3160
* feat(remediation): advisory remediation foundation with least-privilege-to-apply by @msaad00 in https://github.com/msaad00/agent-bom/pull/3163
* ci(terraform): enforce read-only cloud-connect provisioning by @msaad00 in https://github.com/msaad00/agent-bom/pull/3161
* feat(cli): capability doctor surface — every gated feature, state, and unlock path by @msaad00 in https://github.com/msaad00/agent-bom/pull/3162
* feat(graph): estate-scale CONTAINS roll-up with drill-down and attack-path view by @msaad00 in https://github.com/msaad00/agent-bom/pull/3164
* feat(cloud): wire read-only audit-trail collection and agentless side-scan into the CLI by @msaad00 in https://github.com/msaad00/agent-bom/pull/3165
* chore(quality): comment-hygiene guard + scrub internal audit breadcrumbs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3166
* fix(api): close stack-trace exposure in cloud audit-metadata (#1753) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3170
* docs: consolidate Unreleased changelog and refresh architecture/security/deployment docs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3167
* docs: align CLI/API/README surfaces with current commands and capabilities by @msaad00 in https://github.com/msaad00/agent-bom/pull/3169
* feat(ui): gateway live-feed card on the activity page by @msaad00 in https://github.com/msaad00/agent-bom/pull/3168
* feat(ci): add consumer pre-commit hooks (.pre-commit-hooks.yaml) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3171
* feat(output): surface top agent→MCP→CVE→tool exposure path in posture and SARIF by @msaad00 in https://github.com/msaad00/agent-bom/pull/3172
* feat(agent-mode): summarize scan payload for automation callers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3173
* fix(cloud): exit non-zero when a requested provider SDK or creds are missing by @msaad00 in https://github.com/msaad00/agent-bom/pull/3174
* fix(agent-mode): redact credential values from the machine-readable envelope (#1760) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3178
* docs(images): refresh live dashboard screenshots and update capture harness by @msaad00 in https://github.com/msaad00/agent-bom/pull/3179
* fix(ui): guard gateway live-feed KPIs against a partial payload by @msaad00 in https://github.com/msaad00/agent-bom/pull/3180
* docs(images): capture the gateway policies screenshot (route-order fix) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3181
* fix(agent-mode): redact credentials at the envelope source (#1760) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3182
* feat(core): Router + component registries + orchestrator read-model (foundation) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3183
* feat(cloud): CIS benchmark fan-out across Azure subscriptions and GCP projects by @msaad00 in https://github.com/msaad00/agent-bom/pull/3184
* fix(ui): readable lineage graph with distinct per-entity legend icons by @msaad00 in https://github.com/msaad00/agent-bom/pull/3185
* docs: concise, restructured README with cloud-first positioning by @msaad00 in https://github.com/msaad00/agent-bom/pull/3186
* fix(ui): legend toggle actually hides; stop forcing it over the graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/3188
* fix(scan): registry rate-limit circuit breaker so cloud posture isn't blocked by npm throttling by @msaad00 in https://github.com/msaad00/agent-bom/pull/3189
* fix(ui): remove no-op auto-quarantine toggle; lock in legend-toggle regression test by @msaad00 in https://github.com/msaad00/agent-bom/pull/3190
* feat(cloud): connections plane Phase A — encrypted per-tenant cloud connections + credential broker by @msaad00 in https://github.com/msaad00/agent-bom/pull/3191
* feat(cloud): connections plane Phase B — launch a read-only scan from a stored connection by @msaad00 in https://github.com/msaad00/agent-bom/pull/3193
* feat(cloud): identity/RBAC depth — IAM groups, service principals, role-definition resolution into the graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/3194
* feat(cloud): network-edge inventory (WAF/API-GW/LB/NAT/NACL/ENI/IPs) wired into graph exposure by @msaad00 in https://github.com/msaad00/agent-bom/pull/3196
* feat(ui): connections plane Phase C — self-service Add Cloud Account wizard + accounts page by @msaad00 in https://github.com/msaad00/agent-bom/pull/3195
* feat(cloud): KMS / Secrets Manager key resolution for connection encryption by @msaad00 in https://github.com/msaad00/agent-bom/pull/3197
* feat(cloud): connections scan scheduler (Phase B.2) — cluster-safe recurring re-scans by @msaad00 in https://github.com/msaad00/agent-bom/pull/3199
* docs: redesign hero blast-radius diagram (clean connectors, connected tools-at-risk) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3200
* feat(cloud): Vault key provider + MultiFernet rotation for connection encryption by @msaad00 in https://github.com/msaad00/agent-bom/pull/3201
* fix(ci): self-scan SARIF lands under its intended code-scanning category by @msaad00 in https://github.com/msaad00/agent-bom/pull/3202
* docs: drop business-model framing from deploy + archive docs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3203
* docs: contain hero diagram labels within node borders by @msaad00 in https://github.com/msaad00/agent-bom/pull/3204
* feat(cloud): Azure, GCP, and Snowflake connection brokers — read-only scan launch for all providers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3205
* feat(graph): repo folder/file structure layer — directory tree, file→dependency→vuln paths, roll-up by @msaad00 in https://github.com/msaad00/agent-bom/pull/3207
* fix(sbom): preserve packages, relationships, and document metadata across SPDX round-trip by @msaad00 in https://github.com/msaad00/agent-bom/pull/3209
* chore(ui): raise client JS bundle budget for merged UI features by @msaad00 in https://github.com/msaad00/agent-bom/pull/3210
* chore(ci): self-host image and filesystem vulnerability gates on agent-bom by @msaad00 in https://github.com/msaad00/agent-bom/pull/3208
* fix(scanner): align Debian image-CVE reporting + recover layered Python packages by @msaad00 in https://github.com/msaad00/agent-bom/pull/3211
* feat(scanner): warn when an OS release has incomplete vulnerability coverage (EOL data gaps) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3212
* feat(db): ingest Debian Security Tracker for accurate per-release Debian coverage by @msaad00 in https://github.com/msaad00/agent-bom/pull/3213
* feat(cloud): AWS Organizations cross-account scan fan-out (read-only, opt-in) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3214
* docs(changelog): clarify demo-mode offline scans use the bundled advisory DB by @msaad00 in https://github.com/msaad00/agent-bom/pull/3215
* fix(security): sanitize exception text across API, cloud, and runtime paths + regression guard by @msaad00 in https://github.com/msaad00/agent-bom/pull/3216
* fix(scanner): normalize Alpine apk release key to major.minor so advisories resolve by @msaad00 in https://github.com/msaad00/agent-bom/pull/3218
* fix(release): stabilize test env and sanitize scan errors by @msaad00 in https://github.com/msaad00/agent-bom/pull/3217
* ci: scope workflow path fanout to applicable jobs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3219
* fix(scanners): preserve Alpine source package matching by @msaad00 in https://github.com/msaad00/agent-bom/pull/3220
* docs: add semantic colors to blast radius diagram by @msaad00 in https://github.com/msaad00/agent-bom/pull/3221
* feat(ast): surface dependency symbol reach from tools by @msaad00 in https://github.com/msaad00/agent-bom/pull/3222
* fix(scanner): centralize distro release key normalization by @msaad00 in https://github.com/msaad00/agent-bom/pull/3223
* docs(readme): add product workflow diagrams by @msaad00 in https://github.com/msaad00/agent-bom/pull/3224
* docs(readme): add product navigation map by @msaad00 in https://github.com/msaad00/agent-bom/pull/3225
* docs(cloud): align connect surfaces and GCP setup by @msaad00 in https://github.com/msaad00/agent-bom/pull/3226
* fix(ci): refresh latest image with runtime security overlay by @msaad00 in https://github.com/msaad00/agent-bom/pull/3229
* fix(ci): give latest refresh publish jobs cache and budget by @msaad00 in https://github.com/msaad00/agent-bom/pull/3230
* fix(action): fail high vulnerabilities by default by @msaad00 in https://github.com/msaad00/agent-bom/pull/3231
* fix(sbom): isolate explicit target scans from ambient skill state by @msaad00 in https://github.com/msaad00/agent-bom/pull/3232
* fix(mcp): bind write tools to authenticated operator tokens by @msaad00 in https://github.com/msaad00/agent-bom/pull/3233
* fix(triage): derive exploitability from advisory facts by @msaad00 in https://github.com/msaad00/agent-bom/pull/3234
* fix(compliance): require real evidence in signed reports by @msaad00 in https://github.com/msaad00/agent-bom/pull/3235
* fix(graph): prune orphan nodes in scoped views by @msaad00 in https://github.com/msaad00/agent-bom/pull/3236
* feat(enrich): add AI provider contract provenance by @msaad00 in https://github.com/msaad00/agent-bom/pull/3237
* fix(multitenant): bind MCP and Shield runtime tenant scope by @msaad00 in https://github.com/msaad00/agent-bom/pull/3238
* fix(gateway): fail closed on policy engine faults by @msaad00 in https://github.com/msaad00/agent-bom/pull/3239
* fix(graph): roll cloud resources into account containment by @msaad00 in https://github.com/msaad00/agent-bom/pull/3243
* docs(diagrams): redesign architecture and how-it-works for clarity by @msaad00 in https://github.com/msaad00/agent-bom/pull/3240
* fix(integrity): bind cosign verification to release identity by @msaad00 in https://github.com/msaad00/agent-bom/pull/3244
* fix(audit): harden post-release cleanup surfaces by @msaad00 in https://github.com/msaad00/agent-bom/pull/3245
* fix(graph): offload expensive API graph compute by @msaad00 in https://github.com/msaad00/agent-bom/pull/3248
* docs(deploy): define hosted POC and Snowflake lane by @msaad00 in https://github.com/msaad00/agent-bom/pull/3249
* fix(ui): hand off cloud scans to evidence surfaces by @msaad00 in https://github.com/msaad00/agent-bom/pull/3250
* fix(security): bind webhook signatures to timestamps by @msaad00 in https://github.com/msaad00/agent-bom/pull/3251
* fix(graph): preserve cloud provider for CIS evidence by @msaad00 in https://github.com/msaad00/agent-bom/pull/3253
* fix(ui): wire cloud connection scan schedules by @msaad00 in https://github.com/msaad00/agent-bom/pull/3254
* docs(deploy): add hosted POC Caddy front door by @msaad00 in https://github.com/msaad00/agent-bom/pull/3255
* fix(ui): surface cloud CIS findings consistently by @msaad00 in https://github.com/msaad00/agent-bom/pull/3252
* fix(ui): keep connection scheduler under bundle budget by @msaad00 in https://github.com/msaad00/agent-bom/pull/3257
* fix(auth): use central RBAC role ranking by @msaad00 in https://github.com/msaad00/agent-bom/pull/3279
* fix(severity): centralize ranking across outputs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3280
* fix(mcp): bind write audit actors to auth identity by @msaad00 in https://github.com/msaad00/agent-bom/pull/3281
* chore(deps): combine weekly dependency and registry updates by @msaad00 in https://github.com/msaad00/agent-bom/pull/3277
* fix(deploy): harden shared compose defaults by @msaad00 in https://github.com/msaad00/agent-bom/pull/3282
* fix(graph): offload estate rollup compute by @msaad00 in https://github.com/msaad00/agent-bom/pull/3283
* docs(hosted): add live-link POC overlay by @msaad00 in https://github.com/msaad00/agent-bom/pull/3284
* fix(compliance): make CLI export evidence-backed by @msaad00 in https://github.com/msaad00/agent-bom/pull/3285
* Persist cloud connection last scan handoff by @msaad00 in https://github.com/msaad00/agent-bom/pull/3286
* fix(cli): centralize severity gate comparisons by @msaad00 in https://github.com/msaad00/agent-bom/pull/3287
* feat(cli): add findings triage commands by @msaad00 in https://github.com/msaad00/agent-bom/pull/3288
* fix(hosted): fail closed on POC compose exposure by @msaad00 in https://github.com/msaad00/agent-bom/pull/3289
* docs(product): clarify CSPM, DSPM, and hosted coverage boundaries by @msaad00 in https://github.com/msaad00/agent-bom/pull/3290
* fix(deploy): harden monitoring example defaults by @msaad00 in https://github.com/msaad00/agent-bom/pull/3291
* fix(integrity): fail closed on incomplete sigstore verification by @msaad00 in https://github.com/msaad00/agent-bom/pull/3292
* fix(mcp): enforce bearer token expiry by @msaad00 in https://github.com/msaad00/agent-bom/pull/3293
* fix(hosted): add POC preflight gate by @msaad00 in https://github.com/msaad00/agent-bom/pull/3294
* fix(ui): configure API URL at container runtime by @msaad00 in https://github.com/msaad00/agent-bom/pull/3295
* fix(cli): expose all compliance export frameworks by @msaad00 in https://github.com/msaad00/agent-bom/pull/3296
* Enhance README architecture and workflow SVG diagrams by @msaad00 in https://github.com/msaad00/agent-bom/pull/3297
* fix(scan): alpine APK coverage, metrics sync, and doc SVG accuracy by @msaad00 in https://github.com/msaad00/agent-bom/pull/3298
* fix(docs): stop SVG text overflow — clip-free REST API label + SIEM caption by @msaad00 in https://github.com/msaad00/agent-bom/pull/3300
* fix(sca): canonicalize CVE IDs and expose match-confidence tiers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3301
* docs(images): polish README architecture SVG layout and icons by @msaad00 in https://github.com/msaad00/agent-bom/pull/3305
* fix(sca): force OSV fallback for sparse distro releases by @msaad00 in https://github.com/msaad00/agent-bom/pull/3302
* feat(db): add NVD incremental sync when API key is configured by @msaad00 in https://github.com/msaad00/agent-bom/pull/3303
* perf(sca): parallelize OSV batch requests with bounded concurrency by @msaad00 in https://github.com/msaad00/agent-bom/pull/3304
* feat(sca): extract & store NVD CPE applicability (CPE matching — PR 1/3) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3306
* feat(sca): CPE candidate matcher wired into the scan path (CPE — PR 2/3) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3307
* fix(security): harden WebSocket and SAML auth by @msaad00 in https://github.com/msaad00/agent-bom/pull/3308
* feat(sca): CPE vendor disambiguation + accuracy harness (CPE — PR 3/3) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3310
* fix(graph): keep optional pg_trgm from breaking bootstrap by @msaad00 in https://github.com/msaad00/agent-bom/pull/3309
* fix(ui): default static deploys to same-origin API by @msaad00 in https://github.com/msaad00/agent-bom/pull/3311
* test(sca): real offline + online scan-accuracy validation by @msaad00 in https://github.com/msaad00/agent-bom/pull/3312
* chore(release): v0.90.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/3313


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.89.2...v0.90.0
