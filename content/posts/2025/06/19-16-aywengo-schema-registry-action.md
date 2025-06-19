---
title: Schema Registry CI/CD with ksr-cli
date: 2025-06-19 16:59:03 +00:00
tags:
  - aywengo
  - GitHub Actions
draft: false
repo: https://github.com/aywengo/schema-registry-action
marketplace: https://github.com/marketplace/actions/schema-registry-ci-cd-with-ksr-cli
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/aywengo/schema-registry-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/schema-registry-ci-cd-with-ksr-cli) to find the latest changes.

## Release notes

## 🎉 Initial Release

We're excited to announce the first release of Schema Registry CI/CD Action - a comprehensive GitHub Action for automating Schema Registry operations in your CI/CD pipelines!

This action is powered by [ksr-cli](https://github.com/aywengo/ksr-cli), providing robust schema management capabilities for Confluent Schema Registry and compatible implementations.

## ✨ Features

### Core Operations
- **Schema Validation** - Validate Avro, Protobuf, and JSON schemas before deployment
- **Compatibility Checking** - Ensure schema changes are backward/forward compatible
- **Schema Deployment** - Deploy schemas from your repository to Schema Registry
- **Registry Comparison** - Compare schemas between different environments
- **Schema Export** - Backup and export schemas with version history
- **Schema Linting** - Apply custom validation rules to maintain schema quality

### Key Capabilities
- 🔐 **Multiple Authentication Methods** - Basic auth, API keys, and OAuth support
- 📊 **Multiple Output Formats** - JSON, table, and markdown outputs
- 🔄 **Dry Run Mode** - Test operations without making actual changes
- 🛡️ **Error Handling** - Configurable failure behavior with detailed error messages
- 📁 **Batch Operations** - Process multiple schemas in a single operation
- 🏷️ **Subject Prefixing** - Add environment prefixes to schema subjects
- 🐛 **Debug Mode** - Verbose logging for troubleshooting

## 🚀 Quick Start

```yaml
- name: Validate and Deploy Schemas
  uses: aywengo/schema-registry-action@v1.0.0
  with:
    operation: 'validate'
    schemas-path: './schemas'
```

## 📋 Supported Operations

1. **validate** - Validate schema files for correctness
2. **check-compatibility** - Check if schemas are compatible with existing versions
3. **deploy** - Deploy schemas to Schema Registry
4. **compare** - Compare schemas between registries
5. **export** - Export schemas from registry
6. **lint** - Apply custom validation rules
7. **generate-docs** - Generate documentation from schemas

## 🔧 Compatibility

- **Schema Formats**: Avro (.avsc), Protobuf (.proto), JSON Schema (.json)
- **Registries**: Confluent Schema Registry, AWS Glue Schema Registry, Apicurio Registry
- **Platforms**: Linux, macOS, Windows runners
- **GitHub Actions**: Compatible with all GitHub-hosted and self-hosted runners

## 📚 Example Workflows

### Basic Validation
```yaml
- uses: aywengo/schema-registry-action@v1.0.0
  with:
    operation: 'validate'
    schemas-path: './schemas'
    fail-on-error: 'true'
```

### Production Deployment
```yaml
- uses: aywengo/schema-registry-action@v1.0.0
  with:
    operation: 'deploy'
    registry-url: ${{ secrets.SCHEMA_REGISTRY_URL }}
    schemas-path: './schemas'
    username: ${{ secrets.REGISTRY_USERNAME }}
    password: ${{ secrets.REGISTRY_PASSWORD }}
    dry-run: 'false'
```

### Compatibility Check in PR
```yaml
- uses: aywengo/schema-registry-action@v1.0.0
  with:
    operation: 'check-compatibility'
    registry-url: ${{ secrets.PROD_REGISTRY_URL }}
    subject: 'user-events-value'
    schema-file: './schemas/user-events.avsc'
    compatibility-level: 'BACKWARD'
```

## 🙏 Acknowledgments

This action is built on top of [ksr-cli](https://github.com/aywengo/ksr-cli) v0.2.3, which provides the core Schema Registry functionality.

## 📖 Documentation

- [Full Documentation](https://github.com/aywengo/schema-registry-action/blob/main/README.md)
- [Usage Examples](https://github.com/aywengo/schema-registry-action/tree/main/examples)
- [ksr-cli Documentation](https://github.com/aywengo/ksr-cli)

## 🐛 Feedback

Please report issues and feature requests in our [issue tracker](https://github.com/aywengo/schema-registry-action/issues).

## 📄 License

This project is licensed under the MIT License.

---

**Full Changelog**: https://github.com/aywengo/schema-registry-action/commits/v1.0.0
