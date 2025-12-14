---
title: PR Comment Pro
date: 2025-12-14 05:37:51 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/pr-comment
marketplace: https://github.com/marketplace/actions/pr-comment-pro
version: v8.0.2
dependentsNumber: "1"
---


Version updated for **https://github.com/Malnati/pr-comment** to version **v8.0.2**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-comment-pro) to find the latest changes.

## Release notes

Malnati/pr-comment@v8.0.2 updates the `action.yml` file for the PR Comment Pro GitHub Action, focusing on improving clarity, maintainability, and user experience. The main changes include updating the action version, enhancing step naming and descriptions, consolidating steps for efficiency, and cleaning up unnecessary comments and grouping commands.

**General Improvements:**

* Updated the referenced action version from `v8.0.1` to `v8.0.2` and removed the version from the description for accuracy and clarity.
* Improved step names and descriptions throughout the workflow for better readability and localization, replacing generic or block-based IDs with descriptive, emoji-prefixed names. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L37-R38) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L91-L115) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L128-R105) [[4]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L158-L167) [[5]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L178-L201)

**Workflow Simplification and Cleanup:**

* Consolidated or removed redundant steps, such as merging template resolution and rendering into a single step, and removed unnecessary comments and `echo "::group::..."` commands to streamline logs and code. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L50) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L70-L81) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L91-L115) [[4]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L141) [[5]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L178-L201)
* Standardized environment variable usage and step outputs for clarity and consistency, e.g., using `inputs.template_path` directly instead of intermediate variables.

**Functional Adjustments:**

* Adjusted logic to improve the handling of sticky comments, including clearer step names and more direct variable passing for comment identification and updating. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L128-R105) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L158-L167)

These changes collectively make the workflow easier to understand, maintain, and use, especially for users reading logs or customizing the action.
