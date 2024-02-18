---
title: GlobalAppTesting
date: 2024-02-18 10:57:47 +00:00
tags:
  - GlobalAppTesting
  - GitHub Actions
draft: false
repo: GlobalAppTesting/gat-actions-request-test
marketplace: https://github.com/marketplace/actions/globalapptesting
version: v2.2
dependentsNumber: "3"
---


Version updated for **GlobalAppTesting/gat-actions-request-test** to version **v2.2**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/globalapptesting) to find the latest changes.

## Release notes

This one is for all the people that contacted us to for ways to try out the action without actually running real tests - grab this release and go experiment! :) 

We've been contacted lately about the ability to try our platform without committing to running real tests. In order to do this we've introduced a new input - `dry_run`. This input is by default turned off and you can easily change it by setting `dry_run: true` in your workflow definition.

Dry run will check:
- consistency of your inputs: their types, format and integrity
- access to your GitHub repository using the `access_token` you've supplied as one of the action inputs
- access to your GAT account using the `api_key` input you've supplied as the other action 

The responses you'll get from the `dry_run` endpoint are identical to what you'd receive from the real test request. This means you can actually develop your whole workflow safely and turn off dry run as the last step, finalising your workflow.

Take it for a spin and have fun with it 🎉

Happy testing!
