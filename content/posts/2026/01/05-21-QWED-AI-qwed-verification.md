---
title: QWED Neurosymbolic Verification
date: 2026-01-05 21:20:15 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-neurosymbolic-verification
version: v2.3.0
dependentsNumber: "0"
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v2.3.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-neurosymbolic-verification) to find the latest changes.

## Action Summary

QWED Protocol is a model-agnostic verification tool designed to validate outputs from any large language model (LLM) by detecting and preventing hallucinations. It automates the verification of AI-generated content using eight specialized engines, ensuring only provable outputs are used in production. By integrating multiple existing verification libraries into a unified API, QWED provides a reliable solution for enhancing AI trustworthiness in production environments.

## Release notes

# 🦜 Native LangChain Integration - Platform Partner Model

QWED v2.3.0 brings first-party LangChain support as an independent platform partner - following the same model as OpenAI, Anthropic, and Google.

## 🎯 What's New

**Native LangChain Integration**
- ✅ `qwed_sdk/integrations/langchain` module
- ✅ [QWEDTool](cci:2://file:///c:/Users/rahul/.gemini/antigravity/playground/vector-meteoroid/qwed_new/qwed_sdk/integrations/langchain.py:49:0-166:44) with BaseTool interface
- ✅ Optional dependency: `pip install 'qwed[langchain]'`
- ✅ Full ownership & control - no gatekeepers!

## 📦 Installation

`pip install --upgrade 'qwed[langchain]`

## 🚀 Quick Start

```
from qwed_sdk.integrations.langchain import QWEDTool
from langchain.agents import initialize_agent
from langchain_openai import ChatOpenAI

tool = QWEDTool(provider="openai", model="gpt-4o-mini")
llm = ChatOpenAI()
agent = initialize_agent(tools=[tool], llm=llm)

agent.run("Verify: what is the derivative of x^2?")
# ✅ VERIFIED: 2*x (100% confidence)
```

## 🔗 Combine with v2.2.0 Features

```
# Enterprise privacy + LangChain
tool = QWEDTool(provider="openai", mask_pii=True)
```

## 📊 What's Included

- Native LangChain BaseTool integration
- Graceful dependency handling
- Pydantic input schemas
- Async support
- Comprehensive error messages

**PyPI:** https://pypi.org/project/qwed/2.3.0/
**Docs:** https://github.com/QWED-AI/qwed-verification#-llm-framework-integrations
**Full Changelog:** https://github.com/QWED-AI/qwed-verification/compare/v2.2.0...v2.3.0
