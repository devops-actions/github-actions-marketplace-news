---
title: SVG Terminal Generator
date: 2026-05-27 22:46:53 +00:00
tags:
  - williamzujkowski
  - GitHub Actions
draft: false
repo: https://github.com/williamzujkowski/svg-terminal
marketplace: https://github.com/marketplace/actions/svg-terminal-generator
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/williamzujkowski/svg-terminal** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svg-terminal-generator) to find the latest changes.

## Action Summary

The `svg-terminal` GitHub Action generates animated, self-contained SVG terminal displays based on a declarative YAML configuration. It automates the creation of visually engaging terminal-like interfaces with customizable themes, animations, and dynamic content blocks, suitable for use in GitHub READMEs or similar contexts. Key features include support for 47 prebuilt blocks, 12 themes, offline caching, and compliance with GitHub's sandbox restrictions.

## What's Changed

First stable release. svg-terminal is now [published on npm](https://www.npmjs.com/package/svg-terminal) and will be listed on the **GitHub Actions Marketplace**.

The v0.x line is feature-complete: 47 blocks, 12 themes, full SVG-sandbox compatibility, defense-in-depth XSS / DoS / shell-injection guards, CodeQL `security-extended` clean.

## What's stable in v1

- **Library** ([\`svg-terminal\` on npm](https://www.npmjs.com/package/svg-terminal)) — \`generate()\`, \`generateStatic()\`, \`loadConfig()\`, \`mergeConfig()\`, \`registerBlock()\`, \`registerTheme()\`, \`inspectCache()\`, plus typed re-exports of every block + theme. Strict zod schemas at every config boundary. ESM-only, Node 22+.
- **CLI** — \`svg-terminal generate / init / themes / blocks [<name>] / cache check\`, with \`--watch\`, \`--static\`, \`--minify\`, \`--strict\`, \`--no-cache | --refresh-cache | --frozen-cache\`, \`--timings\`, \`--explain\`, \`--force\`.
- **GitHub Action** (\`williamzujkowski/svg-terminal@v1\`) — inputs: \`config\`, \`output\`, \`cache-mode\`, \`static\`, \`minify\`, \`commit\`, \`commit-message\`. Outputs: \`svg-path\`, \`svg-bytes\`, \`svg-sha256\`, \`svg-changed\`. SHA-pinned dependencies, env-passed inputs, least-privilege \`permissions\`.

## Round-4 final polish (since v0.18.3)

- **\`svg-changed\` semantic corrected** — \`false\` on first run (no prior SVG) so workflows can gate commits via \`if: outputs.svg-changed == 'true'\` without firing on bootstrap.
- **\`git push\` is explicit-refspec** — bare \`git push\` failed on detached-HEAD checkouts that \`pull_request\` triggers produce. Added clear error message when \`GITHUB_REF_NAME\` is unset (i.e. \`commit: true\` wired to \`pull_request\` by mistake). Commit step skips when \`svg-changed == 'false'\`.
- **Library \`console.log\` removed from \`resolveTheme\`** — \`theme: random\` no longer pollutes stdout for programmatic library consumers (gated behind \`SVG_TERMINAL_VERBOSE=1\` for debug).
- **CLAUDE.md test count** updated to 398.
- **Docs stale-claim cleanup** — frame-cycle no longer described as SMIL holdout (migrated to CSS in v0.17).

## Floating \`v1\` tag auto-mover

New \`.github/workflows/release.yml\` force-moves the \`v<major>\` floating tag on every \`vN.M.P\` tag push. Marketplace consumers pinning \`@v1\` get patches without action on their part.

## Tests

- 398 passing. Lint + typecheck clean. CodeQL \`security-extended\` clean. Demos byte-stable (TZ=UTC pinned).

Full changelog: [CHANGELOG.md](https://github.com/williamzujkowski/svg-terminal/blob/v1.0.0/CHANGELOG.md#v100--2026-05-27--github-marketplace-launch)
