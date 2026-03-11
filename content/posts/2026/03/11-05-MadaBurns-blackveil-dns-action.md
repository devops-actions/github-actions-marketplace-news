---
title: Blackveil DNS Security Scanner
date: 2026-03-11 05:54:25 +00:00
tags:
  - MadaBurns
  - GitHub Actions
draft: false
repo: https://github.com/MadaBurns/blackveil-dns-action
marketplace: https://github.com/marketplace/actions/blackveil-dns-security-scanner
version: v1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/MadaBurns/blackveil-dns-action** to version **v1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blackveil-dns-security-scanner) to find the latest changes.

## Action Summary

The **Blackveil DNS Security Scanner GitHub Action** automates the process of auditing a domain's DNS and email security configuration within CI/CD pipelines. It performs comprehensive checks on standards like SPF, DMARC, DKIM, DNSSEC, and others, ensuring a minimum security grade is met and failing workflows if the threshold is not achieved. This action helps organizations maintain robust DNS security postures and identify vulnerabilities early in the development process.

## Release notes

# Blackveil DNS Security Scanner v1

Scan your domain's DNS & email security configuration and enforce a minimum grade directly in your CI/CD pipeline.

## What it does

Runs a comprehensive security scan against your domain covering 10 check categories:

- **SPF** — Sender Policy Framework validation
- **DMARC** — Policy, reporting, and alignment checks
- **DKIM** — DomainKeys Identified Mail presence and key strength
- **DNSSEC** — DNS Security Extensions validation
- **SSL/TLS** — Certificate chain, HSTS, and HTTPS redirect checks
- **MTA-STS** — Mail Transfer Agent Strict Transport Security
- **MX** — Mail exchanger redundancy, Null MX (RFC 7505), and IP detection
- **NS** — Nameserver configuration and redundancy
- **CAA** — Certificate Authority Authorization records
- **Subdomain Takeover** — Dangling CNAME detection with fingerprint verification

Each check produces a weighted score rolled into an overall grade (A+ through F). Set a minimum grade threshold and fail the build if your domain doesn't meet it.

## Quick start
```yaml
- uses: MadaBurns/blackveil-dns-action@v1
  with:
    domain: example.com
    min-grade: B
```

## How it works

- All DNS lookups use **Cloudflare DNS-over-HTTPS** — no direct DNS resolution, no sensitive data leaves your pipeline
- Passive, read-only checks only — no active reconnaissance or vulnerability scanning
- Powered by the open-source [Blackveil DNS](https://github.com/MadaBurns/bv-mcp) MCP server

## Use cases

- **Enforce email security baselines** — block merges if DMARC drops below `p=quarantine`
- **Catch DNS regressions** — detect accidental SPF/DKIM/DNSSEC misconfigurations before they hit production
- **Compliance gates** — require a minimum security grade for domain changes in regulated environments
- **Monitor subdomain takeover risk** — catch dangling CNAMEs in CI before attackers do

## Links

- [Blackveil DNS — GitHub](https://github.com/MadaBurns/bv-mcp)
- [Blackveil Security](https://blackveilsecurity.com)
