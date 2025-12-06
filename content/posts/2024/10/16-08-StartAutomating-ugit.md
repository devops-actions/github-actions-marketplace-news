---
title: UseUGit
date: 2024-10-16 08:46:35 +00:00
tags:
  - StartAutomating
  - GitHub Actions
draft: false
repo: StartAutomating/ugit
marketplace: https://github.com/marketplace/actions/useugit
version: v0.4.5
dependentsNumber: "?"
---


Version updated for **StartAutomating/ugit** to version **v0.4.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/useugit) to find the latest changes.

## Release notes

## ugit 0.4.5:

> Like It? [Star It](https://github.com/StartAutomating/ugit)
> Love It? [Support It](https://github.com/sponsors/StartAutomating)

* git improvements
  * `git clone`
    * git clone -Since improvements (#276)
    * git clone -Since time period (#277)
  * `git log`
    * git.log.Trailer (#305)  
    * git.log.Description (#304)
    * git.log.Scope (#303)
    * git.log.CommitType (#301)
    * git.log.CommitDate (#309)
    * git.log.Change(s) (#306)
    * git.log.note(s) (#296)
    * git log accumulation improvement (#308)
    * git log parsing improvement (#306,#308,#309)
    * git.log.JiraTicket(s) (#313)
    * git log -TicketNumber(s) (#315)
  * `git commit`
    * git commit -OnBehalfOf (#275)
    * git commit -CoAuthoredBy (#274)
    * git commit -SkipCI (#320)
* Container improvements
  * Container.init.ps1 (#279,#280)
  * Container.start.ps1 (#281)
  * Container.stop.ps1 (#282)
* Action improvements
  * Refactoring ugit action (#289,#290)
  * Testing action in branch (#288)
  * New Parameters:
    * `ActionScript` (#311)
    * `GitHubToken` (#317)
    * `NoCommit` (#318)
    * `NoPush` (#319)
    * `TargetBranch` (#316)
* Workflow improvements
  * Fixing ugit workflow PublishTestResults (#287)
  * GitPub cleanup (#310)
* New Examples:
  * ChangesByCommitType example (#302, #301)
  * ChangesByDayOfWeek example (#295)
  * ChangesByIssueNumber example (#294)
  * ChangesByUserName example (#293)
  * ChangesByExtension example (#292)
  * ReleaseNotes Example (#307)  
  * TableOfCurrentBranch example (#291)  

---

Additional Changes in [Changelog](https://github.com/StartAutomating/ugit/blob/main/CHANGELOG.md)
