---
title: borderlint AI Data-Residency Lint
date: 2026-07-13 11:41:57 +00:00
tags:
  - iolairus
  - GitHub Actions
draft: false
repo: https://github.com/iolairus/borderlint
marketplace: https://github.com/marketplace/actions/borderlint-ai-data-residency-lint
version: v1.9.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  borderlint is a static linter designed to scan AI data and model traffic within a repository, evaluating it against residency, sovereignty, and provenance dimensions. It supports multiple programming languages (Python, TypeScript/JavaScript, Java/Kotlin) and can generate reports in various formats such as JSON, SARIF, SBOM, evidence packs, and HTML. The action automatically checks for compliance with predefined policies and provides detailed audit reports to ensure data and model traffic adhere to specified regulations.
---


Version updated for **https://github.com/iolairus/borderlint** to version **v1.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/borderlint-ai-data-residency-lint) to find the latest changes.

## Action Summary

**Summary:**

borderlint is a static linter designed to scan AI data and model traffic within a repository, evaluating it against residency, sovereignty, and provenance dimensions. It supports multiple programming languages (Python, TypeScript/JavaScript, Java/Kotlin) and can generate reports in various formats such as JSON, SARIF, SBOM, evidence packs, and HTML. The action automatically checks for compliance with predefined policies and provides detailed audit reports to ensure data and model traffic adhere to specified regulations.

## What's Changed

- **Java/Kotlin detection** — `.java`/`.kt`/`.kts` imports resolved via the new per-provider `jvm` KB key (official OpenAI, Anthropic, Bedrock, Vertex, Azure OpenAI, Gemini, Cohere, SageMaker, ollama4j SDKs — incl. the AWS SDK for Kotlin namespaces), with LangChain4j and Spring AI as runtime-routed aggregators. Endpoint literals, OpenAI-compatible call paths, config keys, inline waivers, and model-reference binding all apply to JVM sources.
- Validated against real codebases (Vespa, Pastefy, langchain4j-examples, spring-ai-examples, anthropic-sdk-java, openai-java, aws-doc-sdk-examples) before release.
