---
title: Setup Java JDK
date: 2024-09-09 16:46:45 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/setup-java
marketplace: https://github.com/marketplace/actions/setup-java-jdk
version: v4.3.0
dependentsNumber: "800,565"
---


Version updated for **actions/setup-java** to version **v4.3.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **800,565** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-java-jdk) to find the latest changes.

## Release notes

What's Changed


* Add support for SapMachine JDK/JRE by @Shegox in #614 
```yaml
steps:
 - name: Checkout
   uses: actions/checkout@v4
 - name: Setup-java
   uses: actions/setup-java@v4
   with:
     distribution: ‘sapmachine’
     java-version: ’21’
```
Bug fixes :

* 	Fix typos on Corretto by @johnshajiang in #666
* 	IBM Semeru Enhancement on arm64 by @mahabaleshwars in #677 
* 	Resolve Basic Validation Check Failures by @aparnajyothi-y  in #682 

New Contributors :

* 	@johnshajiang made their first contribution in #666 
* 	@Shegox made their first contribution in #614

**Full Changelog**: https://github.com/actions/setup-java/compare/v4...v4.3.0
