---
title: Otzaria Plugin Validator
date: 2026-06-23 15:02:53 +00:00
tags:
  - Otzaria
  - GitHub Actions
draft: false
repo: https://github.com/Otzaria/otzaria-plugin-validator
marketplace: https://github.com/marketplace/actions/otzaria-plugin-validator
version: v1.4.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Otzaria/otzaria-plugin-validator** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otzaria-plugin-validator) to find the latest changes.

## What's Changed

קלט חדש `build`: כש-`build: true` ה-Action בונה תמיד את קובץ ה-`.otzplugin` וחושף את הפלטים `plugin-file`/`sha256`, גם בלי פרסום לחנות. לא דורש סודות ורץ גם ב-`pull_request`, כך שאפשר להעלות את הקובץ כ-artifact (`actions/upload-artifact`, GitHub Release וכו') בצעד הבא.

- ברירת מחדל `false` — תואם לאחור לחלוטין, וורקפלואים קיימים לא מושפעים.
- בנייה מאוחדת ב-cache: בנייה+פרסום אורזים את הקובץ פעם אחת בלבד.
- דוגמה חדשה: `examples/build-artifact.yml`.
