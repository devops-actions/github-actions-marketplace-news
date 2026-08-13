---
title: Otzaria Plugin Validator
date: 2026-08-13 22:25:35 +00:00
tags:
  - Otzaria
  - GitHub Actions
draft: false
repo: https://github.com/Otzaria/otzaria-plugin-validator
marketplace: https://github.com/marketplace/actions/otzaria-plugin-validator
version: v1.10.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the validation, build, and publication process of an Otzaria plugin. It checks for specific errors during package creation and compilation, builds the `.otzplugin` file, and publishes it to Otzaria's store automatically when pushing changes to the main branch. The action can also perform a full check on pull requests without requiring secrets but still validates the plugin.
---


Version updated for **https://github.com/Otzaria/otzaria-plugin-validator** to version **v1.10.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otzaria-plugin-validator) to find the latest changes.

## Action Summary

This GitHub Action automates the validation, build, and publication process of an Otzaria plugin. It checks for specific errors during package creation and compilation, builds the `.otzplugin` file, and publishes it to Otzaria's store automatically when pushing changes to the main branch. The action can also perform a full check on pull requests without requiring secrets but still validates the plugin.

## What's Changed

## מה חדש

**חריג פס הכותרת ב-font-size.** ולידציית העיצוב פסלה כל `font-size` בערך px קבוע, בעוד ש-DESIGN_GUIDE מחייב דווקא גדלים קשיחים בפס הכותרת — כדי שהפס לא יתנפח עם גופן הקריאה שהמשתמש בחר. תוסף שמימש את המפרט כלשונו נחסם מפרסום. כעת החריג נאכף לפי שם הסלקטור (`topbar` / `top-bar`, כבדוגמת המפרט), וכל שאר הכללים ממשיכים להיפסל. הודעת ההפרה מפנה לחריג.

**סנכרון מול ה-SDK:** `calendar.getCities` (הרשאת `calendar.read`, מגרסה 0.9.97) והאירוע `calendar.city_changed`.

**בדיקות:** 32 עוברות — כולל px מותר בפס, נפסל מחוצה לו, והחריג אינו זולג לכלל הבא.
