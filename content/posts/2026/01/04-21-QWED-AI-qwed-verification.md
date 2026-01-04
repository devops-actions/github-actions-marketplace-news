---
title: QWED Neurosymbolic Verification
date: 2026-01-04 21:29:01 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-neurosymbolic-verification
version: v2.2.0
dependentsNumber: "0"
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v2.2.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-neurosymbolic-verification) to find the latest changes.

## Action Summary

QWED Protocol is an open-source GitHub Action that provides a robust, model-agnostic verification layer for validating outputs from large language models (LLMs). It automates the detection and prevention of AI hallucinations using eight specialized verification engines, ensuring only provable and reliable AI-generated outputs are allowed into production. By integrating existing verification tools into a unified API, it addresses trust and accuracy issues in AI systems for production-grade deployment.

## Release notes

**_QWED v2.2.0 introduces automatic PII (Personally Identifiable Information) masking - protecting sensitive data before it reaches LLM providers._**

### **🎉 What's New**
**PII Masking (Enterprise Privacy Feature)**
Automatically detect and mask 9 types of PII before sending to LLM providers:

✅ Email addresses
✅ Credit card numbers
✅ Phone numbers
✅ US SSN
✅ IBAN codes
✅ IP addresses
✅ Person names
✅ Locations
✅ Medical licenses
Your data stays private. The LLM never sees the actual sensitive information.

**Perfect for:**

- Healthcare - HIPAA compliance
- Finance - PCI-DSS compliance
- Enterprise - GDPR compliance
- Legal - Attorney-client privilege
- Any privacy-sensitive application

**### 🚀 Quick Start**
**Installation**

```
# Standard installation
pip install qwed
# With PII masking support
pip install 'qwed[pii]'
python -m spacy download en_core_web_lg
```

**Usage
Python API:**

```
from qwed_sdk import QWEDLocal
client = QWEDLocal(provider="openai", mask_pii=True)
result = client.verify("My email is john@example.com")
# LLM sees: "My email is <EMAIL_ADDRESS>"
```

**CLI:**

```
qwed verify "Email: user@example.com" --mask-pii
qwed pii "Test: 123-45-6789"  # Test detection
```

**✨ Key Features**
**🔐 Privacy-First Architecture**

- 100% local PII detection (powered by Microsoft Presidio)
- No data sent to QWED servers
- One-way masking (non-reversible)

**📊 Transparent Auditing**

- All verification results include PII metadata
- See exactly what was masked and why
- Full compliance audit trail

**⚡ Performance**

- ~100-200ms latency impact
- 95%+ detection accuracy
- English language support (v2.2.0)

**🎯 Flexible Configuration**

- Opt-in design (mask_pii=False by default)
- Customize which PII types to detect
- Works with ALL LLM providers

**📚 Documentation**
**New guides added:**


- [PII Masking Guide](https://github.com/QWED-AI/qwed-verification/blob/main/docs/PII_MASKING.md) - Complete documentation
- [Enterprise Use Cases](https://github.com/QWED-AI/qwed-verification/blob/main/docs/PII_MASKING.md#enterprise-use-cases) - HIPAA, PCI-DSS, GDPR examples
- [Installation Guide](https://github.com/QWED-AI/qwed-verification/blob/main/docs/PII_MASKING.md#installation) - Step-by-step setup

**Updated:**


- README with PII section
- Unit tests for PII functionality
- CLI reference

**🔄 Breaking Changes**
**None! This release is fully backward compatible.**


- PII masking is opt-in (disabled by default)
- Optional dependency (doesn't affect existing installations)
- All existing code works without changes

**🐛 Bug Fixes**

- Fixed CI test suite to gracefully skip PII tests when dependencies not installed
- Improved error messages for missing PII dependencies

**🎯 What's Next**
**v2.3.0 (Q1 2026) - Planned features:**


- Multi-language PII support
- Cost tracking & analytics
- Streaming verification
- Enhanced confidence scores
See full [ROADMAP](https://github.com/QWED-AI/qwed-verification/blob/main/ROADMAP_LOCKED.md)


**📦 Links**

- PyPI: https://pypi.org/project/qwed/2.2.0/
- Docs: https://docs.qwedai.com/
- PII Guide: [docs/PII_MASKING.md](https://github.com/QWED-AI/qwed-verification/blob/main/docs/PII_MASKING.md)
- Full Changelog: [RELEASE_NOTES_v2.2.0.md](https://github.com/QWED-AI/qwed-verification/blob/main/RELEASE_NOTES_v2.2.0.md)

**🙏 Acknowledgments
Special thanks to:**


- Microsoft Presidio team for excellent PII detection
- spaCy for NLP infrastructure
- Community feedback on privacy features

**Install now:** `pip install 'qwed[pii]'`

**Questions?** Open an [issue](https://github.com/QWED-AI/qwed-verification/issues) or reach out on [Twitter](https://x.com/rahuldass29)
