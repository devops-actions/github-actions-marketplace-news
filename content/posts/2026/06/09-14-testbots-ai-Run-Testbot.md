---
title: Run TestBot
date: 2026-06-09 14:46:21 +00:00
tags:
  - testbots-ai
  - GitHub Actions
draft: false
repo: https://github.com/testbots-ai/Run-Testbot
marketplace: https://github.com/marketplace/actions/run-testbot
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/testbots-ai/Run-Testbot** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-testbot) to find the latest changes.

## What's Changed


Initial Public Release

We are excited to announce the first release of the Test Bot GitHub Action.

This action enables teams to seamlessly execute Test Bots directly within GitHub Actions workflows, making it easy to integrate automated testing into CI/CD pipelines.

✨ Key Features
Execute Test Bots from GitHub Actions
Secure JWT-based authentication
Configurable test execution settings
Automatic execution status polling
Configurable timeout controls
Download and store execution results
Workflow artifact support for test reports
Environment-specific configuration support
Compatible with CI/CD and manual workflow executions

📥 Inputs
jwt_token
test_bot_configuration
poll_interval_seconds
timeout_minutes

📤 Outputs
execution_id
status
results_path

🔒 Security
JWT authentication support
Secure integration with GitHub Secrets
No credentials stored in source control
Supports environment-specific secret management

📊 Typical Workflow
Authenticate using JWT
Start Test Bot execution
Monitor execution status
Wait for completion
Download execution results
Publish results as workflow artifacts

📚 Documentation
Complete setup instructions, configuration examples, workflow samples, troubleshooting guidance, and security recommendations are available in the project README.

🎯 Use Cases
CI/CD test automation
Regression testing
Scheduled test execution
Environment validation
Quality gate enforcement before deployment

📝 Notes
This is the initial Marketplace release (v1.0.0). Feedback, feature requests, and contributions are welcome through GitHub Issues.
Thank you for using Test Bots with GitHub Actions.
