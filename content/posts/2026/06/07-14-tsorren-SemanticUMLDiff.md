---
title: Semantic UML Diff
date: 2026-06-07 14:47:43 +00:00
tags:
  - tsorren
  - GitHub Actions
draft: false
repo: https://github.com/tsorren/SemanticUMLDiff
marketplace: https://github.com/marketplace/actions/semantic-uml-diff
version: v1.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/tsorren/SemanticUMLDiff** to version **v1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semantic-uml-diff) to find the latest changes.

## What's Changed

I am thrilled to announce the **`v1.1`** release of **Semantic UML Diff**. This version focuses on refining visual precision, eliminating false-positive modifications, introducing architectural context indicators, and restructuring the codebase under SOLID design principles for long-term maintainability.

### 🚀 Key Improvements

*   **Strict False-Positive Suppression**: Optimized the semantic diff engine in [compute.py](file:///c:/Users/Pc/Documents/DDS/SemanticUMLDiff/src/diff/compute.py). When using the `types_only` parameter style, parameter name changes are now treated as null changes. This prevents classes with no visible method edits from being highlighted in yellow (`<<modified>>`), cleaning up empty-yellow visual noise.
*   **New `<<impacted>>` Context Stereotype**: Nodes adjacent to changed relationships (without internal code modifications) are now classified as **`<<impacted>>`** by [reducer.py](file:///c:/Users/Pc/Documents/DDS/SemanticUMLDiff/src/graph/reducer.py). These classes render with a gray/transparent background, gray font, and dashed borders, clearly distinguishing structural context from direct class updates.
*   **Modular SOLID/SRP Refactoring**: Decomposed the orchestration functions in [compute.py](file:///c:/Users/Pc/Documents/DDS/SemanticUMLDiff/src/diff/compute.py), [reducer.py](file:///c:/Users/Pc/Documents/DDS/SemanticUMLDiff/src/graph/reducer.py), and [puml_renderer.py](file:///c:/Users/Pc/Documents/DDS/SemanticUMLDiff/src/render/puml_renderer.py) into dedicated single-responsibility helper functions, easing isolation testing and future expansions.
*   **Regression Guardrails**: Added detailed visual and styling assertions inside the integration test suite in [test_donaciones_integration.py](file:///c:/Users/Pc/Documents/DDS/SemanticUMLDiff/tests/integration/test_donaciones_integration.py) to prevent styling and package regressions.

### 🛠️ Quick Start

Integrate Semantic UML Diff `v1.1.0` into your workflow:

```yaml
- name: Semantic UML Diff
  uses: tsorren/SemanticUMLDiff@v1.1.0
  with:
    base_uml_dir: ./base_uml_dir
    pr_uml_dir: ./pr_uml_dir
    github_token: ${{ secrets.GITHUB_TOKEN }}
  env:
    PUBLISH_GITHUB: 'true'
    PUBLISH_DISCORD: 'true'
    DISCORD_WEBHOOK_URL: ${{ secrets.DISCORD_WEBHOOK_URL }}
```
