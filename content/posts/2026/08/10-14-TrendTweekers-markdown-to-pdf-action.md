---
title: Markdown to PDF (MintPDF)
date: 2026-08-10 14:18:17 +00:00
tags:
  - TrendTweekers
  - GitHub Actions
draft: false
repo: https://github.com/TrendTweekers/markdown-to-pdf-action
marketplace: https://github.com/marketplace/actions/markdown-to-pdf-mintpdf
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `markdown-to-pdf-action` converts Markdown or HTML files into styled PDFs from a GitHub workflow using MintPDF, a web-based PDF generator. It simplifies the process of generating PDFs in CI by eliminating the need to install Chromium and shared libraries. The action supports various options for formatting, orientation, margins, page numbers, and header/footer text. It also provides an API key option to manage quotas and ensure secure use.
---


Version updated for **https://github.com/TrendTweekers/markdown-to-pdf-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/markdown-to-pdf-mintpdf) to find the latest changes.

## Action Summary

The GitHub Action `markdown-to-pdf-action` converts Markdown or HTML files into styled PDFs from a GitHub workflow using MintPDF, a web-based PDF generator. It simplifies the process of generating PDFs in CI by eliminating the need to install Chromium and shared libraries. The action supports various options for formatting, orientation, margins, page numbers, and header/footer text. It also provides an API key option to manage quotas and ensure secure use.

## What's Changed

First release.

Turn a Markdown file, an HTML file or a live URL into a styled PDF from a GitHub workflow, without installing Chromium on the runner.

```yaml
- uses: TrendTweekers/markdown-to-pdf-action@v1
  with:
    file: CHANGELOG.md
    output: dist/changelog.pdf
    page-numbers: true
```

- **No dependencies.** One file of plain Node against the runtime already on every runner, so there is no `node_modules` to vendor and nothing to audit but `main.js`.
- Inputs for paper size, orientation, margins, page numbers, and header and footer text.
- Outputs `file` and `size-bytes`, plus a job summary.
- Fails loudly with clear annotations on bad input rather than writing an empty file.

Markdown is rendered with a print stylesheet, so code blocks and tables are not sliced across page boundaries and table header rows repeat.

Full documentation is in the [README](https://github.com/TrendTweekers/markdown-to-pdf-action#readme).

