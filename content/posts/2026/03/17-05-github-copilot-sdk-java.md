---
title: Setup Copilot
date: 2026-03-17 05:52:52 +00:00
tags:
  - github
  - GitHub Actions
draft: false
repo: https://github.com/github/copilot-sdk-java
marketplace: https://github.com/github/copilot-sdk-java
version: v0.1.32-java.0
dependentsNumber: "?"
actionType: composite
---


Version updated for **https://github.com/github/copilot-sdk-java** to version **v0.1.32-java.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **composite** action.

Go to the [GitHub Marketplace](https://github.com/github/copilot-sdk-java) to find the latest changes.

## Action Summary

The "Copilot SDK for Java" provides a Java-based software development kit (SDK) for programmatically interfacing with the GitHub Copilot CLI, enabling developers to create AI-powered applications and workflows. It simplifies the integration of GitHub Copilot's capabilities into Java projects, automating tasks such as generating code suggestions and managing AI-driven interactions. This SDK is especially useful for building agentic workflows and leveraging AI assistance directly within Java applications.

## Release notes

# Installation

⚠️ **Disclaimer:** This is the official Java SDK for GitHub Copilot. This repository treats the official .NET and nodejs SDKs for GitHub Copilot as reference implementations. These SDKS are all officially supported as GitHub open source projects. The Java implementation follows the backward compatibility guarantees offered by the reference implementations. As such this implementation may introduce breaking changes, according to the policy declared by the reference implementations. Use at your own risk.

⚠️ **Artifact versioning plan:** Releases of this implementation track releases of the reference implementation. For each release of the reference implementation, there may follow a corresponding relase of this implementation with the same number as the reference implementation. Release identifiers of the reference implementation are in the form `vMaj.Min.Micro`. For example v0.1.32. The corresponding maven version for the release will be `Maj.Min.Micro-java.N`, where `Maj`, `Min` and `Micro` are the corresponding numbers for the reference impementation release, and `N` is a monotonically increasing sequence number starting with 0 for each release. See the corrseponding architectural decision record for more information in the `docs/adr` directory of the source code.
  
📦 [View on Maven Central](https://central.sonatype.com/artifact/com.github/copilot-sdk-java/0.1.32-java.0)

📖 [Documentation](https://github.github.io/copilot-sdk-java/0.1.32-java.0/) · [Javadoc](https://github.github.io/copilot-sdk-java/0.1.32-java.0/apidocs/index.html)

## Maven
```xml
<dependency>
    <groupId>com.github</groupId>
    <artifactId>copilot-sdk-java</artifactId>
    <version>0.1.32-java.0</version>
</dependency>
```

## Gradle (Kotlin DSL)
```kotlin
implementation("com.github:copilot-sdk-java:0.1.32-java.0")
```

## Gradle (Groovy DSL)
```groovy
implementation 'com.github:copilot-sdk-java:0.1.32-java.0'
```

<!-- Release notes generated using configuration in .github/release.yml at v0.1.32-java.0 -->

## What's Changed
### 📦 Other Changes
* Rebrand copilot-sdk-java from community SDK to official GitHub SDK by @edburns in https://github.com/github/copilot-sdk-java/pull/8
* Add link to reference implementations. by @edburns in https://github.com/github/copilot-sdk-java/pull/9
* Adopt versioning scheme from adr-002-maven-version-and-reference-implementation-tracking.md by @edburns in https://github.com/github/copilot-sdk-java/pull/10
* On branch edburns/dd-2794379-cosmetic-post-public-fixes Support adr-002 version number scheme. by @edburns in https://github.com/github/copilot-sdk-java/pull/11
* On branch edburns/dd-2794379-cosmetic-post-public-fixes Fix ARTIFACT_ID and CHANGELOG unreleased. by @edburns in https://github.com/github/copilot-sdk-java/pull/12

## New Contributors
* @edburns made their first contribution in https://github.com/github/copilot-sdk-java/pull/8

**Full Changelog**: https://github.com/github/copilot-sdk-java/commits/v0.1.32-java.0
