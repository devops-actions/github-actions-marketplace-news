---
title: md2pdf-th
date: 2026-04-30 21:53:22 +00:00
tags:
  - teeprakorn1
  - GitHub Actions
draft: false
repo: https://github.com/teeprakorn1/md2pdf-th
marketplace: https://github.com/marketplace/actions/md2pdf-th
version: v4.0.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/teeprakorn1/md2pdf-th** to version **v4.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/md2pdf-th) to find the latest changes.

## Action Summary

`md2pdf-th` is a tool and library for converting Markdown files into PDF documents with advanced features such as Thai language support, dark theme, table of contents generation, customizable templates, and batch processing. It automates tasks like merging multiple Markdown files, adding cover pages, headers, footers, and applying watermarks while providing flexibility for custom styling and formatting. Additionally, it supports live preview, a library API, and integration with CI pipelines via a GitHub Action.

## What's Changed

## v4.0.1

### New Features
- Template system (--template resume|report|invoice)
- Auto-detect mixed Thai/English language
- --watermark diagonal text
- --output-filename pattern ({name}, {date}, {timestamp})
- Frontmatter options (theme, toc, cover, format, template, watermark)
- Dockerfile with Chromium + Thai fonts
- GitHub Action for CI pipelines
- Web UI (drag and drop .md to PDF)
- Friendly error messages

### Fixes
- Auth token enforced on web server
- Async file I/O in core engine
- Rate limit memory leak fixed
- marked import deduplicated

### GitHub Action Usage
```yaml
- uses: teeprakorn1/md2pdf-th@v4
  with:
    markdown-file: report.md
    theme: dark
    toc: true
```

### Docker Usage
```bash
docker run --rm -v $(pwd):/data md2pdf-th /data/doc.md
```
