---
title: RepoClip Generate Video
date: 2026-04-22 06:23:41 +00:00
tags:
  - repoclip
  - GitHub Actions
draft: false
repo: https://github.com/repoclip/generate-video
marketplace: https://github.com/marketplace/actions/repoclip-generate-video
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/repoclip/generate-video** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repoclip-generate-video) to find the latest changes.

## Action Summary

The **RepoClip Generate Video Action** automates the creation of AI-powered promotional videos for GitHub repositories, integrating narration, visuals, and music. It streamlines the process of showcasing repository updates, features, or releases, solving the challenge of manually producing engaging video content. Key capabilities include customizable video styles, aspect ratios, and direct integration into GitHub workflows for seamless sharing.

## What's Changed

## Initial Release

Generate promotional videos for your GitHub repositories directly from CI/CD with [RepoClip](https://repoclip.io).

### Features

- **AI-powered video generation** from any GitHub repository
- - Multiple video modes: `image`, `video_short`, `video_long`
- - Customizable prompts, aspect ratios, and visual styles
- - Optional background music
- - Automatic polling with configurable timeout
- - Outputs video URL, thumbnail, and share page URL
### Quick Start

```yaml
- uses: TwistTheoryGames/generate-video@v1
-   with:
-     api-key: ${{ secrets.REPOCLIP_API_KEY }}
- ```
Get your API key at [repoclip.io/dashboard/settings](https://repoclip.io/dashboard/settings).
