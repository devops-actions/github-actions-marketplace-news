---
title: SWEny AI
date: 2026-03-13 05:47:22 +00:00
tags:
  - swenyai
  - GitHub Actions
draft: false
repo: https://github.com/swenyai/sweny
marketplace: https://github.com/marketplace/actions/sweny-ai
version: sweny-ai/studio2.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/swenyai/sweny** to version **@sweny-ai/studio@2.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sweny-ai) to find the latest changes.

## Action Summary

SWEny is a platform that enables the creation of AI-driven engineering workflows to automate issue triage, root cause analysis, and resolution across various systems. It streamlines tasks like monitoring observability logs, generating actionable tickets, implementing fixes, and notifying stakeholders through multiple channels. With its pluggable architecture, SWEny supports customizable workflows and integrations with over 30 providers, reducing manual effort and accelerating response times in software engineering processes.

## Release notes

### Minor Changes

-   79fd3dd: Redesign StateNode as compact 40px cards so the full recipe DAG is visible at once — state ID, provider icon, and phase badge only; description and transitions shown in the click-to-open side panel. Reduce ELK node dimensions (200×40) and layer spacing for a dense readable layout. Lower fitView minZoom to 0.4. Make edges more prominent with semantic coloring and better opacity.
-   fbcae71: Major UX overhaul for the RecipeViewer and node components:
    -   **StateNode**: Fully redesigned cards — provider category icons (◉ ◈ ⎇ ⬡ ◎), semantic exec-status borders/glows, upgraded typography, more generous sizing (252–278px wide, 10px radius)
    -   **TransitionEdge**: Semantic edge coloring by outcome type — indigo for action outcomes, cyan for `local`/`dispatched`, amber for `duplicate`, red dashed for `failed`, muted slate for default `→`
    -   **AutoFitView**: Added `minZoom: 0.65` to prevent unreadable zoom levels on tall vertical DAGs
    -   **ELK layout**: Increased node dimensions (264×130) and spacing for better readability
    -   **Canvas**: Deeper dark background, refined dot grid, polished MiniMap and Controls styling
    -   **Pulse animation**: CSS keyframe injected for `current` execution state

### Patch Changes

-   353b5e0: Fix invisible DAG edges: increase stroke width from 1.5-2px to 3px, brighten default edge color from #3b5070 to #4d7aaa, and raise opacity so connections are visible at low zoom levels.
-   8cef981: Fix infinite render loop in RecipeViewer when no executionState is passed. The `executionState = {}` default was creating a new object reference on every render, causing the executionState effect to fire continuously and trigger maximum update depth exceeded.
-   a714adc: Convert StateNode and TransitionEdge from Tailwind CSS classes to inline styles so the RecipeViewer renders correctly in non-Tailwind environments (e.g. the docs site). Adds a dark-theme color palette — phase-colored borders, exec-status rings, dark canvas background, and styled MiniMap.
-   Updated dependencies [0a59479]
-   Updated dependencies [556a53d]
-   Updated dependencies [4465923]
-   Updated dependencies [130138e]
-   Updated dependencies [42f6e95]
-   Updated dependencies [010b6d7]
-   Updated dependencies [4b4b29f]
    -   @sweny-ai/engine@2.0.0

