---
title: GPT Translate
date: 2023-08-20 19:09:33 +00:00
tags:
  - 3ru
  - GitHub Actions
draft: false
repo: 3ru/gpt-translate
marketplace: https://github.com/marketplace/actions/gpt-translate
version: v1.1.5
dependentsNumber: 31
---


Version updated for **3ru/gpt-translate** to version **v1.1.5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **31** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-translate) to find the latest changes.

## Release notes

# Specifying OpenAI Models
> **Note**
> Be careful that you have the correct access rights for the model you specify.

You can specify [any model](https://platform.openai.com/docs/models/gpt-4) like this👇

```yml
  uses: 3ru/gpt-translate@v1.1.5
  with:
    apikey: ${{ secrets.OPENAI_API_KEY }}
    model: "gpt-4"
```


