---
title: Code Literal Sentinel
date: 2025-12-05 13:12:32 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/code-literal-sentinel
marketplace: https://github.com/marketplace/actions/code-literal-sentinel
version: v2.5.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Malnati/code-literal-sentinel** to version **v2.5.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-literal-sentinel) to find the latest changes.

## Release notes

These changes updates the `Code Literal Sentinel` GitHub Action to introduce a new idempotent audit strategy using content signatures, improving how repeated audits are detected and avoided. The workflow now generates a unique signature for the scanned codebase and checks for previous reports based on this signature, ensuring reports are only generated when the code changes. Several steps and messaging have been clarified and streamlined to reflect this new logic.

**Audit strategy improvements:**

* Switched to content signature-based idempotency, replacing previous SHA-based checks, and updated all related messaging and descriptions to clarify the new approach. (`action.yml`) [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L1-R3) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L40-L75) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L93-R135)
* In the main audit step, generates a content signature hash from tracked files, stores it in the report, and uses it to detect existing audits, preventing redundant reports. (`action.yml`) [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6R150-L142) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6R174)

**Workflow logic and messaging updates:**

* Circuit breaker logic and messages for branch and bot commit detection have been clarified to better reflect their function in avoiding audit loops. (`action.yml`)
* Output and summary messages throughout the workflow have been updated to clearly indicate when a report is reused due to an unchanged code signature, and to simplify report descriptions. (`action.yml`)

**General codebase and documentation clean-up:**

* Removed redundant comments and streamlined commit and PR creation steps, making the workflow easier to follow and maintain. (`action.yml`) [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L182-R195) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L197-L198) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L210-R229)Updated action.yml to version 2.5.0 with changes to descriptions, steps, and logic for the Code Literal Sentinel action.
