---
title: API testing with Kubernetes
date: 2023-10-31 03:09:53 +00:00
tags:
  - LinuxSuRen
  - GitHub Actions
draft: false
repo: LinuxSuRen/api-testing
marketplace: https://github.com/marketplace/actions/api-testing-with-kubernetes
version: v0.0.14
dependentsNumber: "2"
---


Version updated for **LinuxSuRen/api-testing** to version **v0.0.14**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/api-testing-with-kubernetes) to find the latest changes.

## Release notes

## What’s Changed

[中文 ChangeLog](https://linuxsuren.github.io/api-testing/release-note-v0.0.14)

## 🚀 Features

* feat: add trpc protocol support (#254) @LinuxSuRen
* feat: add SkyWalking support in the Helm chart (#248) @LinuxSuRen
* [ADDED] button to toggle dark mode (#247) @kuv2707
* feat: support starting store extentsion automatically (#246) @LinuxSuRen
* feat: support releasing api-testing as a Helm chart (#235) @LinuxSuRen
* feat: support receving parameters from API (#226) @LinuxSuRen
* feat: support to generate curl command (#222) @LinuxSuRen
* feat: support show the human-readable http status code on ui (#221) @LinuxSuRen
* feat: get gRPC descriptor from dp set (#216) @Ink-33
* feat: support integrating with skywalking (#219) @LinuxSuRen
* feat: support recording the test results into prometheus (#215) @LinuxSuRen
* feat: add an expr function httpReady (#214) @LinuxSuRen
* add some error handling on the UI (#213) @LinuxSuRen
* feat: get gRPC descriptor via server reflection (#210) @Ink-33
* feat: support conditional verify (#209) @LinuxSuRen
* fix: the qps feature cannot work well (#201) @LinuxSuRen
* feat: auto locate to the last testcase (#197) @LinuxSuRen
* feat: support to start plugin in the server sub-cmd (#195) @LinuxSuRen
* feat: support cache the test case response (#194) @LinuxSuRen
* feat: support manage the secrets via UI (#193) @LinuxSuRen
* feat: add i18n support for the web ui (#187) @LinuxSuRen
* ui: support auto saving the test case when sending (#186) @LinuxSuRen
* feat: let the git ext supports listening on unix socket (#183) @LinuxSuRen
* feat: support to download atest self (#180) @LinuxSuRen
* feat: support importing from Postman (#179) @LinuxSuRen

## 🐛 Bug Fixes

* fix: cannot get correct value when the header consist mutiple values (#234) @LinuxSuRen
* fix: verify grpc expect body (#223) @Ink-33
* fix: should not parse the response body if it is not JSON format (#218) @LinuxSuRen
* fix: cannot save store records (#203) @LinuxSuRen
* fix: missing return in invokeRequest for stream rpc (#206) @Ink-33
* fix: the qps feature cannot work well (#201) @LinuxSuRen

## 📝 Documentation updates

* docs: fix readme file link error (#256) @yuluo-yx
* [FIXED] grammatical errors in README.md (#239) @kuv2707

## 👻 Maintenance

* chore(deps): bump github.com/prometheus/client_golang from 1.4.0 to 1.11.1 in /extensions/store-etcd (#191) @dependabot
* Using apache/skywalking-eye to do the license checking work (#207) @hellojukay
* ui: add a welcome page when no any test suites (#184) @LinuxSuRen

## Thanks to
@Ink-33, @LinuxSuRen, @dependabot, @dependabot[bot], @hellojukay, @kuv2707 and @yuluo-yx

