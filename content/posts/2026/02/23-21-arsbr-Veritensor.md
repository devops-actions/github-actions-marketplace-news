---
title: Veritensor AI Security Scanner
date: 2026-02-23 21:46:31 +00:00
tags:
  - arsbr
  - GitHub Actions
draft: false
repo: https://github.com/arsbr/Veritensor
marketplace: https://github.com/marketplace/actions/veritensor-ai-security-scanner
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/arsbr/Veritensor** to version **v1.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veritensor-ai-security-scanner) to find the latest changes.

## Action Summary

Veritensor is a security-focused GitHub Action designed to protect AI artifacts and the AI supply chain by scanning and sanitizing models, datasets, RAG documents, and notebooks for threats such as prompt injections, poisoned data, and compromised dependencies. It automates advanced security checks across binary formats, serialized data, and runtime environments, offering capabilities like dependency audits, cryptographic data provenance, and stealth detection of hidden malicious payloads. This action enhances governance and compliance while proactively preventing vulnerabilities before deployment.

## Release notes

# 🚀 Veritensor v1.6.0: The Native RAG Firewall & Ecosystem Update

Version 1.6.0 introduces Native **Python Integrations**, allowing you to embed Veritensor directly into your RAG pipelines as an active firewall. We've also drastically improved the Developer Experience (UX) with ignore files and automated GitHub PR reviews.

Stop scanning data after it's ingested. Block it before it hits your Vector DB.

## 🔥 Major Features

### 🧱 Native RAG Integrations (In-Memory Firewall)
You can now wrap your favorite data loaders and vector databases with Veritensor. It scans raw text and extracted elements in-memory, physically blocking Prompt Injections, Data Poisoning, and PII leaks at runtime.
* **LangChain:** Wrap any loader with `SecureLangChainLoader`.
* **LlamaIndex:** Wrap any reader with `SecureLlamaIndexReader`.
* **Unstructured.io:** Sanitize extracted elements using `SecureUnstructuredScanner`.
* **ChromaDB:** Intercept `.add()` and `.upsert()` calls directly at the database level using `SecureChromaCollection`.

**Example (LangChain):**

```
from langchain_community.document_loaders import PyPDFLoader
from veritensor.integrations.langchain_guard import SecureLangChainLoader

unsafe_loader = PyPDFLoader("user_upload.pdf")
secure_loader = SecureLangChainLoader(file_path="user_upload.pdf", base_loader=unsafe_loader)

# Raises VeritensorSecurityError if prompt injections or PII are detected!
docs = secure_loader.load()
```
### 🙈 Smart Filtering with `.veritensorignore`
No more false positives on your dummy test data! Veritensor now natively supports `.veritensorignore` files.
* Works exactly like `.gitignore`.
* Supports standard glob patterns (e.g., `tests/dummy_data/*`, `*.dev.env)`.
* Keeps your CI/CD pipelines green while maintaining strict security on real assets.

### 🤖 GitHub App Support (Automated PR Reviews)
Veritensor can now be deployed as a fully-fledged **GitHub App Backend**.
* Automatically scans files in new Pull Requests.
* Posts beautiful, detailed Markdown tables directly into PR comments.
* Sets Commit Statuses (✅ Success / ❌ Failure) to block malicious merges automatically.

### 🌪️ Data Engineering (Apache Airflow)
We've added official documentation and patterns for securing ETL pipelines. You can now easily integrate Veritensor into your Airflow DAGs using the standard `BashOperator` to quarantine poisoned datasets before they enter your Data Lake.

---

## 🛠️ Improvements & Fixes
* **Refactored Core Engine:** Separated file I/O from text scanning (`scan_text`), enabling lightning-fast in-memory analysis for our new integrations.
* **Smart Noise Reduction:** Improved the CLI output to automatically hide "noisy" data science practices (like `!pip install` or `import os`) unless the `--verbose` flag is passed, focusing your attention only on real threats.
* **Bug Fixes:** Resolved an issue where the CLI would crash when attempting to parse S3 URIs as local `Path` objects on certain OS environments.

## 🔄 How to Upgrade

To get all the new features and engines:

```bash
pip install --upgrade "veritensor[all]"
```
