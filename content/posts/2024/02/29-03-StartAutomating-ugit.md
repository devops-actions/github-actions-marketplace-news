---
title: UseUGit
date: 2024-02-29 03:26:03 +00:00
tags:
  - StartAutomating
  - GitHub Actions
draft: false
repo: StartAutomating/ugit
marketplace: https://github.com/marketplace/actions/useugit
version: v0.4.3
dependentsNumber: "?"
---


Version updated for **StartAutomating/ugit** to version **v0.4.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/useugit) to find the latest changes.

## Release notes

## ugit 0.4.3:

* Cloning Improvements:
    * git clone -Depth (#219)
    * git clone -Sparse (#220)
    * git clone -NoCheckout (#221)
    * git clone -Since (#224)
    * git clone -Nothing (#229)
    * git clone now handles gitless urls (#223)
* Commit Improvements:
    * Conventional Commit Support
    * Improving git commit -Type tab completion (#197)
    * git commit -Title will become description if -Type is passed (#225)
    * git.Conventional.Commit pseudotype (#250,#251,#252, #253, #254)  
    * git commit -Fix (#226)
    * git commit -Reference (#227)
* Decorating errors and output for better experience (#228)
* Adding some helpful script properties:
    * git.output.NotGitCommand (#236)
    * git.merge.error.Conflict (#235)  
    * git.pull.error.Conflict (#234)
    * git.error.UnknownRevision (#232)  
* Fixes:
    * Improving Use-Git dynamic alias support (#231)
* Consolidating Repo structure (#240, #241, #242, #243)
* Module Improvements:
    * Exporting `$ugit` (#247)
    * Mounting module to `ugit:` (#246)
    * Mounting `$home/Myugit` to `Myugit:` (if present) (#246)

---

Additional Changes in [Changelog](/CHANGELOG.md)
Like It?  Start It.  Love It?  Support It.
https://github.com/StartAutomating/ugit

