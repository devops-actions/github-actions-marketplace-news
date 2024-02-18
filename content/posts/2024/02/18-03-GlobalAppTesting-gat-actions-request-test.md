---
title: GlobalAppTesting
date: 2024-02-18 03:24:56 +00:00
tags:
  - GlobalAppTesting
  - GitHub Actions
draft: false
repo: GlobalAppTesting/gat-actions-request-test
marketplace: https://github.com/marketplace/actions/globalapptesting
version: v2.1
dependentsNumber: "3"
---


Version updated for **GlobalAppTesting/gat-actions-request-test** to version **v2.1**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/globalapptesting) to find the latest changes.

## Release notes

This release brings to the table two new inputs: `application_url` and `pr_status_context`. Both of these inputs are **optional**.

Let's start with `application_url`. Previously, we were asking you to put your application/build URL directly in the `description` field in `.gat.json`. While this method **will still work, it's now officially deprecated**.  `application_url` introduces a clear separation between two very important information: the URL itself and description which might be an introduction to the company for our testers. We hope that you will find this one useful for your integrations!

The second new input is called `pr_status_context`. As the name implies, it gives you an opportunity to override the default `GlobalAppTesting` GitHub commit status context. This is the context that is used whenever your Pull Request is marked(as `pending`, `success` or `failure`) with status of our testing. When to use it? Especially when working with **monorepos**. Consider this. You have a monorepo with React Native mobile application and a web application with React on your frontend. There might be some **shared components** between your web application and your mobile application. Whenever you introduce a change to one of these shared components, you should test both platforms - web AND mobile. With previous, default GitHub context, there was a race condition - status of the mobile test could override status of the web test(since **you can have only one status with given context**). Thanks to new `pr_status_context` you can launch two tests and give them names like `[iOS] test` and `[web] test` and you'll actually have a distinction on your PR which tests have failed.

Hope you find the new goodies useful :).

Happy testing!
