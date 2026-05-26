---
title: iac-cartographer
date: 2026-05-26 22:51:22 +00:00
tags:
  - vakaobr
  - GitHub Actions
draft: false
repo: https://github.com/vakaobr/iac-cartographer
marketplace: https://github.com/marketplace/actions/iac-cartographer
version: v0.1.4
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/vakaobr/iac-cartographer** to version **v0.1.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iac-cartographer) to find the latest changes.

## Action Summary

`iac-cartographer` is a GitHub Action that automates the discovery, documentation, and continuous publishing of Terraform/IaC repository details across multiple sources (e.g., GitHub, GitLab, Bitbucket). It extracts structural data, generates summaries using an LLM, and publishes organized documentation in various formats (e.g., Confluence, Notion, Markdown) while ensuring updates are only made when changes occur. This action streamlines self-onboarding, keeps IaC documentation up-to-date, and provides visibility into repository configurations, providers, and potential issues.

## What's Changed

## [0.1.4](https://github.com/vakaobr/iac-cartographer/compare/v0.1.3...v0.1.4) (2026-05-26)


### Added

* **aws:** ECS Fargate + EventBridge Scheduler runtime example (Terraform) ([#40](https://github.com/vakaobr/iac-cartographer/issues/40)) ([2ac870a](https://github.com/vakaobr/iac-cartographer/commit/2ac870a673c84942f054085800d3a9c5cd19edcc))
* **azure:** Container Apps Job runtime example (Terraform) ([#28](https://github.com/vakaobr/iac-cartographer/issues/28)) ([4ab9aa8](https://github.com/vakaobr/iac-cartographer/commit/4ab9aa80915df3e7d91b4da190d64f047d2fc41e))
* **cli:** --diff &lt;prev-output&gt; between-run change summary ([#44](https://github.com/vakaobr/iac-cartographer/issues/44)) ([e5a1a8f](https://github.com/vakaobr/iac-cartographer/commit/e5a1a8f3529a2014347323a66c2004932f81f9b3))
* **cli:** --lint subcommand for IaC hygiene + pre-commit hook ([#45](https://github.com/vakaobr/iac-cartographer/issues/45)) ([7237a91](https://github.com/vakaobr/iac-cartographer/commit/7237a91ffd00cc389dce829f4428a797a53f2d3c))
* **cli:** iac-cartographer init scaffolder ([#16](https://github.com/vakaobr/iac-cartographer/issues/16)) ([65b4974](https://github.com/vakaobr/iac-cartographer/commit/65b49749c6cf392855077ab3ff0ac820510c770e))
* **discovery:** Gitea / Forgejo discovery source ([#43](https://github.com/vakaobr/iac-cartographer/issues/43)) ([18069ba](https://github.com/vakaobr/iac-cartographer/commit/18069baa2466effef745177e9af3158d6704a5aa))
* **discovery:** pluggable discovery sources — Bitbucket + curated file ([#11](https://github.com/vakaobr/iac-cartographer/issues/11)) ([4b4ef50](https://github.com/vakaobr/iac-cartographer/commit/4b4ef50c7d4896a29a38a79fa3284a54c3d80336))
* **gcp:** Cloud Run Job runtime example (Terraform) ([#27](https://github.com/vakaobr/iac-cartographer/issues/27)) ([fe4f26f](https://github.com/vakaobr/iac-cartographer/commit/fe4f26f52ac655f636fbd03e393a8626ddf02704))
* **helm:** add Helm chart for k8s CronJob deployment ([#19](https://github.com/vakaobr/iac-cartographer/issues/19)) ([2722ff3](https://github.com/vakaobr/iac-cartographer/commit/2722ff3fa2f743bd6412e22eedc72a4dbe528643))
* **llm:** Azure OpenAI + OpenAI direct backends (GPT family) ([#31](https://github.com/vakaobr/iac-cartographer/issues/31)) ([36c0bfe](https://github.com/vakaobr/iac-cartographer/commit/36c0bfe97e4ce0870bcd6bac761c42da5c22efee))
* **llm:** Ollama backend (local LLM) ([#33](https://github.com/vakaobr/iac-cartographer/issues/33)) ([3907817](https://github.com/vakaobr/iac-cartographer/commit/390781780146a561f78c5dc606d1685e91bd7544))
* **llm:** pluggable LLM backend — Bedrock + Anthropic direct ([49c29ef](https://github.com/vakaobr/iac-cartographer/commit/49c29ef940742ceea0e1246f92eace28b7c0f5e7))
* **llm:** Vertex AI Claude backend ([#30](https://github.com/vakaobr/iac-cartographer/issues/30)) ([0e93e52](https://github.com/vakaobr/iac-cartographer/commit/0e93e52f28a6dca74ffd1e5f979f6637f2c9bf89))
* **notifications:** Discord webhook + stdout/JSONL channels (close-out) ([#39](https://github.com/vakaobr/iac-cartographer/issues/39)) ([43fcf78](https://github.com/vakaobr/iac-cartographer/commit/43fcf7852763e13b365a996a5cf99768cbc0d679))
* **notifications:** email (SMTP) + AWS SNS channels ([#37](https://github.com/vakaobr/iac-cartographer/issues/37)) ([084b3a9](https://github.com/vakaobr/iac-cartographer/commit/084b3a92b54c52e2ff9a22a20432545f0e7343ed))
* **notifications:** multi-channel dispatcher + back-compat Slack ([#35](https://github.com/vakaobr/iac-cartographer/issues/35)) ([ebe82e5](https://github.com/vakaobr/iac-cartographer/commit/ebe82e54c46d25c1f6b3bd1c375997a9c84b197c))
* **notifications:** PagerDuty + Opsgenie escalation channels ([#38](https://github.com/vakaobr/iac-cartographer/issues/38)) ([e76dd37](https://github.com/vakaobr/iac-cartographer/commit/e76dd37b876c9f58074ed8b0d047315acf98d92f))
* **notifications:** webhook-family channels (generic / slack_webhook / teams) ([#36](https://github.com/vakaobr/iac-cartographer/issues/36)) ([de20589](https://github.com/vakaobr/iac-cartographer/commit/de20589ccc3576a84da8b74abd7ec7ef4952ce87))
* **publishers:** GitHub Wiki publisher backend ([#42](https://github.com/vakaobr/iac-cartographer/issues/42)) ([b829ea5](https://github.com/vakaobr/iac-cartographer/commit/b829ea5d5311a7650c1f064790a3bf8085a0c1f3))
* **publishers:** machine-readable JSON publisher ([#21](https://github.com/vakaobr/iac-cartographer/issues/21)) ([8ff266e](https://github.com/vakaobr/iac-cartographer/commit/8ff266eb673a3c5d1894ec85154c85131e4fbfd2))
* **publishers:** Notion publisher backend ([#41](https://github.com/vakaobr/iac-cartographer/issues/41)) ([44171eb](https://github.com/vakaobr/iac-cartographer/commit/44171eb16e83d043ab6cfe7f368846f759949de9))
* **publishers:** pluggable publisher backend — Confluence + local Markdown ([#9](https://github.com/vakaobr/iac-cartographer/issues/9)) ([a2cc3bf](https://github.com/vakaobr/iac-cartographer/commit/a2cc3bf253bba9160b475e27cf06ad8fdf67e950))
* **publishers:** standalone HTML publisher (embedded CSS, no JS) ([#18](https://github.com/vakaobr/iac-cartographer/issues/18)) ([b6c3ffa](https://github.com/vakaobr/iac-cartographer/commit/b6c3ffa7cd85ad2e5fbaf53ac5da4298fc64c43c))
* **secrets:** pluggable secrets backend — env vars + dotenv + Vault ([#12](https://github.com/vakaobr/iac-cartographer/issues/12)) ([2e4d000](https://github.com/vakaobr/iac-cartographer/commit/2e4d0004d14cd935f695dc596d302b3f595fc302))


### Fixed

* **ci:** release-ghcr.yml needs contents:write to attach SBOM to release ([#54](https://github.com/vakaobr/iac-cartographer/issues/54)) ([6f1a356](https://github.com/vakaobr/iac-cartographer/commit/6f1a356a41e31cb8bf18d2266977a960b284ba69))


### Documentation

* Docs:  ([7237a91](https://github.com/vakaobr/iac-cartographer/commit/7237a91ffd00cc389dce829f4428a797a53f2d3c))
* Docs:  ([e5a1a8f](https://github.com/vakaobr/iac-cartographer/commit/e5a1a8f3529a2014347323a66c2004932f81f9b3))
* Docs:  ([b829ea5](https://github.com/vakaobr/iac-cartographer/commit/b829ea5d5311a7650c1f064790a3bf8085a0c1f3))
* Docs:  ([8ffc894](https://github.com/vakaobr/iac-cartographer/commit/8ffc894ba3445754d4cb55daa0d156c0768de12c))
* custom domain + optimized banner (PNG + WebP fallback) ([#23](https://github.com/vakaobr/iac-cartographer/issues/23)) ([dc14241](https://github.com/vakaobr/iac-cartographer/commit/dc1424165a6d8e47f4a81b4faae1069617ea7a01))
* **demo:** add zero-credentials clone-and-run demo ([#20](https://github.com/vakaobr/iac-cartographer/issues/20)) ([c873882](https://github.com/vakaobr/iac-cartographer/commit/c8738824c3dc64531012a09535f9da190adc7f7c))
* **examples:** new docs/examples/ section + docker-compose deployment ([#25](https://github.com/vakaobr/iac-cartographer/issues/25)) ([ea78967](https://github.com/vakaobr/iac-cartographer/commit/ea789679d1f3da49c4df87eb277bab5ad6ca4df3))
* mkdocs-material site + GitHub Pages workflow + banner ([#22](https://github.com/vakaobr/iac-cartographer/issues/22)) ([1554b4a](https://github.com/vakaobr/iac-cartographer/commit/1554b4a6c4b1637278d0f44b192acb215af3afc6))
* **readme:** refresh for pluggable backend reality ([#34](https://github.com/vakaobr/iac-cartographer/issues/34)) ([fea4a64](https://github.com/vakaobr/iac-cartographer/commit/fea4a646089ae367cad010f04413ff3e2ad481a7))
* refresh after notifications + Notion / GitHub Wiki / Gitea / AWS Terraform additions ([#47](https://github.com/vakaobr/iac-cartographer/issues/47)) ([b74d4d6](https://github.com/vakaobr/iac-cartographer/commit/b74d4d6078a3fb49980a76d018e83938d9c9e4d1))
* refresh Roadmap section — split Shipped + Coming next ([#24](https://github.com/vakaobr/iac-cartographer/issues/24)) ([f325cea](https://github.com/vakaobr/iac-cartographer/commit/f325cead89e576ef234fd06506d4af202677f960))
* **runtime:** K8s CronJob + GitHub Actions + cron deploy snippets ([#13](https://github.com/vakaobr/iac-cartographer/issues/13)) ([1f5b268](https://github.com/vakaobr/iac-cartographer/commit/1f5b268dda55c868cce81685f8cab6861a8ecdca))
* versioned docs site via mike + GitHub Pages branch deploy ([#46](https://github.com/vakaobr/iac-cartographer/issues/46)) ([fd34a49](https://github.com/vakaobr/iac-cartographer/commit/fd34a49432b9250df67f79fcc9b434a913becf85))


### Security

* hardening posture — SECURITY.md, reference doc, gitleaks + pip-audit CI ([#49](https://github.com/vakaobr/iac-cartographer/issues/49)) ([87d2da3](https://github.com/vakaobr/iac-cartographer/commit/87d2da3574543cbd037ec1c1a2d2fd034ba42cbb))

## What's Changed
* chore(main): release 0.1.4 by @github-actions[bot] in https://github.com/vakaobr/iac-cartographer/pull/53

## New Contributors
* @github-actions[bot] made their first contribution in https://github.com/vakaobr/iac-cartographer/pull/53

**Full Changelog**: https://github.com/vakaobr/iac-cartographer/compare/v0.1.3...v0.1.4
