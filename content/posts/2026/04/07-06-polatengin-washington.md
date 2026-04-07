---
title: Bicep Cost Estimator
date: 2026-04-07 06:15:46 +00:00
tags:
  - polatengin
  - GitHub Actions
draft: false
repo: https://github.com/polatengin/washington
marketplace: https://github.com/marketplace/actions/bicep-cost-estimator
version: v0.1.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/polatengin/washington** to version **v0.1.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bicep-cost-estimator) to find the latest changes.

## Action Summary

The Bicep Cost Estimator GitHub Action automates the estimation of monthly Azure costs based on Bicep and ARM templates before deployment. It simplifies cost analysis by compiling templates, extracting resource details, querying Azure Retail Prices API, and generating cost reports in various formats (table, JSON, CSV, Markdown). This action is ideal for integrating cost estimation into CI/CD workflows, providing developers with insights on Azure resource costs to optimize deployments.

## What's Changed

## Changes

This release includes the following commits:

- docs: update supported Azure resource types
- test: update assertions in RoundTrip_MultiResource test for accuracy
- test: update assertions in GenerateReport_MixedResources test for accuracy
- feat: add multiple mappers for extended resource types in P5 category
- feat: add StreamAnalyticsMapper for Azure Stream Analytics cost calculations
- feat: add ServiceFabricClusterMapper for Azure Service Fabric cost calculations
- feat: add RouteTableMapper for Azure Route Tables cost calculations
- feat: add RelayMapper for Azure Relay cost calculations
- feat: add PowerBIEmbeddedMapper for Azure Power BI Embedded cost calculations
- feat: add NetAppFilesMapper for Azure NetApp Files cost calculations
- feat: add PurviewAccountMapper for Azure Purview cost calculations
- feat: add MediaServicesMapper for Azure Media Services cost calculations
- feat: add ManagedIdentityMapper for Azure Managed Identity cost calculations
- feat: add ManagedGrafanaMapper for Azure Managed Grafana cost calculations
- feat: add VirtualDesktopHostPoolMapper for Azure Virtual Desktop cost calculations
- feat: add RecoveryServicesVaultMapper for Azure Recovery Services Vault cost calculations
- feat: add NetworkSecurityGroupMapper for Azure Network Security Group cost calculations
- feat: add LoadTestingMapper for Azure Load Testing cost calculations
- feat: add KustoClusterMapper for Azure Data Explorer cost calculations
- feat: add FirewallPolicyMapper for Azure Firewall cost calculations
