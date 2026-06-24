---
title: Otzaria Plugin Validator
date: 2026-06-24 07:11:35 +00:00
tags:
  - Otzaria
  - GitHub Actions
draft: false
repo: https://github.com/Otzaria/otzaria-plugin-validator
marketplace: https://github.com/marketplace/actions/otzaria-plugin-validator
version: v1.6.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Otzaria/otzaria-plugin-validator** to version **v1.6.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otzaria-plugin-validator) to find the latest changes.

## What's Changed

תיקון באג: אזהרת "X קבצים ייארזו אך לא נראים מופנים" (בדיקת reachability) התעלמה מ‑`.otzignore` וסרקה את כל עץ הקבצים. כתוצאה מכך היא דיווחה על קבצים שה‑`.otzignore` דווקא מחריג מהאריזה (למשל `src/`, `tests/`, `package.json`) — אזהרה שגויה על קבצים שכלל לא ייארזו.\n\nכעת אותו matcher של `.otzignore` מוחל גם בשלב הבדיקה, כך שהאזהרה מדווחת רק על קבצים שבאמת ייכללו בחבילה. אין שינוי בקלטים/פלטים של ה‑Action.
