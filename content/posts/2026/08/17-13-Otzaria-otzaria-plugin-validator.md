---
title: Otzaria Plugin Validator
date: 2026-08-17 13:51:17 +00:00
tags:
  - Otzaria
  - GitHub Actions
draft: false
repo: https://github.com/Otzaria/otzaria-plugin-validator
marketplace: https://github.com/marketplace/actions/otzaria-plugin-validator
version: v1.13.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the process of validating, building, and publishing an Otzaria plugin to the Otzaria store. It checks the plugin's requirements and builds it before pushing a new version to the main branch, which is then published automatically to the store when secrets are set.
---


Version updated for **https://github.com/Otzaria/otzaria-plugin-validator** to version **v1.13.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otzaria-plugin-validator) to find the latest changes.

## Action Summary

This GitHub Action automates the process of validating, building, and publishing an Otzaria plugin to the Otzaria store. It checks the plugin's requirements and builds it before pushing a new version to the main branch, which is then published automatically to the store when secrets are set.

## What's Changed

## מה חדש

- **ולידציית `when`** — בדיקה מלאה של תנאי הגדרות על תרומות דקלרטיביות (`toolbarItems`, `contextMenuItems`, `searchDialogItems`, `activationEvents`): סכימת `setting`/`storage`/`all`/`any`/`not`, מגבלות עומק (5), עלים (20) ואורך מפתח (128), דחיית מפתחות לא מוכרים באיברי `activationEvents`, ואכיפת `minAppVersion >= 0.9.97` — רק כשקיים `when` בפועל; תוספים קיימים אינם מושפעים.
- רשימת מפתחות ההגדרות המורשים לקריאה נגזרת חיה מ-API_REFERENCE.md, עם רצפה מובנית לכשל רשת ובדיקת spec-drift.
- הושלמו 5 הרשאות שחסרו ברשימת ה-fallback — מונע חסימת-שווא של תוספי `contributes.startup` במצב אופליין.
