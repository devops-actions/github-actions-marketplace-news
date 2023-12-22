---
title: unimport
date: 2023-12-22 19:19:48 +00:00
tags:
  - hakancelikdev
  - GitHub Actions
draft: false
repo: hakancelikdev/unimport
marketplace: https://github.com/marketplace/actions/unimport
version: 1.2.0
dependentsNumber: "?"
---


Version updated for **hakancelikdev/unimport** to version **1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unimport) to find the latest changes.

## Release notes

## [1.2.0] - 2023-12-22

### Changed

- Python 3.6 support dropped
- Python 3.7 support dropped

### Fixed

- Improved Type Comment Analysis

  > To ensure accurate type comment analysis, a crucial fix was implemented in the code.
  > The update involves refining the process by adding a check within ast.AnnAssign and
  > ast.arg types. Specifically, the code now includes a verification that
  > visit_Constant occurs under an annotation, addressing unnecessary name discovery
  > issues for better accuracy in type_comment assessment.

  ```python
  import sys
  from typing import (
      List,
  )


  test_list: List[str] = ["spam", "eggs"]  # it thought spam and eggs were a ast.Name object.
  ```
