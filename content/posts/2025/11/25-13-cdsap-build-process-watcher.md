---
title: Build Process Watcher
date: 2025-11-25 13:04:59 +00:00
tags:
  - cdsap
  - GitHub Actions
draft: false
repo: https://github.com/cdsap/build-process-watcher
marketplace: https://github.com/marketplace/actions/build-process-watcher
version: v0.4.0
dependentsNumber: "?"
---


Version updated for **https://github.com/cdsap/build-process-watcher** to version **v0.4.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-process-watcher) to find the latest changes.

## Release notes

## New in This Release: GC Metrics Collection
Track garbage collection performance alongside memory usage! Enable`collect_gc: 'true'` to monitor GC time in seconds and identify GC-related performance bottlenecks in your builds

<img width="1132" height="607" alt="Screenshot 2025-11-24 at 8 01 45 PM" src="https://github.com/user-attachments/assets/e21b7830-8346-415a-a93f-c7b378382f50" />

Example:
```
- name: Process Watcher 
   uses: cdsap/build-process-watcher@v0.4.0
   with:
        remote_monitoring: true
        collect_gc: true     
```


## What's Changed
* Possibility to indicate different branch for the staging deployment by @cdsap in https://github.com/cdsap/build-process-watcher/pull/13
* collecting GC parameter by @cdsap in https://github.com/cdsap/build-process-watcher/pull/14


**Full Changelog**: https://github.com/cdsap/build-process-watcher/compare/0.3...v0.4.0
