---
title: Setup sstart
date: 2025-12-11 07:33:30 +00:00
tags:
  - dirathea
  - GitHub Actions
draft: false
repo: https://github.com/dirathea/setup-sstart-env
marketplace: https://github.com/marketplace/actions/setup-sstart
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/dirathea/setup-sstart-env** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-sstart) to find the latest changes.

## Release notes

# Release v1.0.0

## 🎉 Initial Release

We're excited to announce the first release of **setup-sstart-env**, a GitHub Action that seamlessly integrates [sstart](https://github.com/dirathea/sstart) into your GitHub Actions workflows.

## ✨ Features

- **Secure Secret Loading**: Leverages sstart to securely load secrets from multiple providers (AWS Secrets Manager, 1Password, etc.) for use in your GitHub Actions workflows

## 🚀 What's New

This action simplifies the process of fetching secrets from external sources (like AWS Secrets Manager, 1Password, etc.) and making them available in your GitHub workflows. No more manual setup or complex shell scripts!

## 📖 Quick Start

```yaml
- name: Fetch external secrets with sstart
  uses: dirathea/setup-sstart-env@v1
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_REGION: us-east-1
  with:
    config: |
      providers:
        - kind: aws_secretsmanager
          secret_id: myapp/production

- name: Use fetched secrets
  run: |
    echo "Database URL: $DATABASE_URL"
    echo "API Key: $API_KEY"
```

## 🔧 Key Capabilities

- **Seamless Integration**: Fetched secrets are automatically available as environment variables in all subsequent workflow steps

## 📚 Documentation

For detailed usage examples and configuration options, see the [README.md](README.md).

## 🔗 Links

- [Repository](https://github.com/dirathea/setup-sstart-env)
- [sstart Documentation](https://github.com/dirathea/sstart)
- [Issues](https://github.com/dirathea/setup-sstart-env/issues)

## 🙏 Thank You

Thank you for using setup-sstart-env! We hope this makes managing secrets in your GitHub Actions workflows easier and more secure.


