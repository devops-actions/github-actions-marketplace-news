---
title: NetOfficeFw/nuget-login
date: 2026-03-24 22:04:18 +00:00
tags:
  - NetOfficeFw
  - GitHub Actions
draft: false
repo: https://github.com/NetOfficeFw/nuget-login
marketplace: https://github.com/marketplace/actions/netofficefw-nuget-login
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/NetOfficeFw/nuget-login** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/netofficefw-nuget-login) to find the latest changes.

## Action Summary

The **NuGet Login (OIDC)** GitHub Action facilitates secure, passwordless authentication to NuGet servers by leveraging OpenID Connect (OIDC). It automates the process of generating a short-lived NuGet API key by exchanging a GitHub OIDC token with a NuGet-compatible token service, enabling secure package publishing without the need for long-lived credentials. This action streamlines authentication for workflows, enhancing security and simplifying the deployment of NuGet packages.

## Release notes

## What's New

- **Node.js 24 runtime** — The action now runs on the node24 GitHub Actions runtime.
- **Updated dependencies** — Upgraded `@actions/core` to `v3` and `@actions/http-client` to `v4`, fixing known security vulnerabilities.

### Migration from `v1`

Update your workflow reference from `@v1` to `@v2`:

```yaml
- name: NuGet Login
  uses: NetOfficeFw/nuget-login@v2
  id: nuget_auth
  with:
    user: my-nuget-username
```

### Usage

```yaml
name: Publish NuGet package

on:
  push:
    branches: [main]

permissions:
  id-token: write
  contents: read

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v6

    - name: NuGet Login
      uses: NetOfficeFw/nuget-login@v2
      id: nuget_auth
      with:
        user: my-nuget-username

    - name: Push package
      run: dotnet nuget push ./bin/*.nupkg --api-key "${{ steps.nuget_auth.outputs.NUGET_API_KEY }}" --source https://www.nuget.org/api/v2/package
```


> **Note:** The v2 release requires NodeJS 24 runtime on GitHub Actions runners.
