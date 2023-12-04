---
title: You Need a Budget Automation
date: 2023-12-04 02:46:21 +00:00
tags:
  - SierraSoftworks
  - GitHub Actions
draft: false
repo: SierraSoftworks/ynab-automation
marketplace: https://github.com/marketplace/actions/you-need-a-budget-automation
version: v2.2
dependentsNumber: "?"
---


Version updated for **SierraSoftworks/ynab-automation** to version **v2.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/you-need-a-budget-automation) to find the latest changes.

## Release notes

This release fixes some issues with initial runs when `cache: true` is configured.

## Setup
1. Create a new YNAB Personal API Token by following their [guide](https://api.youneedabudget.com/#personal-access-tokens).
2. Configure your repository's secrets to include the following:
   - `YNAB_API_KEY`: Your YNAB Personal API Token
   - `YNAB_BUDGET_ID`: The ID of your YNAB budget, this is the first GUID in the URL when you are viewing your budget in the YNAB web app.
3. Create your own repository, and place a `.github/workflows/ynab.yaml` file with the following contents.
   
   ```yaml
   name: YNAB

   on:
     schedule:
        # Run the automation every 12 hours
       - cron: '0 */12 * * *'

   jobs:
     automate-ynab:
       runs-on: ubuntu-latest
       steps:
         - uses: SierraSoftworks/ynab-automation@v2.2
           with:
             budget-id: ${{ secrets.YNAB_BUDGET_ID }}
             api-key: ${{ secrets.YNAB_API_KEY }}
             cache: true
   ```

### Automatic Updates
If you want to automatically update to the latest version of the YNAB automation, you can add a `.github/dependabot.yml` file
to your repository with the following contents. It will automatically create pull requests to update your repository when new
versions are released.

```yaml
version: 2
updates:
  - directory: /
    package-ecosystem: github-actions
    schedule:
      interval: weekly
```
