---
title: World Cup 2026 README Widget
date: 2026-05-28 22:58:02 +00:00
tags:
  - moose25
  - GitHub Actions
draft: false
repo: https://github.com/moose25/world-cup-2026-readme-widget
marketplace: https://github.com/marketplace/actions/world-cup-2026-readme-widget
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/moose25/world-cup-2026-readme-widget** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/world-cup-2026-readme-widget) to find the latest changes.

## Action Summary

The World Cup 2026 README Widget is a GitHub Action that generates self-updating FIFA World Cup 2026 panels, such as countdowns, live match updates, group standings, and a Round-of-32 qualification tracker tailored for the new 48-team format. It automates the display of tournament information with timezone-specific data, real country flags, and customizable themes, eliminating the need for API keys, accounts, or complex code. This action is ideal for embedding dynamic, real-time World Cup data into GitHub READMEs, websites, or wikis using simple Markdown.

## What's Changed

**Embeddable World Cup 2026 panels for any README — no API key, just an image.**

10 self-updating SVG panels built on free, public-domain data: countdown,
live/next match, today's fixtures, track-a-team, group standings, all-groups,
Round-of-32 tracker, knockout bracket, top scorers, and tournament stats.
Real flags, light/dark themes, kickoff times in any timezone.

### Two ways to use it

**Embed the hosted endpoint** (one line):
```markdown
![World Cup](https://wc26-widget.vercel.app/today?tz=America/New_York)
```

**Or run the Action to commit the panels into your own repo on a schedule:**
```markdown
- uses: moose25/world-cup-2026-readme-widget@v1.0.0
  with:
    panels: "countdown,today,r32,bracket"
    tz: "America/New_York"
```

▶ Live demo + embed builder: https://wc26-widget.vercel.app
