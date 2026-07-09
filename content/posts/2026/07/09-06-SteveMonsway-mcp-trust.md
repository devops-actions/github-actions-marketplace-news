---
title: MCP Trust Scan
date: 2026-07-09 06:52:26 +00:00
tags:
  - SteveMonsway
  - GitHub Actions
draft: false
repo: https://github.com/SteveMonsway/mcp-trust
marketplace: https://github.com/marketplace/actions/mcp-trust-scan
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SteveMonsway/mcp-trust** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-trust-scan) to find the latest changes.

## What's Changed

One-line MCP-server preflight scan in CI — the root composite Action.

\`\`\`yaml
- uses: actions/checkout@v4
- uses: SteveMonsway/mcp-trust@v1
  with: { fail-on: high, upload-sarif: true, comment-pr: true }
\`\`\`

Runs the published [`@mcp-trust/cli`](https://www.npmjs.com/package/@mcp-trust/cli) via \`npx\` (self-contained, no build). Uploads SARIF to Code Scanning, posts a PR comment, and fails the job above a severity threshold.

Inputs: \`target\`, \`fail-on\`, \`output\`, \`output-dir\`, \`upload-sarif\`, \`comment-pr\`, \`no-semgrep\`. Outputs: \`decision\`, \`risk\`, \`score\`, \`sarif-file\`, \`exceeded\`.

Live demo: [SteveMonsway/mcp-trust-demo](https://github.com/SteveMonsway/mcp-trust-demo).
