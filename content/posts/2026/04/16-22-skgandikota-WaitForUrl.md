---
title: WaitForUrl
date: 2026-04-16 22:12:05 +00:00
tags:
  - skgandikota
  - GitHub Actions
draft: false
repo: https://github.com/skgandikota/WaitForUrl
marketplace: https://github.com/marketplace/actions/waitforurl
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/skgandikota/WaitForUrl** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waitforurl) to find the latest changes.

## Action Summary

The WaitForUrl GitHub Action automates the process of polling a specified URL until it meets expected conditions, such as returning a specific HTTP status code or containing predefined content in the response body. This is particularly useful for deployment verification or monitoring asynchronous processes, ensuring that systems or endpoints are ready before proceeding in a CI/CD pipeline. Key capabilities include customizable polling intervals, timeout settings, and support for HTTP methods and headers.

## What's Changed

## What it does
Poll a URL on repeat until it returns the expected HTTP status or body content. Built for deploy-then-verify workflows.

## Highlights
- Match by status code, body substring, or both
- Configurable polling interval and timeout
- Redirect control
- Rich outputs: `time_elapsed`, `attempts`, `success`

## Quick Start
```yaml
- uses: skgandikota/WaitForUrl@v1
  with:
    url: "https://myapp.example.com/health"
    expected_status: "200"
    expected_body: "\"status\":\"ok\""
    timeout: "300"
```

**Full docs →** [README](https://github.com/skgandikota/WaitForUrl#readme)
