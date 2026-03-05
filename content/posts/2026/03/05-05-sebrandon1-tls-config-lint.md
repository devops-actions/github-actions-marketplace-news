---
title: TLS Config Lint
date: 2026-03-05 05:55:05 +00:00
tags:
  - sebrandon1
  - GitHub Actions
draft: false
repo: https://github.com/sebrandon1/tls-config-lint
marketplace: https://github.com/marketplace/actions/tls-config-lint
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sebrandon1/tls-config-lint** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tls-config-lint) to find the latest changes.

## Action Summary

The `tls-config-lint` GitHub Action scans source code in multiple programming languages to identify TLS configuration anti-patterns and security issues. It automates the detection of vulnerabilities such as insecure settings and weak cryptographic practices, providing inline annotations and detailed reports to streamline code reviews and improve security compliance. Key features include customizable severity thresholds, SARIF output for integration with GitHub Code Scanning, and support for six popular languages.

## Release notes

## What's New

### Rust Language Support (14 patterns) — PR #13

Full Rust TLS anti-pattern detection covering reqwest, native-tls, openssl, and rustls:

- **CRITICAL**: danger_accept_invalid_certs(true), danger_accept_invalid_hostnames(true), SslVerifyMode::NONE, custom ServerCertVerifier, set_verify_hostname(false)
- **HIGH**: Protocol::Tlsv10, Protocol::Tlsv11, SslVersion::SSL3, weak cipher lists, weak minimum TLS version
- **MEDIUM**: max version capped at TLS 1.2, custom cipher configuration
- **INFO**: TLS 1.3 only, PQC/ML-KEM adoption

### Framework-Aware TLS Anti-Patterns (11 patterns) — PR #14

New patterns targeting popular frameworks that most developers use instead of raw standard library APIs:

- **Python** (11 → 14): urllib3.disable_warnings() (HIGH), urllib3 DEFAULT_CIPHERS override (HIGH), aiohttp ssl=False (CRITICAL)
- **Node.js** (9 → 12): axios.defaults.httpsAgent (MEDIUM), strictSSL: false (CRITICAL), weak secureProtocol (HIGH)
- **Java** (11 → 16): NoopHostnameVerifier (CRITICAL), TrustAllStrategy/TrustSelfSignedStrategy (CRITICAL), OkHttp sslSocketFactory (CRITICAL), Apache HttpClient custom SSLContext (HIGH), SSLConnectionSocketFactory (HIGH)

### Distinct Exit Codes — PR #12

- Exit 1 = findings above threshold (linter worked, code has issues)
- Exit 2 = configuration or validation error (linter could not run)
- Early jq validation when SARIF output is requested

### Integration Tests — PR #11

End-to-end test suite exercising the full config, detect, scan, output, and exit code pipeline across 12 scenarios.

## Summary

- **Total patterns**: 63 → 74 across 6 languages (Go, Python, Node.js, C++, Java, Rust)
- All tests passing on Ubuntu and macOS

