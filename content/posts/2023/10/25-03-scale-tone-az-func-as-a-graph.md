---
title: az-func-as-a-graph
date: 2023-10-25 03:09:55 +00:00
tags:
  - scale-tone
  - GitHub Actions
draft: false
repo: scale-tone/az-func-as-a-graph
marketplace: https://github.com/marketplace/actions/az-func-as-a-graph
version: github-action-v1.3
dependentsNumber: "2"
---


Version updated for **scale-tone/az-func-as-a-graph** to version **github-action-v1.3**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/az-func-as-a-graph) to find the latest changes.

## Release notes

- Now you can run az-func-as-a-graph as part of your GitHub Actions workflow, to generate interactive code diagrams of your Azure Functions projects. It is this simple:

```
    steps:

    - uses: scale-tone/az-func-as-a-graph@github-action-v1.3
      with:
        projectFolder: ${{ github.workspace }}/path-to-my-function-project
        outputFile: my-function-graph.htm
        templateFile: my-custom-html-template.htm
        doNotRenderFunctions: false
        doNotRenderProxies: false
```

