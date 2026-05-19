---
title: GitHub Actions Telemetry Observer
date: 2026-05-19 15:24:22 +00:00
tags:
  - HimanM
  - GitHub Actions
draft: false
repo: https://github.com/HimanM/Github-Actions-Telemetry
marketplace: https://github.com/marketplace/actions/github-actions-telemetry-observer
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/HimanM/Github-Actions-Telemetry** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-actions-telemetry-observer) to find the latest changes.

## Action Summary

The "GitHub Actions Centralized Telemetry Observer" is a composite action designed to monitor and collect telemetry data for all workflows triggered by a specific commit SHA. It automates the tracking of workflow execution timelines, durations, statuses, and metadata, providing centralized analytics without requiring telemetry logic in individual workflows. Key capabilities include generating JSON metrics for external integrations, visualizing execution timelines, and supporting use cases like CI/CD pipeline analytics, auditing, and dashboarding.

## What's Changed

I am excited to announce the first major release of the **GitHub Actions Telemetry Observer**! 🎉

This action provides a centralized, non-intrusive way to monitor, record, and visualize the execution state of every workflow in your repository. By running a single observer workflow, you can generate comprehensive telemetry payloads and beautiful SVG status dashboards without modifying your existing pipelines.

### Key Features
* **Universal Monitoring:** Automatically tracks the status, duration, and skipped/pending states of all workflows triggered by a single commit SHA.
* **Zero-Touch Integration:** Operates entirely outside your existing workflows using the `workflow_run` trigger. No need to add tracking steps to your actual build/deploy jobs.
* **Rich Data Export:** Generates highly detailed JSON payloads containing step-level execution metrics, timing data, and historical run contexts.
* **Beautiful SVG Dashboard:** Automatically generates an elegant, responsive `workflow_status.svg` visual report for your `README.md`.
* **Smart Concurrency:** Automatically manages and cleans up skipped or cancelled duplicate observer runs to keep your Actions UI clutter-free.
* **External Integrations:** Built-in capability to securely `POST` telemetry JSON data to external APIs for long-term storage or analysis.

### Getting Started
Check out the [README.md](https://github.com/HimanM/Github-Actions-Telemetry/blob/main/README.md) for full configuration details, input parameters, and quick-start examples!

