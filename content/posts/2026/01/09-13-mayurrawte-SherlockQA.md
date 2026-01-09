---
title: SherlockQA-AI
date: 2026-01-09 13:22:30 +00:00
tags:
  - mayurrawte
  - GitHub Actions
draft: false
repo: https://github.com/mayurrawte/SherlockQA
marketplace: https://github.com/marketplace/actions/sherlockqa-ai
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/mayurrawte/SherlockQA** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sherlockqa-ai) to find the latest changes.

## Action Summary

SherlockQA is a GitHub Action that leverages AI to automate code review and quality assurance for pull requests, identifying bugs, security vulnerabilities, and quality issues. It provides inline comments, suggests QA test cases and unit tests, and delivers verdicts on pull requests to streamline the review process. Supporting multiple AI providers, it enables enhanced review customization with domain-specific context and custom prompts.

## Release notes

  🔍 Your AI code reviewer that catches bugs before your users do.

  Tired of bugs slipping through code reviews? SherlockQA acts like an extra team member who reviews every PR — catching security issues, suggesting tests, and thinking about edge cases so you don't have to.

  It's like having a senior engineer and QA tester rolled into one, reviewing your code 24/7. No more waiting for reviewers to be available, no more "I missed that" moments in production.

  Why SherlockQA?

  - 💰 Save time & money on QA — Catch issues early before they become expensive fixes
  - 🧠 Never miss edge cases — AI thinks like someone trying to break your code
  - 🧪 Get test ideas instantly — Suggests both unit tests and manual QA scenarios
  - ⚡ Works while you sleep — Reviews PRs the moment they're opened

  🔑 Bring Your Own API Key

  Works with providers you already use:

  - OpenAI → Just add your OPENAI_API_KEY
  - Azure OpenAI → Use your existing Azure deployment
  - Azure Responses API → For teams already on Azure

  Get Started in 2 Minutes

  With OpenAI:
  - uses: mayurrawte/SherlockQA@v1
    with:
      github-token: ${{ secrets.GITHUB_TOKEN }}
      openai-api-key: ${{ secrets.OPENAI_API_KEY }}

  With Azure OpenAI:
  - uses: mayurrawte/SherlockQA@v1
    with:
      github-token: ${{ secrets.GITHUB_TOKEN }}
      azure-openai-api-key: ${{ secrets.AZURE_OPENAI_API_KEY }}
      azure-openai-endpoint: ${{ secrets.AZURE_OPENAI_ENDPOINT }}
      azure-openai-deployment: your-deployment-name

  🕵️ Elementary, my dear developer.


