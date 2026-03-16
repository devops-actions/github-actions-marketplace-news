---
title: TerraSecure IaC Scanner
date: 2026-03-16 21:41:50 +00:00
tags:
  - JashwanthMU
  - GitHub Actions
draft: false
repo: https://github.com/JashwanthMU/TerraSecure
marketplace: https://github.com/marketplace/actions/terrasecure-iac-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/JashwanthMU/TerraSecure** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terrasecure-iac-scanner) to find the latest changes.

## Action Summary

TerraSecure is a machine learning-powered security scanner designed to identify and mitigate misconfigurations in Terraform infrastructure code. By leveraging real-world breach patterns, it provides accurate risk assessments, AI-driven explanations, and actionable fixes, reducing false positives and enhancing security insights. The tool automates security scanning with multi-format outputs (e.g., JSON, SARIF) and integrates seamlessly into DevSecOps workflows, helping teams proactively prevent breaches.

## Release notes

# 🚀 TerraSecure v1.0.0 - GitHub Action Release

AI-Powered Terraform Security Scanner with 92% ML accuracy - now available as a GitHub Action!

## 🎯 One-Line Integration
```yaml
- uses: JashwanthMU/TerraSecure@v1
```

## ✨ What's Included

- ✅ **ML-Powered Scanning**: 92% accuracy, 10.7% false positive rate
- ✅ **AI Explanations**: Business impact analysis & attack scenarios
- ✅ **GitHub Security Integration**: SARIF output for code scanning alerts
- ✅ **Docker Image**: `ghcr.io/jashwanthmu/terrasecure:latest`
- ✅ **Offline Operation**: No external API dependencies
- ✅ **Fast Scans**: <100ms per resource

## 📊 Security Checks

Detects 50+ security patterns including:

- 🔴 **Critical** (2): Public S3 buckets, IAM wildcard policies
- 🟠 **High** (8): Unencrypted storage, exposed databases, hardcoded secrets
- 🟡 **Medium** (15): Missing logging, disabled monitoring, weak configurations

Trained on real-world breaches: Capital One (2019), Uber (2016), Tesla (2018), MongoDB (2017)

## 🚀 Quick Start

### Basic Usage
```yaml
name: Security Scan
on: [push, pull_request]

permissions:
  security-events: write

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: JashwanthMU/TerraSecure@v1
```

### Advanced Usage
```yaml
- uses: JashwanthMU/TerraSecure@v1
  with:
    path: 'infrastructure'           # Directory to scan
    format: 'sarif'                  # Output format
    fail-on: 'high'                  # Fail threshold
    upload-sarif: 'true'             # Upload to Security tab
```

## 📦 Installation Options

### 1. GitHub Action (Recommended)
```yaml
- uses: JashwanthMU/TerraSecure@v1
```

### 2. Docker
```bash
docker pull ghcr.io/jashwanthmu/terrasecure:latest
docker run --rm -v $(pwd):/scan ghcr.io/jashwanthmu/terrasecure:latest /scan
```

### 3. Local Install
```bash
git clone https://github.com/JashwanthMU/TerraSecure.git
cd TerraSecure
pip install -r requirements.txt
python src/cli.py examples/vulnerable --format sarif
```

## 🎓 What Gets Detected

### Network Security
- Open CIDR 0.0.0.0/0
- SSH port 22 exposed
- RDP port 3389 exposed
- All ports open
- Unrestricted egress

### Storage Security
- Public S3 ACLs
- Unencrypted S3/EBS/RDS
- No versioning
- Public snapshots
- No backup encryption

### IAM Security
- Wildcard actions (*)
- Wildcard resources (*)
- Root account usage
- No MFA enforcement
- Hardcoded credentials

### Monitoring
- CloudTrail disabled
- VPC Flow Logs disabled
- No access logging
- GuardDuty disabled
- No alarms configured

## 📈 Performance Metrics

- **Accuracy**: 92.45%
- **False Positive Rate**: 10.71% (Target: <10%)
- **False Negative Rate**: 4.00% (Target: <5%)
- **Scan Speed**: <100ms per resource
- **Model Size**: 177 KB
- **Docker Image**: 498 MB

## 🔄 What's New in v1.0.0

- ✅ Production ML model with 92% accuracy
- ✅ SARIF 2.1.0 output format
- ✅ GitHub Security tab integration
- ✅ Docker image on ghcr.io
- ✅ GitHub Marketplace action
- ✅ Intelligent LLM fallback (offline mode)
- ✅ 50-feature security analysis
- ✅ Real-world breach pattern detection

## 📚 Documentation

- [Action Usage](ACTION_README.md)
- [Full Documentation](README.md)
- [Docker Guide](DOCKER.md)
- [Issue Tracker](https://github.com/JashwanthMU/TerraSecure/issues)

## 🆚 vs Competition

| Feature | Checkov | Trivy | TerraSecure |
|---------|---------|-------|-------------|
| ML-Powered | ❌ | ❌ | ✅ 92% accuracy |
| AI Explanations | ❌ | ❌ | ✅ Business impact |
| False Positives | ~15% | ~12% | **10.7%** |
| Offline Mode | ✅ | ✅ | ✅ |
| SARIF Output | ✅ | ✅ | ✅ |
| Attack Scenarios | ❌ | ❌ | ✅ Real breaches |

## 🤝 Contributing

Contributions welcome! 

## 📄 License

MIT License 

---

**🔒 Secure your infrastructure with AI-powered analysis!**
