---
title: MetaScrape OG Tag Validator
date: 2026-02-24 13:22:46 +00:00
tags:
  - shaneburrell
  - GitHub Actions
draft: false
repo: https://github.com/shaneburrell/metascrape-action
marketplace: https://github.com/marketplace/actions/metascrape-og-tag-validator
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/shaneburrell/metascrape-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/metascrape-og-tag-validator) to find the latest changes.

## Action Summary

The MetaScrape OG Tag Validator GitHub Action automates the validation of Open Graph and Twitter Card meta tags on websites by leveraging the MetaScrape API. It identifies missing or broken social share metadata, ensuring professional and functional link previews across platforms like Twitter, Slack, and Discord. This action helps developers catch metadata issues during CI workflows, preventing errors from reaching production and maintaining the quality of social sharing previews.

## Release notes

### Bug Fix
- Fixed the `results` output which was declared but never written to `$GITHUB_OUTPUT`
- The `results` output now contains a JSON array of per-URL validation results including OG title, description, image, Twitter card, favicon, and pass/fail status

### Usage
```yaml
- uses: shaneburrell/metascrape-action@v1
  with:
    urls: |
      https://example.com
    api-key: ${{ secrets.METASCRAPE_API_KEY }}
```

Get a free API key at [metascrape.shanecode.org](https://metascrape.shanecode.org)
