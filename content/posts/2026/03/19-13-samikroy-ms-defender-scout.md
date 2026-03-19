---
title: Microsoft Defender Scout
date: 2026-03-19 13:51:05 +00:00
tags:
  - samikroy
  - GitHub Actions
draft: false
repo: https://github.com/samikroy/ms-defender-scout
marketplace: https://github.com/marketplace/actions/microsoft-defender-scout
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/samikroy/ms-defender-scout** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/microsoft-defender-scout) to find the latest changes.

## Action Summary

Microsoft Defender Scout is a GitHub Action designed for automating security assessments across Microsoft Defender products by generating Advanced Hunting queries and comprehensive HTML reports. It streamlines the process of identifying vulnerabilities and threats using the Microsoft Graph API, making it easier to perform detailed analyses and share results. Key features include automated KQL query generation, real-time logging, and secure Azure authentication, enabling efficient and professional security evaluations.

## Release notes

## 🚀 Marketplace Release - Marketplace Availability

MS Defender Scout v1.0.1 is now available! Streamlined Microsoft Defender Advanced Hunting query management.

### ✨ Features
- **20 Pre-built KQL Queries** covering devices, alerts, vulnerabilities, threats, identity, email, and cloud apps
- **Automated Report Generation** with real-time Defender data
- **OAuth 2.0 Authentication** - Secure credential handling

### 📖 Documentation
- [README](https://github.com/samikroy/ms-defender-scout#readme) - Setup guide
- [Contributing](https://github.com/samikroy/ms-defender-scout/blob/main/CONTRIBUTING.md) - How to contribute
- [KQL Examples](https://github.com/samikroy/ms-defender-scout/blob/main/KQL-EXAMPLES.md) - Query samples

### 🚀 Quick Start

## 🚀 Quick Start (3 Steps)
 
### Step 1 — Create a Service Principal
 
```bash
# Register app & grant Defender permissions
az ad app create --display-name "MS Defender Scout"
az ad sp create --id <app-id>
```
 
Then in Azure Portal → App registrations → API permissions → Add:
- **Microsoft Graph** → Application → `ThreatHunting.Read.All`
- Click **Grant admin consent**
 
### Step 2 — Add Secrets to Your Repo
 
Go to **Settings → Secrets and variables → Actions** → add:
 
| Secret | Value |
|--------|-------|
| `AZURE_CLIENT_ID` | Application (client) ID |
| `AZURE_CLIENT_SECRET` | Client secret value |
| `AZURE_TENANT_ID` | Directory (tenant) ID |
 
### Step 3 — Add the Workflow
 
Create `.github/workflows/defender-scout.yml`:
 
```yaml
name: Defender Scout Report
 
on:
  workflow_dispatch:
  schedule:
    - cron: '0 6 * * 1'  # Weekly on Monday at 6 AM UTC
 
jobs:
  report:
    runs-on: ubuntu-latest
    steps:
      - name: 🛡️ Run Microsoft Defender Scout
        uses: samikroy/ms-defender-scout@v1
        with:
          azure_client_id: ${{ secrets.AZURE_CLIENT_ID }}
          azure_client_secret: ${{ secrets.AZURE_CLIENT_SECRET }}
          azure_tenant_id: ${{ secrets.AZURE_TENANT_ID }}
```
 
That's it. Go to **Actions → Run workflow** → download the HTML report from artifacts.
 
---
 
## ⚙️ Configuration
 
### Inputs
 
| Input | Required | Default | Description |
|-------|----------|---------|-------------|
| `azure_client_id` | ✅ | — | Service Principal Application (client) ID |
| `azure_client_secret` | ✅ | — | Service Principal client secret |
| `azure_tenant_id` | ✅ | — | Azure AD Tenant ID |
| `report_path` | ❌ | `ms-defender-scout-report.html` | Output path for the HTML report |
| `queries_path` | ❌ | Built-in 20 queries | Path to a custom queries file (`Title >> KQL Query`, one per line) |
 
### Outputs
 
| Output | Description |
|--------|-------------|
| `report_path` | Path to the generated HTML report |
 
The report is also automatically uploaded as a **build artifact** (retained 90 days).
 
### Custom Queries Example
 
```yaml
- uses: samikroy/ms-defender-scout@v1
  with:
    azure_client_id: ${{ secrets.AZURE_CLIENT_ID }}
    azure_client_secret: ${{ secrets.AZURE_CLIENT_SECRET }}
    azure_tenant_id: ${{ secrets.AZURE_TENANT_ID }}
    queries_path: './my-queries.txt'
    report_path: 'weekly-defender-report.html'
```

See [README](https://github.com/samikroy/ms-defender-scout#readme) for detailed setup instructions.
