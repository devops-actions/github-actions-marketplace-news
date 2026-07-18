---
title: Graveyard Check
date: 2026-07-18 14:17:02 +00:00
tags:
  - TahaKotwal12
  - GitHub Actions
draft: false
repo: https://github.com/TahaKotwal12/graveyard-check
marketplace: https://github.com/marketplace/actions/graveyard-check
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Graveyard Check is a GitHub Action that helps identify and recommend replacements for abandoned or at-risk dependencies in various ecosystems, such as npm, PyPI, and Go modules. It scans project lockfiles to determine if packages have been deprecated or not updated in a while, and suggests suitable alternatives. The tool supports multiple lockfile formats and can be used as a CI gate to ensure that only maintained versions are used.
---


Version updated for **https://github.com/TahaKotwal12/graveyard-check** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/graveyard-check) to find the latest changes.

## Action Summary

Graveyard Check is a GitHub Action that helps identify and recommend replacements for abandoned or at-risk dependencies in various ecosystems, such as npm, PyPI, and Go modules. It scans project lockfiles to determine if packages have been deprecated or not updated in a while, and suggests suitable alternatives. The tool supports multiple lockfile formats and can be used as a CI gate to ensure that only maintained versions are used.

## What's Changed

- Fix formatting in App component by removing unnecessary whitespace in the feature display section for improved code cleanliness. (bb468bf)
- Upgrade to version 0.3.0, adding support for pnpm and Yarn lockfiles alongside npm. Update README and App component to reflect new features and clarify ecosystem support. Enhance error messages for lockfile detection and improve overall documentation. (a2c7572)
- Add Checker component for package verification and update App layout to include a new section for checking packages. Enhance package.json with yaml dependency and update Vercel configuration for rewrites. Introduce checker logic in new lib files for npm and PyPI support. (57b46d7)
- Add SECURITY.md to outline the security policy for reporting vulnerabilities and update CONTRIBUTING.md to direct users to report issues privately. This enhances project security and clarifies contributor responsibilities. (ffccb8a)
- Add CODE_OF_CONDUCT.md to establish community standards and expectations for behavior. Update CONTRIBUTING.md to reference the new Code of Conduct, ensuring contributors are aware of the guidelines for participation. (c6924a2)
- Update CONTRIBUTING.md and README.md for clarity on ecosystem support; add support for PyPI in the CLI. Bump version to 0.2.0 and enhance error handling for package checks. Introduce new successor records for Python packages in the dataset. (4b773fd)
- Add GitHub contribution templates and issue bootstrap script. (de88857)
- Refactor command display in App component: update CLI commands to use 'npm i graveyard-check' and reorganize layout for better user experience. Modify section titles for clarity. (0125547)
- Update package.json files: change repository URL format in root package.json and add dependencies and devDependencies in website package.json for improved project structure and functionality. (d5e67a2)
- Rename project from 'Lifeboat' to 'Graveyard Check', updating all relevant files and references. Modify action.yml, README, and documentation to reflect the new name and functionality. Add website structure for marketing and documentation. Update CLI commands and error messages accordingly. (deebb75)
