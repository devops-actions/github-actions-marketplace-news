---
title: PortHawk Security Scan
date: 2026-04-03 21:45:10 +00:00
tags:
  - JakobBartoschek
  - GitHub Actions
draft: false
repo: https://github.com/JakobBartoschek/porthawk
marketplace: https://github.com/marketplace/actions/porthawk-security-scan
version: v1.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/JakobBartoschek/porthawk** to version **v1.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/porthawk-security-scan) to find the latest changes.

## Action Summary

PortHawk is an asynchronous TCP/UDP port scanner built in Python, designed to identify open ports, extract service banners, detect operating systems, perform CVE lookups, and generate detailed reports in various formats such as JSON, CSV, HTML, and SARIF. It automates network reconnaissance tasks, supports advanced features like Nmap XML comparison, machine learning-based port prioritization, and honeypot detection, and includes a Streamlit-powered web dashboard for non-technical users. Additionally, it integrates seamlessly with GitHub Actions to enable automated security scans within CI/CD workflows.

## What's Changed

## What's in this release

The web dashboard got three real fixes and one new feature. All related to the Quick Scan preset being broken in ways that weren't obvious.

### Quick Scan preset — fixed properly

**Bug 1:** The preset set timeout/threads/ports but left scan mode and enrichment checkboxes (CVE lookup, banners, honeypot) untouched. If you had CVE lookup enabled from a previous scan, the "quick" preset would still hit the NVD API for every open port and take ages.

**Bug 2:** The button click went through a two-rerun cycle via an `auto_start` flag that silently failed in Streamlit 1.55.0 — so nothing happened when you clicked it.

**Bug 3 (root cause):** `st.session_state` writes from background threads are unreliable in Streamlit. The scan ran fine, but results never reached the UI. Fixed by writing into a plain Python dict stored as an object reference in session state, then copying to session state from the main thread once the worker is done.

**Result:** Type an IP, click `⚡ Quick Scan — Start!` (label changes when a target is entered), scan starts immediately. ~1 second for 100 common ports.

### Live results during scan (new)

Open ports now appear in a live table the moment they're found. No waiting for the scan to finish.

- Progress bar shows `X/Y ports (N%) — Z open` and updates every 0.5 s
- Uses the existing `on_result` callback in `scan_targets` (via `asyncio.as_completed`)
- Works for Quick Scan and regular Start Scan

### Usage

```bash
pip install porthawk[dashboard]
python start_dashboard.py
```

Open `http://localhost:8501`, type a target IP, click `⚡ Quick Scan — Start!`.
