---
title: LinkedIn Cards Generator
date: 2026-01-04 13:10:43 +00:00
tags:
  - alexcerezo
  - GitHub Actions
draft: false
repo: https://github.com/alexcerezo/linkedin-cards
marketplace: https://github.com/marketplace/actions/linkedin-cards-generator
version: v1.0.0
dependentsNumber: "1"
---


Version updated for **https://github.com/alexcerezo/linkedin-cards** to version **v1.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/linkedin-cards-generator) to find the latest changes.

## Action Summary

The GitHub Readme LinkedIn Card Generator is a GitHub Action that automates the creation and daily updating of visually appealing LinkedIn post cards, which can be embedded in GitHub profile READMEs. It helps developers showcase their latest LinkedIn activity in a professional manner, with features like support for light and dark themes, multi-language capabilities, and responsive SVG formats.

## Release notes

# 🚀 GitHub Readme LinkedIn Card Generator v1.0.0

**Turn your LinkedIn posts into beautiful, dynamic SVG cards for your GitHub README.**

This is the first official release of the **LinkedIn Cards Generator** as a reusable GitHub Action. Now you can showcase your latest LinkedIn activity on your profile with zero maintenance!

## ✨ Key Features

*   **🎨 Auto-Theming:** Native support for GitHub **Light** and **Dark** modes.
*   **🔄 Always Fresh:** Automatically fetches your latest posts (no manual updates needed).
*   **🌍 Multi-Language:** Full support for **English** 🇬🇧, **Spanish** 🇪🇸, **French** 🇫🇷, and **German** 🇩🇪.
*   **⚡ Zero Config:** No need to clone the repo or manage JSON files. Just add the workflow!
*   **🧠 Smart Grammar:** Correctly handles singular/plural (e.g., "1 comentario" vs "5 comentarios").
*   **📱 Responsive:** SVG cards scale perfectly on any screen.

## 🚀 Quick Setup

1.  Add the following markers to your `README.md`:
    ```markdown
    <!-- BEGIN LINKEDIN-CARDS -->
    <!-- END LINKEDIN-CARDS -->
    ```

2.  Create a workflow file `.github/workflows/linkedin.yml`:

    ```yaml
    name: Update LinkedIn Cards
    on:
      schedule:
        - cron: '0 0 * * *' # Runs daily
      workflow_dispatch:

    jobs:
      update-cards:
        runs-on: ubuntu-latest
        permissions:
          contents: write
        steps:
          - uses: alexcerezo/linkedin-cards@v1.0.0
            with:
              apify_api_token: ${{ secrets.APIFY_API_TOKEN }}
              linkedin_username: 'your-linkedin-username'
              language: 'en' # Optional: en, es, fr, de
    ```

## ⚙️ Configuration Options

| Input | Description | Default |
|-------|-------------|---------|
| `apify_api_token` | **Required.** Your Apify API Token. | - |
| `linkedin_username` | **Required.** Your LinkedIn profile username. | - |
| `max_cards_to_generate` | Number of cards to display. | `4` |
| `language` | Language for labels (`en`, `es`, `fr`, `de`). | `en` |
| `comment_tag_name` | Custom tag for README injection. | `LINKEDIN-CARDS` |

---

*Made with ❤️ by [Alejandro Cerezo](https://github.com/alexcerezo)*
# 🚀 LinkedIn Cards Generator v1.0.0

**Turn your LinkedIn posts into beautiful, dynamic SVG cards for your GitHub README.**

This is the first official release of the **LinkedIn Cards Generator** as a reusable GitHub Action. Now you can showcase your latest LinkedIn activity on your profile with zero maintenance!

## ✨ Key Features

*   **🎨 Auto-Theming:** Native support for GitHub **Light** and **Dark** modes.
*   **🔄 Always Fresh:** Automatically fetches your latest posts (no manual updates needed).
*   **🌍 Multi-Language:** Full support for **English** 🇬🇧, **Spanish** 🇪🇸, **French** 🇫🇷, and **German** 🇩🇪.
*   **⚡ Zero Config:** No need to clone the repo or manage JSON files. Just add the workflow!
*   **🧠 Smart Grammar:** Correctly handles singular/plural (e.g., "1 comentario" vs "5 comentarios").
*   **📱 Responsive:** SVG cards scale perfectly on any screen.

## 🚀 Quick Setup

1.  Add the following markers to your `README.md`:
    ```markdown
    <!-- BEGIN LINKEDIN-CARDS -->
    <!-- END LINKEDIN-CARDS -->
    ```

2.  Create a workflow file `.github/workflows/linkedin.yml`:

    ```yaml
    name: LinkedIn Cards

on:
  schedule:
    - cron: "0 0 * * *"  # Runs daily at midnight
  workflow_dispatch:

permissions:
  contents: write

jobs:
  linkedin-cards:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - uses: alexcerezo/linkedin-cards@main
        with:
          apify_api_token: ${{ secrets.APIFY_API_TOKEN }}
          linkedin_username: ${{ vars.LINKEDIN_USERNAME }}
          max_cards_to_generate: 4 # Number of cards
          language: en # Choose your language: en, es, fr...
    ```

## ⚙️ Configuration Options

| Input | Description | Default |
|-------|-------------|---------|
| `apify_api_token` | **Required.** Your Apify API Token. | - |
| `linkedin_username` | **Required.** Your LinkedIn profile username. | - |
| `max_cards_to_generate` | Number of cards to display. | `4` |
| `language` | Language for labels (`en`, `es`, `fr`, `de`). | `en` |
| `comment_tag_name` | Custom tag for README injection. | `LINKEDIN-CARDS` |

## 👀 Example
<p align="center">
  <a href="https://www.linkedin.com/posts/alexcerezocontreras_fundamentos-de-github-activity-7410580273488138241-sIZP?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAGDzZvgBnXqsXb6EUzbmoDxCnI-PyrDZsvM">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1766820019123-dark.svg">
      <source media="(prefers-color-scheme: light)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1766820019123-light.svg">
      <img alt="LinkedIn Card 1" src="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1766820019123-light.svg" width="320px">
    </picture>
  </a>
  <a href="https://www.linkedin.com/posts/alexcerezocontreras_gsec-activity-7404566046545903616-oy71?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAGDzZvgBnXqsXb6EUzbmoDxCnI-PyrDZsvM">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1765386115681-dark.svg">
      <source media="(prefers-color-scheme: light)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1765386115681-light.svg">
      <img alt="LinkedIn Card 2" src="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1765386115681-light.svg" width="320px">
    </picture>
  </a>
  <a href="https://www.linkedin.com/posts/alexcerezocontreras_hoy-he-tenido-la-suerte-de-asistir-al-primer-activity-7377475497473146880-MYnC?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAGDzZvgBnXqsXb6EUzbmoDxCnI-PyrDZsvM">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1758927225464-dark.svg">
      <source media="(prefers-color-scheme: light)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1758927225464-light.svg">
      <img alt="LinkedIn Card 3" src="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1758927225464-light.svg" width="320px">
    </picture>
  </a>
  <a href="https://www.linkedin.com/posts/alexcerezocontreras_hoy-a-tocado-asistir-a-la-charla-de-azurem%C3%A1laga-activity-7374160674068877312-biYP?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAGDzZvgBnXqsXb6EUzbmoDxCnI-PyrDZsvM">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1758136909978-dark.svg">
      <source media="(prefers-color-scheme: light)" srcset="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1758136909978-light.svg">
      <img alt="LinkedIn Card 4" src="https://github.com/alexcerezo/alexcerezo/blob/main/cards/1758136909978-light.svg" width="320px">
    </picture>
  </a>
</p>

---

*Made with ❤️ by [Alejandro Cerezo](https://github.com/alexcerezo)*
