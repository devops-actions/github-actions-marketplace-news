---
title: Prowler Security Scan
date: 2026-04-29 22:03:25 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.25.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.25.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an open-source cloud security platform designed to automate security and compliance across any cloud environment. It provides hundreds of pre-built security checks, compliance frameworks, and remediation guidance, enabling organizations to monitor and secure their cloud infrastructure in real-time. Key capabilities include AI-driven insights, customizable checks, and seamless integrations, making it a scalable and cost-effective solution for cloud security management.

## What's Changed

## UI


### 🐞 Fixed

- Compliance page export menu now scales on small screens, and frameworks load on first render without requiring a manual scan re-selection [(#10918)](https://github.com/prowler-cloud/prowler/pull/10918)



## API


### 🐞 Fixed

- Attack Paths: AWS scans no longer fail when enabled regions cannot be retrieved, and scans stuck in `scheduled` state are now cleaned up after the stale threshold [(#10917)](https://github.com/prowler-cloud/prowler/pull/10917)
- Scan report and compliance downloads now redirect to a presigned S3 URL instead of streaming through the API worker, preventing gunicorn timeouts on large files [(#10927)](https://github.com/prowler-cloud/prowler/pull/10927)



## SDK


### 🐞 Fixed

- `KeyError` when generating compliance outputs after the CLI scan [#10919](https://github.com/prowler-cloud/prowler/pull/10919)
- Kubernetes OCSF `provider_uid` now uses the cluster name in in-cluster mode (so `--cluster-name` is correctly reflected in findings) and keeps the kubeconfig context in kubeconfig mode [(#10483)](https://github.com/prowler-cloud/prowler/pull/10483)




