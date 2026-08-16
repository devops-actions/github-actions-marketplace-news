---
title: Otzaria Plugin Validator
date: 2026-08-16 06:01:00 +00:00
tags:
  - Otzaria
  - GitHub Actions
draft: false
repo: https://github.com/Otzaria/otzaria-plugin-validator
marketplace: https://github.com/marketplace/actions/otzaria-plugin-validator
version: v1.11.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the validation and publication of Otzaria plugins by performing the following main tasks:
  - Validates plugin compatibility with Otzaria, identifying issues that need to be addressed.
  - Builds a `.otzplugin` file from the plugin's source code, excluding certain files as specified in an `.otzignore` file (optional).
  - Automatically publishes new versions of the plugin to the Otzaria store once set up with API credentials.
  
  The action simplifies the process of releasing plugins by automatically pushing changes to `main`, ensuring that only valid and compatible versions are published.
---


Version updated for **https://github.com/Otzaria/otzaria-plugin-validator** to version **v1.11.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otzaria-plugin-validator) to find the latest changes.

## Action Summary

This GitHub Action automates the validation and publication of Otzaria plugins by performing the following main tasks:
- Validates plugin compatibility with Otzaria, identifying issues that need to be addressed.
- Builds a `.otzplugin` file from the plugin's source code, excluding certain files as specified in an `.otzignore` file (optional).
- Automatically publishes new versions of the plugin to the Otzaria store once set up with API credentials.

The action simplifies the process of releasing plugins by automatically pushing changes to `main`, ensuring that only valid and compatible versions are published.

## What's Changed

## מה חדש

**הרצה מקומית בלי לשכפל את המאגר.** נוסף שדה `bin`, ומכאן שאפשר להריץ את הוולידטור ישירות מתיקיית התוסף:

```bash
npx --yes github:Otzaria/otzaria-plugin-validator#v1 . --publish false
```

`npm` פותר את התג `v1` מחדש בכל הרצה ושומר במטמון לפי ה-commit שנפתר ולא לפי שם הספק. לכן כל שחרור מגיע למפתחים מיד בהרצה המקומית הבאה, בלי שיתקינו או יעדכנו דבר — ואי אפשר להיתקע עם וולידטור ישן. נבדק על ענף נייד ועל תג נייד כאחד. נוסף גם `files`, כך שהחבילה הנמשכת מכילה את קוד הריצה בלבד (`action.yml` ו-`src`).

**git hook רשמי לאימות לפני קומיט** — תועד ב-README. ה-CI הוא גם שלב הפרסום, וה-hook מקדים את הגילוי מהדחיפה אל הקומיט.

**ההבחנה בין כשל אימות לכשל תשתית.** ה-hook נשען על `OUTPUT passed=true|false` שהוולידטור מדפיס גם בהרצה מקומית, ולא על קוד היציאה של `npx` — שאינו מבחין בין השניים ומחזיר `1` גם על תקלות תשתית (למשל `UNABLE_TO_GET_ISSUER_CERT_LOCALLY` מאחורי proxy ממסר-TLS, שנתקלנו בו בפועל). כך כשל אימות עוצר את הקומיט, וכשל רשת רק מזהיר וממשיך — ה-CI ממילא מאמת בדחיפה. נוסף גם `timeout`, שכן ברשת גרועה `npx` עלול להיתקע.

**אין שינוי בהתנהגות ה-Action.** `action.yml` ו-`src/index.js` לא נגעו; `files` משפיע על אריזת npm בלבד.

**בדיקות:** 32 עוברות. שלושת מסלולי ה-hook נבדקו כפי שהם מתועדים: תוסף תקין `0`, תוסף פגום `1`, וולידטור בלתי נגיש `0` עם המשך הקומיט.
