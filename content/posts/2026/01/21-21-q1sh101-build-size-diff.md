---
title: Build Size Diff
date: 2026-01-21 21:39:07 +00:00
tags:
  - q1sh101
  - GitHub Actions
draft: false
repo: https://github.com/q1sh101/build-size-diff
marketplace: https://github.com/marketplace/actions/build-size-diff
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/q1sh101/build-size-diff** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-size-diff) to find the latest changes.

## Action Summary

The "Build Size Diff" GitHub Action automates bundle size tracking in CI/CD workflows to help developers identify performance regressions before merging code. It generates PR comments with detailed size comparisons (total and per-file) for gzip and brotli outputs, enforces size budgets, and ranks file changes by impact. This framework-agnostic tool supports any bundler and requires minimal setup, making it ideal for monitoring and optimizing build performance.

## Release notes

## Automated Bundle Size Monitoring

Track bundle size changes in CI/CD pipelines. Catch performance regressions before merging with instant PR comments showing gzip/brotli metrics.

![Example PR comment](docs/example-pr-comment.png)

Real PR comment showing:

- Total bundle size (gzip/brotli)
- Per-file changes with clear +/- markers and arrows (🔴 ↑ / 🟢 ↓)
- Budget status (✅ / ⚠️ / ❌)
- Top file changes ranked by impact (⬆️ largest first)

---

### Features

- **PR-native feedback** - Size diff comments appear automatically in every PR
- **Multi-compression metrics** - Compare raw, gzip, and brotli sizes in one table
- **Budget enforcement** - Set limits and fail builds that exceed thresholds
- **Zero-config setup** - Auto-detects output folders for any bundler (Vite, Webpack, Next.js, Nuxt, Astro, SvelteKit, and more)
- **Privacy-first** - Uses GitHub Artifacts only - no external services or data sharing
- **Framework-agnostic** - Scans JS/CSS output from any build tool

---

### Quick Start

```yaml
- uses: q1sh101/build-size-diff@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

Push to your default branch to create a baseline. Open a PR to see the size diff.

---

### Common Use Cases

**Budget Enforcement:**

```yaml
- uses: q1sh101/build-size-diff@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    budget-max-increase-kb: 50
    fail-above-kb: 25
```

**Monorepo:**

```yaml
- uses: q1sh101/build-size-diff@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    dist-path: 'apps/web/dist'
    build-command: 'npm run build --workspace=web'
```

---

### Troubleshooting

**"No baseline found"** → Push to your default branch first to create baseline
**"Auto-detection failed"** → Set `dist-path` explicitly (e.g., `dist-path: 'build'`)

[Full documentation](https://github.com/q1sh101/build-size-diff#readme) · [All configuration options](https://github.com/q1sh101/build-size-diff#all-options)

---

### Technical Details

- TypeScript with strict mode
- Bundler-agnostic (scans JS/CSS output)
- Parallel compression for faster scans
- Security: path traversal + zip bomb protection
- MIT licensed

---

Built for developers who care about performance.

**Built by [Giorgi Kishmareia](https://github.com/q1sh101)** · [Theatom.me](https://theatom.me)

