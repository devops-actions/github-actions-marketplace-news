---
title: AWS Pricing Analyzer
date: 2026-04-20 22:07:57 +00:00
tags:
  - nicoavila
  - GitHub Actions
draft: false
repo: https://github.com/nicoavila/aws-ai-pricing-analyzer
marketplace: https://github.com/marketplace/actions/aws-pricing-analyzer
version: 1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/nicoavila/aws-ai-pricing-analyzer** to version **1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aws-pricing-analyzer) to find the latest changes.

## Action Summary

The AWS Pricing AI Analyzer GitHub Action automates the process of estimating AWS infrastructure costs by analyzing Terraform plans in JSON format. It retrieves up-to-date pricing data from the AWS Pricing MCP Server, leverages an AI model via OpenRouter to generate a detailed cost breakdown, and provides optimization recommendations. This action helps developers and DevOps teams gain insights into cloud costs during the infrastructure planning phase, streamlining cost estimation and budgeting.

## What's Changed

First release of AWS Pricing AI Analyzer!

This GitHub Action takes your Terraform plan and estimates the cost of your AWS infrastructure by combining two modern technologies: the AWS Pricing MCP Server for live pricing data, and an LLM via OpenRouter for the analysis.

## What it does
- Reads a `.tfplan` JSON file from your pipeline
- Queries the AWS Pricing MCP Server to fetch real-time pricing data
- Uses an LLM (via OpenRouter) to generate a structured cost breakdown
- Exposes the total cost and full report as workflow outputs

## Requirements
- An OpenRouter API key
- An AWS IAM user with `pricing:*` read permissions
