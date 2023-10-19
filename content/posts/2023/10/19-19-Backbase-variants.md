---
title: variants-switch
date: 2023-10-19 19:05:38 +00:00
tags:
  - Backbase
  - GitHub Actions
draft: false
repo: Backbase/variants
marketplace: https://github.com/marketplace/actions/variants-switch
version: 1.2.0
dependentsNumber: "2"
---


Version updated for **Backbase/variants** to version **1.2.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/variants-switch) to find the latest changes.

## Release notes

**Release 1.2.0**

FIXES:
- Github Marketplace action not picking up the latest release automatically [#189]
- Calling variants setup on M1 mac uses M1 unsupported gems in Gemfile [#208]
- Variants setup on M1 mac does not automatically link variants.xcconfig to xcodeproject [#209]
- Some signing configurations not automatically set in Xcode 14 [#214]

CHANGES:
- Signing configuration is updated not only during `setup` but also during `switch` [#215]
- Items in `variants.xcconfig` should be sorted alphabetically [#219]

NEW:
- Ability to add a `postSwitch` command/script, both globally or variant specific [#221]
- Add ability to override app name per variant [#216]
- Expose configuration keys as static variables in swift [#125]
