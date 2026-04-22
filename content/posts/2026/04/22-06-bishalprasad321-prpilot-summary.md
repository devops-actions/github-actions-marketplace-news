---
title: PR Pilot Summary
date: 2026-04-22 06:24:48 +00:00
tags:
  - bishalprasad321
  - GitHub Actions
draft: false
repo: https://github.com/bishalprasad321/prpilot-summary
marketplace: https://github.com/marketplace/actions/pr-pilot-summary
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/bishalprasad321/prpilot-summary** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-pilot-summary) to find the latest changes.

## Action Summary

This GitHub Action, **PR Pilot Summary**, automates the generation of intelligent, context-aware pull request descriptions using AI. It analyzes code changes to create professional summaries, developer notes, and checklists, helping teams and contributors improve communication and streamline the PR review process. Key features include support for multiple AI models, dynamic checklist generation based on file types, and efficient handling of large or noisy diffs.

## What's Changed

# PR Pilot Summary

Automatically generate intelligent, context-aware pull request descriptions using AI.

## What's new

### PR Pilot Summary v1.0.0

Initial stable release with complete AI-powered PR description generation.

- **AI-powered PR analysis** — Supports OpenAI GPT-4, GPT-4o-mini, Google Gemini, and OpenAI-compatible models
- **Professional PR templates** — Auto-generates Summary, Key Points, and Technical Highlights sections
- **Smart content preservation** — Intelligently extracts and preserves existing PR descriptions in Developer Notes
- **Dynamic checklists** — Auto-populates checklist items based on file types changed (tests, docs, configs, performance)
- **Incremental diff processing** — Handles large diffs efficiently with configurable line limits
- **Idempotent execution** — Won't reprocess the same commits on subsequent updates
- **Multi-language support** — Detects and analyzes 20+ programming languages
- **Smart filtering** — Automatically ignores build artifacts, node_modules, lock files, and dependency files
- **Timeout-safe** — Graceful error handling ensures it never breaks your CI/CD pipeline
- **Comprehensive test coverage** — Type-safe TypeScript codebase with production-ready reliability

## Usage

```yaml
- uses: bishalprasad321/prpilot-summary@v1
  with:
    # GitHub token with permissions to read PR details and post comments
    # Required
    github_token: ${{ secrets.GITHUB_TOKEN }}

    # LLM provider API key (OpenAI, Gemini, or compatible provider)
    # Required
    llm_api_key: ${{ secrets.LLM_API_KEY }}

    # LLM provider to use: auto, openai, openai-compatible, gemini
    # Default: auto
    llm_provider: ''

    # Optional custom API endpoint for OpenAI-compatible providers or proxies
    # Default: ''
    llm_api_base_url: ''

    # AI model to use (e.g., gpt-4o-mini, gemini-2.5-flash)
    # Default: gpt-4o-mini
    ai_model: ''

    # Maximum diff lines to process before generating summary
    # If exceeded, a summary will be generated instead
    # Default: 5000
    max_diff_lines: ''

    # Enable incremental diff processing for large diffs
    # Processes diffs in chunks to handle large changesets efficiently
    # Default: true
    enable_incremental_diff_processing: ''

    # Enable debug mode for verbose logging
    # Default: true
    debug: ''
```

## Scenarios

### Basic Setup

```yaml
name: Generate PR Description

on:
  pull_request:
    types: [opened, synchronize]

jobs:
  generate-description:
    runs-on: ubuntu-latest
    permissions:
      pull-requests: write
      contents: read
    steps:
      - uses: actions/checkout@v4

      - name: Generate AI PR Description
        uses: bishalprasad321/prpilot-summary@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          llm_api_key: ${{ secrets.GEMINI_API_KEY }}
          llm_provider: gemini
          ai_model: gemini-2.5-flash
```

### Using OpenAI GPT-4o-mini

```yaml
- uses: bishalprasad321/prpilot-summary@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    llm_api_key: ${{ secrets.OPENAI_API_KEY }}
    llm_provider: openai
    ai_model: gpt-4o-mini
```

### Using Custom OpenAI-Compatible Provider

```yaml
- uses: bishalprasad321/prpilot-summary@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    llm_api_key: ${{ secrets.LLM_API_KEY }}
    llm_provider: openai-compatible
    llm_api_base_url: https://your-custom-endpoint.com/v1
    ai_model: your-model-name
```

### Handling Large Pull Requests

```yaml
- uses: bishalprasad321/prpilot-summary@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    llm_api_key: ${{ secrets.GEMINI_API_KEY }}
    llm_provider: gemini
    ai_model: gemini-2.5-flash
    max_diff_lines: 10000
    enable_incremental_diff_processing: true
```

### Development Workflow with Debug Mode

```yaml
- uses: bishalprasad321/prpilot-summary@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    llm_api_key: ${{ secrets.GEMINI_API_KEY }}
    llm_provider: gemini
    debug: true
```

## Recommended Permissions

When using PR Pilot Summary in your GitHub Actions workflow, it is recommended to set the following `GITHUB_TOKEN` permissions:

```yaml
permissions:
  pull-requests: write
  contents: read
```

- `pull-requests: write` — Required to post PR descriptions and comments
- `contents: read` — Required to read repository contents and PR diffs

## Note

For detailed setup instructions and to get your LLM API key:

- **Gemini** (Free): [Google AI Studio](https://aistudio.google.com/apikey)
- **OpenAI**: [OpenAI API Keys](https://platform.openai.com/api-keys)
- **Other Providers**: Refer to your provider's documentation

For more information, see the [Quick Start Guide](https://github.com/bishalprasad321/prpilot-summary/blob/develop/QUICKSTART.md) and [Full Documentation](https://github.com/bishalprasad321/prpilot-summary/blob/develop/README.md).

## License

The scripts and documentation in this project are released under the [MIT License](https://github.com/bishalprasad321/prpilot-summary/blob/develop/LICENSE).
