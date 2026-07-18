---
title: GitGalaxy Scanner
date: 2026-07-18 06:46:50 +00:00
tags:
  - squid-protocol
  - GitHub Actions
draft: false
repo: https://github.com/squid-protocol/gitgalaxy
marketplace: https://github.com/marketplace/actions/gitgalaxy-scanner
version: v2.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  GitGalaxy is a tool that provides a comprehensive macro-level view of software architectures across the entire repository. It automates the process of understanding the network dependencies and identifying local folder constraints, mapping out the exact flow of information across different languages and tasks. This allows for more efficient DevSecOps operations by providing detailed insights into codebase risks.
---


Version updated for **https://github.com/squid-protocol/gitgalaxy** to version **v2.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitgalaxy-scanner) to find the latest changes.

## Action Summary

GitGalaxy is a tool that provides a comprehensive macro-level view of software architectures across the entire repository. It automates the process of understanding the network dependencies and identifying local folder constraints, mapping out the exact flow of information across different languages and tasks. This allows for more efficient DevSecOps operations by providing detailed insights into codebase risks.

## What's Changed

# GitGalaxy v2.4.0: Planetary Scale CD Integration 

GitGalaxy v2.4.0 is focused on ecosystem integration and community outreach. Our primary goal with this milestone is to make GitGalaxy deployable in the vast majority of corporate DevSecOps environments in under 5 minutes. This means meeting developers where they already work by deploying our tool across GitLab, Azure DevOps, and Bitbucket, alongside our existing GitHub distribution. 

In short: GitGalaxy is now natively integrated into the security dashboards of GitHub, GitLab, Azure, and Bitbucket. 

GitHub remains our active development hub. From there, automated workflows push read-only clones to the other platforms, triggering GitGalaxy as a native CI security gate in each ecosystem whenever code is pushed. Repositories on external sites have been strictly locked down to funnel all active development and contributions back to GitHub.

### The "Deploy Anywhere" CI/CD Matrix
* **What we did:** Engineered and validated plug-and-play pipeline templates for Azure DevOps, GitLab CI, Bitbucket Pipelines, and GitHub Actions. This includes custom utilities, like a native Bitbucket Code Insights REST integration, to publish inline PR annotations. We also resolved pipeline regressions by fixing YAML syntax failures and Azure basic authentication parsing errors.
* **What this allows:** This removes the guesswork from wiring GitGalaxy into your infrastructure. DevOps engineers can simply copy our pre-built YAML templates into their repositories to deploy GitGalaxy as a native security gate. For example, if a developer pushes risky code on Bitbucket, our new REST utility will overlay a warning directly onto the relevant line of code in the Pull Request view.

### Universal SARIF Exporting & Native Dashboards
* **What we did:** Built the Universal SARIF Exporter and implemented alert sanitization algorithms that zero out threat arrays for ignored paths. 
* **What this allows:** GitGalaxy now automatically translates its calculated risk indicators (derived from raw regular expression keyword hit distributions) into industry-standard SARIF payloads. Your security findings will populate directly inside native UI dashboards like GitHub Advanced Security and GitLab Ultimate. The new sanitization rules also significantly reduce ghost alerts, keeping your dashboard focused on actionable threats.

### CLI Quality Gating
* **What we did:** Injected new systemic threat gating parameters (such as `max_system_threat`) directly into the core orchestrator and worked to reduce false-positive security signatures across the core internal SAST engines.
* **What this allows:** You can configure CI/CD pipelines to explicitly fail and block a merge if the structural risk exceeds customized thresholds. The CLI output is also cleaner, giving developers immediate and clear feedback in their terminal when a build fails.

### Air-Gapped Reliability & Core Upgrades
* **What we did:** Implemented configuration file support via `.galaxyscope.yaml` to enforce global repository scanning rules and patched supply chain firewall bypasses. We enforced explicit zero-dependency mode fallbacks and hardened the Python execution environment by bumping core dependencies (CodeQL to 4.37.0, pytest to 9.1.1, and tiktoken to 0.13.0).
* **What this allows:** GitGalaxy is hardened for sterile environments. The zero-dependency fallback ensures the engine can execute inside air-gapped CI/CD runners without internet access. Security teams can also mandate directory exclusions and custom risk policies across massive monorepos using a single `.galaxyscope.yaml` file.
