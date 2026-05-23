---
title: aislop Quality Gate
date: 2026-05-23 06:14:00 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-quality-gate
version: v0.9.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.9.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-quality-gate) to find the latest changes.

## Action Summary

**aislop** is a GitHub Action and CLI tool designed to enforce engineering standards and act as a quality gate for AI-generated code across multiple programming languages. It automates the detection and remediation of issues commonly introduced by AI, such as dead code, oversized functions, unused imports, and improper error handling, providing a 0–100 quality score for projects. Key capabilities include automated code scanning, safe and aggressive auto-fixing of issues, integration with AI coding agents for unresolved problems, and CI support for maintaining code quality.

## What's Changed

Patch release focused on rule precision. Tightens detection across the ai-slop, security, lint, and source-file engines so common language and ecosystem conventions are no longer flagged as slop. No new rules — existing rules now discriminate genuine documentation, intentional patterns, and build-time injections from the AI-written patterns they were designed to catch.

## Install

```bash
npx aislop@0.9.3 scan .
# or globally:
npm i -g aislop@0.9.3
```

## Fixed

- **`ai-slop/narrative-comment` and `ai-slop/trivial-comment` no longer fire on language-idiomatic documentation (#121).** Recognizes JSDoc/Javadoc/PHPDoc descriptions above declarations, Ruby YARD/RDoc blocks (`@param`, `@return`, `:call-seq:`, `##` markers), Go struct-field docs (comment-word matches field name), and `// summary` / `# summary` lines directly above a Ruby/Java/PHP declaration. Extends WHY-marker vocabulary (`to avoid`, `to ensure`, `in order to`, `for example`, `e.g.`, `useful for`, `intended to`, `by design`, …). Replaces the length-only catch-all with explicit AI-narration slop signals (`^This function/method/class`, `^It does/handles/...`, `^First/Then/Finally it`) — the canonical AI-slop patterns still fire.
- **`ai-slop/hallucinated-import` understands Python project layouts and PEP 484 re-exports (#121).** Discovers local Python packages by scanning `<root>/`, `src/`, `lib/` for directories containing `__init__.py` — fixes large-scale false positives where internal packages (e.g. `_pytest`) were treated as missing dependencies. PEP 484 `from X import Y as Y` is no longer flagged as unused.
- **`security/eval` lookbehind skips method-call forms (#121).** `(?<![\w.>:\\])` prevents matches on `.eval(`, `->eval(`, `::eval(`, and `\eval(` (Predis Lua scripts, `binding.eval`, custom-class methods). Top-level `eval()` still fires.
- **`ai-slop/thin-wrapper` patterns ext-gated to JS/Python (#121).** The JS function-shape regex was accidentally matching PHP `public function valid(): bool { return isset(...); }` and Java methods. Patterns now apply only to `.ts/.tsx/.js/.jsx/.mjs/.cjs` (JS) and `.py` (Python).
- **`ai-slop/swallowed-exception` allows intentional-ignore convention (#121).** Catch parameters named `tolerated`, `ignored`, `expected`, `unused`, `_`, `_e`, `_err`, `_ex`, `_t` are recognized as documented intent. Same for Ruby `rescue ... => ignored`.
- **`ai-slop/rust-non-test-unwrap` skips doc-comment example blocks (#121).** Tracks `/*! ... */` and `/** ... */` ranges so `.unwrap()` inside crate-level doc examples is no longer flagged. Singular `xxx_test.rs` filenames recognized as test files alongside `xxx_tests.rs`.
- **`security/dangerously-set-innerhtml` respects ignore directives and JSON-LD (#121).** Two-line lookback for `aislop-ignore` / `biome-ignore` / `eslint-disable` comments; skips `dangerouslySetInnerHTML` paired with `type="application/ld+json"` or `__html: JSON.stringify(...)`.
- **`code-quality/duplicate-block` no longer flags repeated import groups (#121).** Block hashing skips contiguous `import`/`from` lines.

## Improved

- **Oxlint registers conventional bundler-injected globals (#121).** `__DEV__`, `__TEST__`, `__BROWSER__`, `__NODE__`, `__GLOBAL__`, `__SSR__`, `__ESM_BROWSER__`, `__ESM_BUNDLER__`, `__VERSION__`, `__COMMIT__`, `__BUILD__` are `readonly` on every project — clears `no-undef` noise on Rollup/Vite/Webpack `define` flags (e.g. Vue source).
- **Oxlint discovers ambient globals from project `.d.ts` files (#121).** Top-level `declare const|let|var|function|class` declarations registered as globals. Bun (`@types/bun` / `bun-types`) adds `Bun`; SST projects (`sst.config.ts`) register `$app`, `$config`, `$dev`, `$interpolate`, `aws`, `cloudflare`, `sst`, `pulumi`, and similar.
- **Oxlint context-aware filters (#121).** Suppress diagnostics that are correct for general JS but wrong in framework contexts (Astro `<script>` IIFEs, Next.js metadata exports).
- **`scan` filters minified and bundled JS (#121).** `*.min.js`, `*.bundle.js`, `*.min.css` excluded alongside the existing build-cache patterns.
- **`scan` honors Biome `files.includes` exclusions (#121).** Negated patterns from `biome.json` merged into the source-file filter.
- **`scan` ignores `.pnpm-store/` (#121).** Joins the existing `node_modules`, `dist`, `build`, etc. prune list.

## Pattern fixes

- `GO_DECL_START` matches grouped declarations (`const (`, `var (`, `type (`).
- `PHP_DECL_START` accepts whitespace between visibility modifiers and `function`.

## Tests

32 new regression tests covering the new exemptions and slop signals. Total suite: 835/835 passing.

See [`CHANGELOG.md`](https://github.com/scanaislop/aislop/blob/main/CHANGELOG.md#093-2026-05-22) for the full entry.

**Full Changelog**: https://github.com/scanaislop/aislop/compare/v0.9.2...v0.9.3

## What's Changed
* fix(security): skip keyword-prefixed secret matches inside string-literal prose by @heavykenny in https://github.com/scanaislop/aislop/pull/120
* fix(rules): reduce false positives on language-idiomatic patterns by @heavykenny in https://github.com/scanaislop/aislop/pull/121
* chore: release v0.9.3 by @heavykenny in https://github.com/scanaislop/aislop/pull/123
* release: promote develop → main (v0.9.3) by @heavykenny in https://github.com/scanaislop/aislop/pull/124


**Full Changelog**: https://github.com/scanaislop/aislop/compare/v0.9.2...v0.9.3
