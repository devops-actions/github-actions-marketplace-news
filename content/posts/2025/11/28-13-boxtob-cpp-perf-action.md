---
title: C++ Performance Profiler
date: 2025-11-28 13:05:59 +00:00
tags:
  - boxtob
  - GitHub Actions
draft: false
repo: https://github.com/boxtob/cpp-perf-action
marketplace: https://github.com/marketplace/actions/c-performance-profiler
version: v1.2.1
dependentsNumber: "?"
---


Version updated for **https://github.com/boxtob/cpp-perf-action** to version **v1.2.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/c-performance-profiler) to find the latest changes.

## Release notes

**C++ Performance Profiler Action – Release Notes v1.2.1**

---

- Fix a bug with missing ENV variable

---

### **Example Usage**

#### x86_64 (standard runners)

```yaml
- name: Run C++ Profiler (x86_64)
  uses: boxtob/cpp-perf-action@v1.2.1
  with:
    binaries: build/test
    apt-packages: libgl1-mesa-dev libglfw3-dev
    ld-library-path: /workspace/libs
    valgrind-memcheck: true
    valgrind-callgrind: true
    valgrind-cachegrind: true
    gperftools: true
    fail-on-leak: true
    run-args: --verbose

- name: Upload Artifacts
  if: always()
  uses: actions/upload-artifact@v4
  with:
    name: profiling-results
    path: ${{ steps.profiler.outputs.artifacts }}
```

#### ARM64 (native – Apple Silicon, Graviton, Raspberry Pi)

```yaml
jobs:
  profile-arm64:
    runs-on: ubuntu-latest-arm64
    steps:
      - name: Run C++ Profiler (ARM64)
        uses: boxtob/cpp-perf-action@v1.2.1
        with:
          binaries: test-arm64
          run-args: --verbose
          valgrind-memcheck: true
          gperftools: true

      - name: Upload Artifacts
        if: always()
        uses: actions/upload-artifact@v4
        with:
          name: profiling-results
          path: ${{ steps.profiler.outputs.artifacts }}
```

---

#### Feedback Welcome!
Try it in a test branch. Report issues here:  
[https://github.com/boxtob/cpp-perf-action/issues](https://github.com/boxtob/cpp-perf-action/issues)

**Contributors:** @boxtob  

