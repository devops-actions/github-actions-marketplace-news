---
title: LocalXpose Tunnel
date: 2025-10-27 17:01:09 +00:00
tags:
  - LocalXpose
  - GitHub Actions
draft: false
repo: https://github.com/LocalXpose/localxpose-action
marketplace: https://github.com/marketplace/actions/localxpose-tunnel
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/LocalXpose/localxpose-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/localxpose-tunnel) to find the latest changes.

## Release notes

# 🎉 LocalXpose GitHub Action v1.0.0 (2025-07-27)

### 👾 Hi! 

The LocalXpose team is excited to release the first public version of the LocalXpose Tunnel GitHub Action. 

### What is it? 

It's the easiest way to create a tunnel to private services running in your GitHub Actions workflow. Use it to test external integrations, webhooks, callback flows and more. Launch zero-deployment PR preview environments directly from your GitHub workflow.

## ✨ Key Features

- 🌐 Cross-platform support - Works on Ubuntu, macOS, and Windows runners
- 🔒 Secure tunnels - Create HTTP tunnels with automatic HTTPS endpoints
- 💬 PR previews - Automatically post preview URLs as PR comments
- 🏭 Ephemeral or static URLs - Easily run branch workflows in parallel, or re-use your own domain
- 🌍 Global regions - Deploy tunnels in US, EU, or AP regions
- ⚡ Zero boilerplate - no wait-for-it, no copypasta - Just add your token and go!
- 🧹 Auto cleanup - Tunnels are properly closed after workflow completion

## 📦 Quick Start

```yaml
      - name: Create tunnel to local app
        id: tunnel
        uses: localxpose/localxpose-action@v1
        with:
          port: 3000
          token: ${{ secrets.LX_ACCESS_TOKEN }}

      - name: Access app securely over the public internet
        run: |
          echo "App reachable at: ${{ steps.tunnel.outputs.url }}"
          # Test the tunnel
          curl -s ${{ steps.tunnel.outputs.url }}
```

*(See the [README](https://github.com/LocalXpose/localxpose-action/blob/main/README.md#setup) for more guidance on creating an account and configuring repository secrets.)*

## 🚀 What's Next

This release focuses on stability and ease of use. We've thoroughly tested HTTP tunnels across Ubuntu, macOS, and Windows. 
Future releases may include support for additional tunnel types (TCP, TLS, UDP) based on community feedback.

## 📖 Resources

- https://github.com/localxpose/localxpose-action
- https://localxpose.io
- https://github.com/localxpose/localxpose-action/issues

Thank you to our users and everyone else who contributed to making this release possible! 👾

---
*Note: This action requires a LocalXpose account. Free tier includes HTTP tunnels with 15-minute sessions.*

---

### Changelog

* Initial release ([57178be](https://github.com/localxpose/localxpose-action/commit/57178be4033f6e1f4b4b3b09fe5bec57586a78ff))

