---
title: Otzaria Plugin Validator
date: 2026-06-19 15:08:11 +00:00
tags:
  - Otzaria
  - GitHub Actions
draft: false
repo: https://github.com/Otzaria/otzaria-plugin-validator
marketplace: https://github.com/marketplace/actions/otzaria-plugin-validator
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Otzaria/otzaria-plugin-validator** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otzaria-plugin-validator) to find the latest changes.

## What's Changed

## חדש
- **`sync-metadata`** (ברירת מחדל `true`): עדכון של **מנהל** מסנכרן כעת את כל שדות התוסף מ-`manifest.json` (לא רק הגרסה). יוצר מקבל זאת מהשרת ממילא. התיאור הארוך והתגיות בחנות נשמרים.
- **`force`**: מאפשר למנהל לפרסם מחדש אותה גרסה.
- **תגובת השרת המלאה נכתבת ללוג הריצה** בכל פרסום — רואים בדיוק מה החנות החזירה (כולל המתנה לאישור).
- **אריזה רזה**: דילוג אוטומטי על README/LICENSE/*.md/.github/dotfiles וכל תיקייה מוסתרת.
- **דוח הגעוּת (reachability)**: מסמן כ-notice קבצים שלא נראים מופנים מ-manifest/HTML/CSS/JS — בלי להשמיט (הפניות דינמיות אינן מזוהות).

עובד זהה למנהלים וליוצרים; השרת מתאים live מול pending-approval, וה-Action מדווח `pending-approval`.
