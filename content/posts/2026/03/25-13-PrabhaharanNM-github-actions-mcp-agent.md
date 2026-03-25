---
title: MCP Agent AI-Powered Build Failure Analysis
date: 2026-03-25 13:43:12 +00:00
tags:
  - PrabhaharanNM
  - GitHub Actions
draft: false
repo: https://github.com/PrabhaharanNM/github-actions-mcp-agent
marketplace: https://github.com/marketplace/actions/mcp-agent-ai-powered-build-failure-analysis
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/PrabhaharanNM/github-actions-mcp-agent** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-agent-ai-powered-build-failure-analysis) to find the latest changes.

## Action Summary

This GitHub Action automates the analysis of workflow failures using AI-powered insights, combining data from GitHub, Kubernetes, and JFrog Artifactory to identify root causes and assign responsibility. It streamlines incident resolution by providing structured failure analysis, creating issues or tickets, posting comments, and generating detailed reports. Its key capabilities include parallel data gathering, cross-correlation of failure signals, and leveraging AI for actionable recommendations.

## Release notes

## MCP Agent: AI-Powered Build Failure Analysis

Analyze GitHub Actions workflow failures using Claude AI with parallel MCP agents.

### Features
- AI Root Cause Analysis powered by Claude (Anthropic Direct API or AWS Bedrock)
- Multi-agent investigation: GitHub, Docker, Kubernetes, JFrog, Nexus, BitBucket
- Auto-creates GitHub Issues with RCA details
- PR comments with failure analysis
- Jira ticket creation (optional)
- Email notifications with HTML reports (optional)
- Free tier: RCA + email
- Premium tier: Dashboard + MTTR tracking

### Quick Start
```yaml
- uses: PrabhaharanNM/github-actions-mcp-agent@v1
  if: failure()
  with:
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
    github-token: ${{ secrets.GITHUB_TOKEN }}
```
