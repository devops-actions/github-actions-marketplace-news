---
title: KAERIS i18n Translate
date: 2026-07-26 06:44:59 +00:00
tags:
  - RaiGanja
  - GitHub Actions
draft: false
repo: https://github.com/RaiGanja/kaeris-action
marketplace: https://github.com/marketplace/actions/kaeris-i18n-translate
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates i18n translation tasks by leveraging AI to translate new or changed strings into specified target languages. It supports various input formats and provides a static i18n firewall during the `check` mode to ensure no missing keys or broken placeholders are introduced in translations. The action can be used for both translating new strings into a PR and checking current translation completeness.
---


Version updated for **https://github.com/RaiGanja/kaeris-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kaeris-i18n-translate) to find the latest changes.

## Action Summary

This GitHub Action automates i18n translation tasks by leveraging AI to translate new or changed strings into specified target languages. It supports various input formats and provides a static i18n firewall during the `check` mode to ensure no missing keys or broken placeholders are introduced in translations. The action can be used for both translating new strings into a PR and checking current translation completeness.

## What's Changed

## KAERIS i18n Translate — v1 🌍

The first stable release. Translate new or changed i18n keys with AI, **or** gate CI on translation completeness — 46 languages, incremental, placeholder-safe.

### Two modes

- **`check` — the i18n firewall (free, no API key).** Static, fully offline: no API call. Fails the build when a locale is missing keys or a translation broke a placeholder. Drop it on every PR and broken translations can't merge.
- **`translate` — AI translation into a PR.** Translates only the keys that are new or changed since the last run, writes the locale files, and emits a `changed` flag + a Markdown `summary` so you open a PR only when something actually changed.

### Quick start

**Gate every PR (no API key needed):**
```yaml
# .github/workflows/i18n-check.yml
name: i18n check
on: [pull_request]
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: RaiGanja/kaeris-action@v1
        with:
          mode: check
          source: locales/en.json
          languages: es,fr,de,ja
```

**Auto-translate new strings into a PR:**
```yaml
# .github/workflows/i18n-translate.yml
name: i18n translate
on:
  push:
    branches: [main]
    paths: ['locales/en.json']
jobs:
  translate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - id: kaeris
        uses: RaiGanja/kaeris-action@v1
        with:
          mode: translate
          source: locales/en.json
          languages: es,fr,de,ja
          api-key: ${{ secrets.KAERIS_API_KEY }}   # omit for the free anonymous tier
      - if: steps.kaeris.outputs.changed == 'true'
        uses: peter-evans/create-pull-request@v6
        with:
          title: "i18n: update translations"
          body: ${{ steps.kaeris.outputs.summary }}
          branch: i18n/update
```

### What's in v1

- **11 formats for translation** — JSON, YAML, `.strings`, `.po`, ARB, Android XML, CSV, XLIFF, `.properties`, `.resx`, and Mozilla Fluent.
- **Incremental by default** — `only-new` translates just the changed keys via `kaeris.lock`, so re-runs stay cheap.
- **Placeholder-safe** — catches lost/renamed placeholders, number drift (`Delete 5 files` → `Delete 50 files`), missing ICU/CLDR plural categories, and UI-overflow risk.
- **Honest reporting** — every number in the PR summary comes from a real `kaeris check --json` run; nothing is fabricated.
- **Tone & ICU control** — `tone: neutral|formal|casual`, `icu: true` to preserve MessageFormat plurals/select.
- **Rich outputs** — `changed`, `summary`, `missing`, `placeholder-issues`, `check-exit-code`.

### Links

- Website & docs: https://kaeris.dev
- CLI: `pip install kaeris`
- MCP server (localize from Claude / Cursor): `pip install kaeris-mcp`

MIT licensed.
