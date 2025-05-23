---
title: astral-sh/setup-uv
date: 2025-05-23 08:58:37 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v6.1.0
dependentsNumber: "20,360"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v6.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **20,360** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Release notes

## Changes

This release adds the input `server-url` which defaults to `https://github.com`. You can set this to a custom url to control where this action downloads the uv release from. This is useful for users of gitea and comparable solutions.

@sebadevo pointed out that we don't invalidate the cache when the `prune-cache` input is changed. This leads to unnessecarily big caches. The input is now used to compute the cache key, properly invalidating the cache when it is changed.

> [!NOTE]  
> For most users this release will invalidate the cache once. 
> You will see the known warning [no-github-actions-cache-found-for-key](https://github.com/astral-sh/setup-uv?tab=readme-ov-file#why-do-i-see-warnings-like-no-github-actions-cache-found-for-key)
> This is expected and will only appear once.

## 🐛 Bug fixes

- Purge cache in cache key @eifinger (#423)

## 🚀 Enhancements

- feat: support custom github url @Zoupers (#414)

## 🧰 Maintenance

- chore: update known versions for 0.7.7 @[github-actions[bot]](https://github.com/apps/github-actions) (#422)
- chore: update known versions for 0.7.6 @[github-actions[bot]](https://github.com/apps/github-actions) (#415)
- chore: update known versions for 0.7.5 @[github-actions[bot]](https://github.com/apps/github-actions) (#412)
- chore: update known versions for 0.7.4 @[github-actions[bot]](https://github.com/apps/github-actions) (#410)
- chore: update known versions for 0.7.3 @[github-actions[bot]](https://github.com/apps/github-actions) (#405)
- Fix path to known-checksums.ts @eifinger (#404)
- Fix update-known-versions workflow argument @eifinger (#401)
- Fix update-known-versions workflow @eifinger (#400)
- Create version-manifest.json on uv release @eifinger (#399)
- Run infrastructure workflows on arm runners @eifinger (#396)
- chore: update known checksums for 0.7.2 @[github-actions[bot]](https://github.com/apps/github-actions) (#395)
- chore: update known checksums for 0.7.0 @[github-actions[bot]](https://github.com/apps/github-actions) (#390)

## 📚 Documentation

- Add section to README explaining if packages are installed by setup-uv @pirate (#398)

## ⬆️ Dependency updates

- Bump dependencies @eifinger (#424)
- Bump typescript from 5.8.2 to 5.8.3 @[dependabot[bot]](https://github.com/apps/dependabot) (#393)

