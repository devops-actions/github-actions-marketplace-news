---
title: cdk-diff-action
date: 2025-06-20 17:00:17 +00:00
tags:
  - corymhall
  - GitHub Actions
draft: false
repo: https://github.com/corymhall/cdk-diff-action
marketplace: https://github.com/marketplace/actions/cdk-diff-action
version: v2.0.0
dependentsNumber: "4"
---


Version updated for **https://github.com/corymhall/cdk-diff-action** to version **v2.0.0**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cdk-diff-action) to find the latest changes.

## Release notes

## [2.0.0](https://github.com/corymhall/cdk-diff-action/compare/v1.4.21...v2.0.0) (2025-06-20)


### ⚠ BREAKING CHANGES

**several breaking changes with details below**

There are several breaking changes in this release.
1. Replace `noDiffForStages` with `stackSelectionStrategy` &
`stackSelectorPatterns`
This uses the native selection stack filtering capability of
`toolkit-lib` and should be a more robust option for users to filter
stacks. `stackSelectorPatterns` also uses a multi-line input instead of
a comma delimited string input. To migrate from `noDiffForStages` to
`stackSelectorPatterns` you can do this:

```yaml
# from this
- name: Diff
   uses: corymhall/cdk-diff-action@v1
   with:
     noDiffForStages: "Stage1,Stage2"
     githubToken: ${{ secrets.GITHUB_TOKEN }}

# to this
- name: Diff
   uses: corymhall/cdk-diff-action@v2
   with:
     stackSelectorPatterns: |
       !Stage1/*
       !Stage2/*
     githubToken: ${{ secrets.GITHUB_TOKEN }}
```
2. The default `diffMethod` is changed to `change-set` to match the cdk
default behavior. This also changes the IAM Role used for diff from the
`lookup-role` to the `deploy-role`. To keep the old behavior you can
specify `diffMethod: template-only`
3. `allowDestroyTypes` and `noFailOnDestructiveChanges` input types were
changed from a comma delimited string to a multi-line string.
```yaml
# from this
- name: Diff
   uses: corymhall/cdk-diff-action@v1
   with:
     noFailOnDestructiveChanges: "Stage1,Stage2"
     githubToken: ${{ secrets.GITHUB_TOKEN }}

# to this
- name: Diff
   uses: corymhall/cdk-diff-action@v2
   with:
     noFailOnDestructiveChanges: |
       Stage1
       Stage2
     githubToken: ${{ secrets.GITHUB_TOKEN }}
```

### Features

* add timestamp to comment ([#135](https://github.com/corymhall/cdk-diff-action/issues/135)) ([d06e4a5](https://github.com/corymhall/cdk-diff-action/commit/d06e4a5f76a86ae1dba30e9f441c9eb9f7153dab)), closes [#132](https://github.com/corymhall/cdk-diff-action/issues/132)
* add title and defaultStageDisplayName inputs ([#133](https://github.com/corymhall/cdk-diff-action/issues/133)) ([83ac6d4](https://github.com/corymhall/cdk-diff-action/commit/83ac6d48902a43f88354b3a938200b31ab714662))
* use toolkit-lib for diff ([#125](https://github.com/corymhall/cdk-diff-action/issues/125)) ([03fd0c8](https://github.com/corymhall/cdk-diff-action/commit/03fd0c8e013059a66f8d10524234cb188bd261bd)), closes [#62](https://github.com/corymhall/cdk-diff-action/issues/62) [#44](https://github.com/corymhall/cdk-diff-action/issues/44) [#62](https://github.com/corymhall/cdk-diff-action/issues/62)
* use toolkit-lib for diff ([#125](https://github.com/corymhall/cdk-diff-action/issues/125)) ([#142](https://github.com/corymhall/cdk-diff-action/issues/142)) ([bef9679](https://github.com/corymhall/cdk-diff-action/commit/bef967944f064fb34abd15f233e0194436adab54)), closes [#62](https://github.com/corymhall/cdk-diff-action/issues/62) [#44](https://github.com/corymhall/cdk-diff-action/issues/44) [#62](https://github.com/corymhall/cdk-diff-action/issues/62)


### Bug Fixes

* action fails when there is missing context ([#141](https://github.com/corymhall/cdk-diff-action/issues/141)) ([57ac3a1](https://github.com/corymhall/cdk-diff-action/commit/57ac3a11b2d9fd320cfa4f1e230f5d0952fbedd2))
* process longer comments ([#137](https://github.com/corymhall/cdk-diff-action/issues/137)) ([9621033](https://github.com/corymhall/cdk-diff-action/commit/962103309dd7567851b231c229a7250402f0e3a2))
* upgrade toolkit-lib and use stack displayName  ([#134](https://github.com/corymhall/cdk-diff-action/issues/134)) ([4603015](https://github.com/corymhall/cdk-diff-action/commit/4603015b6fec74d8373bd91aae2b1a3f2d7be06c))

