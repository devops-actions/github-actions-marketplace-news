---
title: MCP Security Linter
date: 2025-11-29 05:29:33 +00:00
tags:
  - fonCki
  - GitHub Actions
draft: false
repo: https://github.com/fonCki/mcp-security-linter
marketplace: https://github.com/marketplace/actions/mcp-security-linter
version: v1.4.1
dependentsNumber: "?"
---


Version updated for **https://github.com/fonCki/mcp-security-linter** to version **v1.4.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-security-linter) to find the latest changes.

## Release notes

## What's New

This patch release enhances the command execution analyzer with MCP-specific taint tracking, significantly improving detection of command injection vulnerabilities in MCP servers.

### New Features

- **MCP Tool Argument Tracking**: Detects when `args.command`, `params.query`, and destructured MCP parameters flow to shell execution
- **MCP Handler Detection**: Recognizes `setRequestHandler`, `fallbackRequestHandler` patterns and marks handler parameters as tainted
- **Promisified Exec Support**: Tracks `const execPromise = promisify(exec)` aliases
- **Environment Pollution Detection**: New `command-exec-env` rule flags `env: process.env` in exec options
- **execa Library Support**: Detects `execa`, `execaSync`, `$` (zx) as execution sinks
- **Shebang Support**: Files starting with `#!/usr/bin/env node` now parse correctly

### Validation Results

Re-scanning 89 MCP server repositories:

| Metric | v1.4.0 | v1.4.1 | Change |
|--------|--------|--------|--------|
| Findings | 8 | 21 | +162% |
| Vulnerable Repos | 1 | 5 | +400% |

### Example Detection

```javascript
// Previously missed, now detected:
server.fallbackRequestHandler = async (request) => {
  const { arguments: args } = params;
  const { command } = args;
  await execPromise(command);  // DETECTED: MCP tool argument flows to exec
};
```

### Tests

- 45 tests passing
- 17 new MCP-specific tests added

### Install

\`\`\`bash
npm install -g mcp-security-linter@1.4.1
\`\`\`
