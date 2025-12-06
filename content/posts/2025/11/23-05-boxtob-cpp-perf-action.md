---
title: C++ Performance Profiler
date: 2025-11-23 05:25:48 +00:00
tags:
  - boxtob
  - GitHub Actions
draft: false
repo: https://github.com/boxtob/cpp-perf-action
marketplace: https://github.com/marketplace/actions/c-performance-profiler
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/boxtob/cpp-perf-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/c-performance-profiler) to find the latest changes.

## Release notes

**C++ Performance Profiler Action – Release Notes v1.1.0**

---

- Add cachegrind, the high-precision tracing profiler

---

### **Example Usage**

```yaml
- name: Run Profiler
  uses: boxtob/cpp-perf-action@v1.1.0
  with:
    binaries: build/test
    apt-packages: libgl1-mesa-dev libglfw3-dev
    ld-library-path: /workspace/libs
    valgrind-memcheck: true
    valgrind-cachegrind: true
    gperftools: true
    fail-on-leak: true
    run-args: --verbose
```

---

#### Feedback Welcome!
Try it in a test branch. Report issues here:  
[https://github.com/boxtob/cpp-perf-action/issues](https://github.com/boxtob/cpp-perf-action/issues)

**Contributors:** @boxtob  

