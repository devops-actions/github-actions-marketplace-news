---
title: PortHawk Security Scan
date: 2026-03-27 21:45:36 +00:00
tags:
  - JakobBartoschek
  - GitHub Actions
draft: false
repo: https://github.com/JakobBartoschek/porthawk
marketplace: https://github.com/marketplace/actions/porthawk-security-scan
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/JakobBartoschek/porthawk** to version **v1.4.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/porthawk-security-scan) to find the latest changes.

## Action Summary

PortHawk is an asynchronous TCP/UDP port scanner built in Python that automates network reconnaissance tasks by identifying open ports, detecting service versions, performing CVE lookups, and generating reports in various formats (JSON, CSV, HTML, SARIF). It provides advanced features like adaptive scan speeds, OS and service fingerprinting, honeypot detection, and IDS/IPS evasion, while offering a user-friendly web dashboard for non-technical users and integration with GitHub Actions for automated security workflows. Designed for efficient and flexible scanning, it eliminates the need for external tools like Nmap and supports both active and passive scanning techniques.

## Release notes

v1.4.0 adds IPv6 support. All scan modes that worked over IPv4 now work over IPv6 too — no new flags, no new dependencies.

## What works

- TCP connect scan
- UDP scan with protocol-specific payloads (DNS, NTP, SNMP, ...)
- Banner grabbing and version fingerprinting
- CVE lookup (same pipeline, no changes)
- OS detection via TTL (ping6 on Linux/macOS, ping -6 on Windows)
- HTTP header grabbing — automatically brackets IPv6 in the URL (`http://[::1]:80/`)

SYN scan and evasion mode depend on raw packet construction. Those are Scapy-specific and not covered here.

## How to use it

```bash
# bare address
porthawk scan -t 2001:db8::1 --common --banners

# bracket notation (copy-paste from a browser URL)
porthawk scan -t '[::1]' --common

# CIDR prefix
porthawk scan -t 2001:db8::/64 --top-ports 100
```

In the dashboard, just paste any IPv6 address or prefix into the target field.

## What changed internally

- `is_ipv6(host)` — new helper in `scanner.py`, detects bare and bracketed IPv6 addresses
- `expand_cidr` — strips `[brackets]` before parsing, handles `/128` prefix
- `_udp_probe_sync` (scanner.py + udp_scan.py) — picks `AF_INET6` automatically
- `get_ttl_via_ping` — uses `ping6` / `ping -6` for IPv6 targets
- `grab_http_headers` — wraps IPv6 in `[brackets]` in the URL

25 new tests in `tests/test_ipv6.py`. Total: 812.

