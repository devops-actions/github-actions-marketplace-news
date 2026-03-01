---
title: Build Process Watcher
date: 2026-03-01 13:24:23 +00:00
tags:
  - cdsap
  - GitHub Actions
draft: false
repo: https://github.com/cdsap/build-process-watcher
marketplace: https://github.com/marketplace/actions/build-process-watcher
version: v0.6.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/cdsap/build-process-watcher** to version **v0.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-process-watcher) to find the latest changes.

## Action Summary

The **Build Process Watcher GitHub Action** monitors memory usage of Java/Kotlin build processes (e.g., Gradle Daemon, Kotlin Compile Daemon) during CI workflows. It automates the tracking of heap and RSS memory usage, generates visualizations like charts, and provides real-time dashboards for performance analysis. This action helps developers optimize build performance by identifying memory bottlenecks and analyzing Garbage Collection metrics.

## Release notes

## v0.6.0

### ✨ New Features

**Replay & Compare**
- **Replay a run** – Upload an exported JSON file to replay memory and GC charts offline.
- **Compare runs** – Upload two JSON files to compare two runs side-by-side with a shared timeline.

<p align="center">
  <img src="https://raw.githubusercontent.com/cdsap/build-process-watcher/main/frontend/public/reply.gif" alt="Replay Demo" width="600"><br><br>
  <img src="https://raw.githubusercontent.com/cdsap/build-process-watcher/main/frontend/public/compare.gif" alt="Compare Demo" width="600">
</p>

**Chart Filters**
- Total RSS, RSS, and Heap filter checkboxes on memory charts
- Checkboxes stay in sync with legend clicks
- Available on run page, Replay page, and Compare page (split and side-by-side views)

### 🔧 Changes

**GC Monitoring**
- GC monitoring is always enabled; the `collect_gc` input has been removed

**JSON Export**
- Fixed timestamp parsing for HH:MM:SS values (e.g. `00:01:30`)
- Fixed JSON generation in cleanup so reports are produced reliably

**JVM Flags**
- JVM flags are now written to the process info file and sent to the backend in both Local and Remote modes

**Documentation**
- Simplified Quick Start examples
- Updated README layout with centered performance GIF

### 🐛 Fixes

**`disable_summary_output` in local mode** ([#40](https://github.com/cdsap/build-process-watcher/issues/40))
- `disable_summary_output: 'true'` now works in local mode
- Previously it only affected remote mode; in local mode the GitHub Actions summary can be disabled when all information is available in build artifacts

### 🗑️ Removed

- `collect_gc` input (GC is always enabled)
- Staging deployment workflows
