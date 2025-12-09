---
title: PR Comment Pro
date: 2025-12-09 21:16:13 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/pr-comment
marketplace: https://github.com/marketplace/actions/pr-comment-pro
version: v8.0.0
dependentsNumber: "1"
---


Version updated for **https://github.com/Malnati/pr-comment** to version **v8.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-comment-pro) to find the latest changes.

## Release notes

Malnati/pr-comment@v8.0.0 updates the GitHub Action `Malnati/pr-comment` from version 7.1.0 to 8.0.0 and refactors the input and template variable handling for posting comments on pull requests. The main changes focus on simplifying how variables are passed to templates, improving raw body handling, and enhancing validation and messaging for users.

**Template and variable handling:**

* Removed individual template variable inputs (`header_title`, `header_subject`, `header_actor`, `body_message`, `footer_result`, `footer_advise`) from `action.yml`, shifting variable management to environment variables and allowing dynamic variable substitution via envsubst.
* Improved detection and messaging for template variables: now, if a template file is present, the action scans for variables and instructs users on how to pass them using a `variables` block, making the usage clearer and more flexible.

**Raw body mode improvements:**

* Enhanced validation for raw body mode (`use_raw_body=true`): the action now checks if the `BODY_MESSAGE` environment variable is set and provides clear error messages if not, ensuring more robust input handling.
* Updated all references and messaging to use `BODY_MESSAGE` from the environment, instead of the previous input-based approach. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L76-R48) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L153-R125) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L183-L224)

**Sticky comment logic:**

* Changed sticky comment search to look for a hidden comment ID (`pr-comment-id:$MSG_ID`) in the comment body, improving reliability and consistency in updating existing comments.

**General improvements and cleanup:**

* Removed redundant code, comments, and input references throughout `action.yml` for clarity and maintainability. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L128-L131) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L143) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L172) [[4]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L274-L281) [[5]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L305-L312)Updated action version from v7.1.0 to v8.0.0 in action.yml.
