---
title: Medium Recent Articles
date: 2026-08-15 21:30:11 +00:00
tags:
  - shahidsha1612
  - GitHub Actions
draft: false
repo: https://github.com/shahidsha1612/medium-recent-articles
marketplace: https://github.com/marketplace/actions/medium-recent-articles
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the display of the latest Medium blog posts on a user's GitHub profile page and keeps them updated automatically. It simplifies adding recent articles to one's GitHub README without requiring any coding knowledge or manual updates. The action uses Medium's API to fetch article data and dynamically generates cards displaying thumbnails, titles, dates, and previews.
---


Version updated for **https://github.com/shahidsha1612/medium-recent-articles** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/medium-recent-articles) to find the latest changes.

## Action Summary

This GitHub Action automates the display of the latest Medium blog posts on a user's GitHub profile page and keeps them updated automatically. It simplifies adding recent articles to one's GitHub README without requiring any coding knowledge or manual updates. The action uses Medium's API to fetch article data and dynamically generates cards displaying thumbnails, titles, dates, and previews.

## What's Changed

- Add branding metadata required for GitHub Marketplace (1c34764)
- Crop thumbnails server-side via Medium's own CDN instead of CSS (a94b116)
- Rewrite README without em dashes, add link_titles to beginner guide (7d4cdd9)
- Add link_titles option to toggle title hyperlinks (b152855)
- Preserve thumbnail aspect ratio instead of forcing a fixed height (4077c11)
- Force uniform thumbnail size and document theme/animation behavior (52ba7da)
- Render each article as its own separate card table with spacing (96b465b)
- Render articles as thumbnail cards instead of a plain link list (29ad15d)
- Target node24 runtime to remove Actions deprecation warning (189205c)
- Add simple step-by-step guide to README (3d57e29)
