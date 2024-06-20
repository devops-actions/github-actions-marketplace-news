---
title: GPT Translate
date: 2024-06-20 08:46:38 +00:00
tags:
  - 3ru
  - GitHub Actions
draft: false
repo: 3ru/gpt-translate
marketplace: https://github.com/marketplace/actions/gpt-translate
version: v1.1.12
dependentsNumber: "0"
---


Version updated for **3ru/gpt-translate** to version **v1.1.12**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-translate) to find the latest changes.

## Release notes

## What's Changed

### Enhanced OpenAI API Parameters

In our ongoing efforts to refine the interaction with the OpenAI API, we have expanded the list of configurable parameters. This enhancement allows users to fine-tune the behavior of the AI models more precisely, potentially reducing the review workload in translation PRs. The newly supported parameters include:

- `top_p`
- `temperature`
- `n`
- `max_tokens`
- `presence_penalty`
- `frequency_penalty`
- `seed`

ref: [OpenAI API Reference](https://platform.openai.com/docs/api-reference/chat/create)

By primarily utilizing the top_p and temperature parameters, we aim to reduce the randomness in model outputs. This adjustment is intended to lessen the burden of reviewing translation PRs.

### example

```yml
  - name: Run GPT Translate
    if: |
      contains(github.event.comment.body, '/gt')
    uses: 3ru/gpt-translate@master
    with:
      apikey: ${{ secrets.OPENAI_API_KEY }}
      model: "gpt-4o"
      prompt: 'Please translate the given text into naturalistic {targetLanguage}.'
      top_p: "0.5"
      temperature: "0.3" 
```

---

**Full Changelog**: https://github.com/3ru/gpt-translate/compare/v1.1.11...v1.1.12 by @3ru 

<br />

✨ Special Thanks @refracta for [the feature request](https://github.com/3ru/gpt-translate/discussions/61) 
