---
title: PowerShell Module Cache
date: 2023-11-06 19:03:03 +00:00
tags:
  - potatoqualitee
  - GitHub Actions
draft: false
repo: potatoqualitee/psmodulecache
marketplace: https://github.com/marketplace/actions/powershell-module-cache
version: v6.0
dependentsNumber: "648"
---


Version updated for **potatoqualitee/psmodulecache** to version **v6.0**.
- This action is used across all versions by **648** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/powershell-module-cache) to find the latest changes.

## Release notes

## What's Changed
* Add support for the modules dependencies. Module paths to be saved in cache are unique.
* Refactoring and bug fixes around managing multiple repositories.
* Add module name duplication checking. Previously you could call Save-Module several times for the same module.
* Update actions/cache@v3.0.11 to actions/cache@v3.3.2
* Update actions/checkout@v2.5.0 to actions/checkout@v4.1.0
* Remove unused workflows.

*-*
* Fix (#54). Some modules will be impossible to load under Ubuntu, in this case a warning is displayed in the workflow logs.
* Fix (#51). If there is a module with the same name in several PSRepositories, we must now prefix the module name with the name of the desired repository: PSGallery\string.
* Fix (#50). Module dependencies were not saved into a cache. Now each dependency is saved.
* Fix (#47). Documentation: specifies the use of '::' (YAML syntax)
* Fix (#45,#48). Some module packages are case-sensitive, and break the implicit (and informal) PascalCase naming rule.
                 On Linux, the path names passed as a parameter to the 'Cache' action must be constructed with the nuget package name and not with the name coming from the 'modules-to-cache' parameter of the 'PSModuleCache' action.
* Fix the analyze of a module name.
* Fix module name handling for case-sensitive filesystems. See the 'PsModuleCache\Test-ModuleNaming' function.
* Fix module duplication when we call "Find-Module -name 'AZ' -IncludeDependencies". Example: the dependent module 'Az.Accounts v2.13.1' is duplicated 25 times.
* Fix CleanWorkFlowsHistory.yml. Deleting workflow execution history caused an exception when calling ConvertFrom-Json. If the workflow execution history contains a large number of entries (+500) and the API returns a string of several megabytes that is impossible to convert.


## Breaking changes

* Now we check the existence of at least one repository.

* The existence of a module with the same name in several PSRepositories will cause a blocking error.
  We must now prefix a name of the duplicated module with the name of the desired repository.
  Previously we sorted the elements by version number then we selected the first in the list.

## What's Changed
* Adding changes for the versions 5.1 and 5.2. by @LaurentDardenne in https://github.com/potatoqualitee/psmodulecache/pull/41
* Allow action to run inside a container job by @flcdrg in https://github.com/potatoqualitee/psmodulecache/pull/44
* Fix readme by @LaurentDardenne in https://github.com/potatoqualitee/psmodulecache/pull/42
* Fix module name case sensitive by @LaurentDardenne in https://github.com/potatoqualitee/psmodulecache/pull/46
* Feature module dependencies by @LaurentDardenne in https://github.com/potatoqualitee/psmodulecache/pull/56

## New Contributors
* @flcdrg made their first contribution in https://github.com/potatoqualitee/psmodulecache/pull/44

**Full Changelog**: https://github.com/potatoqualitee/psmodulecache/compare/v5.2...v6.0
