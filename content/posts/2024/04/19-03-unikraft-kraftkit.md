---
title: Build unikernel images with Unikraft
date: 2024-04-19 03:30:41 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.8.4
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.8.4**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.8.4 (2024-04-18T17:01:01Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* 82e9cc69a3588f7e6814f0a79a026e6c1d20be5a: feat!: Improve quotas display (#1568) (@craciunoiuc)
### 🚀 New Features
* 79ce693d69833356ac5c5ff334626d2d94505396: feat(bridge): Allow arbitrary network length (#1556) (@nderjung)
* 1edd84134633f7734a19f26be244736ea08c80e7: feat(compose): Accept args and improve CLI (#1548) (@nderjung)
* 297da25a827902f057fac67f754c20fee9453c7b: feat(compose): Support attach, external and ports fields (#1553) (@nderjung)
* 64b1dcfa2b9aedf2760ece5b120b610f4468a77a: feat(utils): Add better stop reason and code reporting (#1557) (@craciunoiuc)
* 5e51f02243d39edb03c19a230b3ba9e249e01c89: feat(utils): Add stop reason hints in list view (#1572) (@craciunoiuc)
* 4a540a5c9c7e54e1499b0f5808e4edc1bcbb576a: feat(workflows): Several pipeline fixes to ease releases (#1555) (@nderjung)
* 2e2a60333a57e53081e3300e74fef14c84585361: feat: Several adjustments to log messages (#1573) (@craciunoiuc)
### 🐛 Bug Fixes
* be42b0b12dfdc13b5d01d54e438f4763449a8ad4: fix(cloud): Correctly propagate `--restart` flag to deploy + create (#1560) (@craciunoiuc)
* 9801ea996d614aabfd9f8b8d320ff4740c7d1c6f: fix(cloud): Misc fixes affecting rollouts (#1554) (@craciunoiuc)
* 7065a458669ac2599e55ebe7a46edda620004599: fix(cloud): Test fixes and several bug fixes (#1569) (@nderjung)
* bf708b1bff4b5c0e4176b48ffac68cb5581c67f1: fix(cmdfactory): Correctly parse duration values (#1563) (@craciunoiuc)
* 6a9c42eb3131d68572d9d0de6a299f0e2a4dda4b: fix(compose): Fix incorrect name used in re-hydrated args slice (#1574) (@craciunoiuc)
* 7d73c7a04407dc6908a74dcf1fb2ba5be88ba3be: fix(processtree): Always show left text in no-render mode (#1562) (@craciunoiuc)
* b47cbf4d9f0db837a18912291f7b1e4e61b36209: fix(qemu): Show first line after receiving "Booting from ROM" (#1564) (@craciunoiuc)
* 4a79c321e48463264bb7323204b22fc65eff83e7: fix(tableprinter): Do not render spaces in attribute name (#1565) (@craciunoiuc)
* 247143a291cd9fe5378498f7ef1a19dfa04e1827: fix(up): Correctly associate new instances with existing service groups (#1559) (@craciunoiuc)
* 9d7e779ff81aa183f96398272280bfa0c1d601c2: fix(utils): Do not print autoscale limit as graph (#1571) (@craciunoiuc)
* fec5f756091192c98bfca9b4ef039a2f0e456207: fix(utils): Rename `services` to `exposed services` (#1570) (@craciunoiuc)
* 33f08751224fed998eb7853bc58715dcab6333a7: fix: Misc fixes handling correct image name and identifier (#1558) (@craciunoiuc)
* 6b34cc9857eff977e277829a81a91f7f43dafd73: fix: Small fixes resolving naming and nil-pointers (#1552) (@LucaSeri)
### 🐒 Miscellaneous
* 17dd85baaca9871fc2c2bc8064a6176da33be309: refactor(get): Use `list` as default output type (#1566) (@craciunoiuc)
* f6ca38590b24e7d533dd24e5a937a3978aef51c0: refactor(initialize): Use `init` as default subcommand name (#1567) (@craciunoiuc)


