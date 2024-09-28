---
title: GPT Translate
date: 2024-09-28 16:46:36 +00:00
tags:
  - 3ru
  - GitHub Actions
draft: false
repo: 3ru/gpt-translate
marketplace: https://github.com/marketplace/actions/gpt-translate
version: v1.2.0-beta
dependentsNumber: "0"
---


Version updated for **3ru/gpt-translate** to version **v1.2.0-beta**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-translate) to find the latest changes.

## Release notes

# `v1.2.0-beta`: Multi-Provider Support

We're excited to announce an update to GPT Translate that brings support for **multiple AI model providers**!

## 🌟 Highlights

- **Multi-Provider Support**: Now compatible with [9 different AI providers](https://g-t.vercel.app/docs/references/supported-model-provider), giving you more choice and flexibility.
- **Expanded Model Options**: Access to a wider range of language [model options](https://g-t.vercel.app/docs/references/input).
- **Improved Documentation**: Updated guides and examples for each supported provider.

## 🚀 New Supported Providers

- [OpenAI](https://openai.com/)(existing)
- [Groq](https://groq.com/)
- [Perplexity](https://docs.perplexity.ai/)
- [Fireworks](https://fireworks.ai/)
- [Azure](https://azure.microsoft.com/en-us/products/ai-services/openai-service)
- [Anthropic](https://www.anthropic.com/)
- [Google Generative AI](https://ai.google/discover/generativeai/)
- [Mistral](https://mistral.ai/)
- [Cohere](https://cohere.com/)

## 🔧 How to Use

1. Update your workflow file to specify your chosen provider and model.
2. Set the appropriate API key in your GitHub secrets.

### Example: Using Anthropic's Claude 3.5 Sonnet

```yaml
- uses: 3ru/gpt-translate@v1.2.0-beta
  with:
    apikey: ${{ secrets.ANTHROPIC_API_KEY }}
    provider: 'anthropic'
    model: 'claude-3-5-sonnet-20240620'
```

You can freely specify any model offered by each provider. 

This support is implemented using the [Vercel AI SDK](https://github.com/vercel/ai). If you encounter any configuration issues, please refer to the [AI SDK documentation](https://sdk.vercel.ai/docs/introduction) for additional guidance.


## ⚠️ Breaking Changes

Removal of n parameter: The n parameter, which was introduced in v1.1.12 as part of the Enhanced OpenAI API Parameters, is no longer supported. Other parameters (`top_p`, `temperature`, `max_tokens`, `presence_penalty`, `frequency_penalty`, and `seed`) remain supported.


## 📚 Documentation
For detailed information on configuring each provider, please refer to our [updated documentation](https://g-t.vercel.app/docs/references/supported-model-provider).


## 🎉 Thank You
We'd like to thank our community for their continued support and feedback. 
Happy translating! 🌍✨

---
## Changes

* Add support for multiple AI model providers by @3ru in https://github.com/3ru/gpt-translate/pull/63


**Full Changelog**: https://github.com/3ru/gpt-translate/compare/v1.1.12...v1.2.0-beta
