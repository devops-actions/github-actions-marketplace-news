---
title: Full-site SEO Audit
date: 2026-08-29 14:08:16 +00:00
tags:
  - nurkamol
  - GitHub Actions
draft: false
repo: https://github.com/nurkamol/seo-audit
marketplace: https://github.com/marketplace/actions/full-site-seo-audit
version: v1.37.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `nurkamol/seo-audit` automates the SEO audit of a website by crawling its sitemap and checking every page for metadata, structured data, and other SEO issues that single-page graders might miss. It provides zero dependencies, is one command to use, and works in CI environments.
---


Version updated for **https://github.com/nurkamol/seo-audit** to version **v1.37.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-site-seo-audit) to find the latest changes.

## Action Summary

The GitHub Action `nurkamol/seo-audit` automates the SEO audit of a website by crawling its sitemap and checking every page for metadata, structured data, and other SEO issues that single-page graders might miss. It provides zero dependencies, is one command to use, and works in CI environments.

## What's Changed


### Added
- **The Raycast extension can ask Search Console.** The engine has had
  `--search-console` since 1.21.0 and the extension never exposed it — a
  launcher showing every finding except the one number that is not a proxy for
  attention. A checkbox switches it on and a field names the property, the same
  shape the flag has: bare means the site being crawled, a value names a
  property.

  It does not ask for credentials. Getting them opens a browser and writes a
  file, which is a terminal errand rather than a control in a window — the same
  answer the macOS app gives. Without them the engine reports
  `search-console-unconfigured` and names what is missing, so this fails in the
  report rather than going quiet.

  Checked in both directions, because both failures are silent: a preference
  the code reads and the manifest never declares is a control nobody can reach,
  and one declared but never read is a control that does nothing.

- **`--reports` lists the runs kept on this machine**, and `--reports
  2026-08-01` lists what was kept since. The library was reachable from the
  macOS window and the served list and from nowhere on the command line, which
  is the one place the rest of this tool lives. `/reports` gains the same filter
  as a date control, and both call one function so the browser and the terminal
  cannot disagree about what "since" means.

  That function is not in `src/library.mjs`. That module opens files, so it
  imports `node:fs`, and the Worker showing the same list has no filesystem and
  would not have survived the import — `src/kept.mjs` is the pure half both
  sides need.

  A date it cannot read is refused rather than ignored, because listing every
  run when somebody asked for one week looks like an answer. A date that hides
  everything says how many it hid, since an empty list and an empty library read
  identically and only one of them means "widen the date".

- **A check that fires on every page is one thing to change, not one per
  section.** Grouping by URL prefix is right when a check hits part of a site —
  that is the Shopify `/products/` insight this project's grouping was built on
  — and wrong when it hits all of it. gohugo.io produced **200 things to change
  and 104 of them were four checks that each applied to all 150 pages**;
  `canonical-missing` alone arrived as twenty-six separate pieces of work, one
  per prefix, making the reader do the arithmetic that tells them it was
  site-wide. The same report is now 100 things to change, and those four read
  `every page crawled (150), 1,695 links in`.

  Exactly every page, never nearly. On 149 of 150 "every page" is a false
  sentence, and a report is only worth reading because its sentences are true.
  It costs no extra requests — the grouping was already computed.

### Fixed
- **"1 image(s) without width/height"** was the most repeated finding title in a
  real report and read like a form nobody finished. Fifty of these across seven
  files now pick the right word. Zero is plural, which is the case that gets
  written wrong by reaching for `n > 1`.

- **"1 links in"** — the same defect one line further on, hardcoded rather than
  spelled `(s)`, so no search for the first would have found it. It had been
  shipping for as long as reach has been reported, and no fixture ever had
  exactly one inbound link. Found by running the tool against a real site and
  reading the output, which is the only way anything here has ever been found.

- **A PDF's section headings could be left alone at the foot of a page**, with
  the findings they introduce overleaf. A cause block listing every affected
  page can be most of a page tall, so a heading placed just before one had
  nowhere to go — the packer was greedy and had no keep-with-next rule. Three
  of the 53 pages in a gohugo.io export ended that way: `Content 79`,
  `Indexability 26`, `Images 52`.

  A heading now travels with the block it introduces. `PDF.paginate` came out
  of `write` to make it testable without a renderer, because the bug is
  arithmetic rather than drawing — including the cases that must *not* move a
  heading, and the one where a page holds nothing but headings and must not be
  emitted blank.

  It does not make the document shorter, and the page count is unchanged at 53.
  The white space above a page break comes from cause blocks being atomic and
  nearly page-tall; only splitting them would reclaim it, and a finding split
  across a page break is worse than a short page.


---

### Installing on macOS

```bash
brew tap nurkamol/seo-audit https://github.com/nurkamol/seo-audit
brew trust nurkamol/seo-audit
brew install --cask seo-audit
```

Homebrew verifies the download against the checksum below and clears the
quarantine flag for you, so the app opens the first time.

**Downloading the zip instead?** macOS may say *"SEO Audit is damaged and
can't be opened."* It is not damaged. The app is ad-hoc signed rather than
notarised — notarising needs a paid Apple Developer account this project
does not have — and macOS refuses quarantined apps without a notarisation
ticket. Check what you downloaded first:

```bash
shasum -a 256 seo-audit-1.37.0-macos.zip
# a350802df8f5f4bdf808909aab22a88d5313d1b3ffd50c543f41e8d8545fc2bb
```

Then, once it matches, clear the flag — no `sudo` needed:

```bash
xattr -dr com.apple.quarantine "/Applications/SEO Audit.app"
```

That is what right-click → **Open** does in the Finder, without the dialog.
Apple Silicon, macOS Tahoe or newer.

### Windows and Linux

The `setup.exe`, `.deb` and `.AppImage` below are attached by a separate
job and may appear a few minutes after this release does.

The Windows installer is unsigned, so SmartScreen shows *"Windows protected
your PC"* — **More info → Run anyway**. Same reason as macOS: a code-signing
certificate is a paid, per-year thing this project does not have. The
`.AppImage` needs `chmod +x` before it will run.

Check any of them first. A `SHA256SUMS.txt` covering every file here is
attached alongside them, and the same checksums are listed at the end of
these notes:

```bash
shasum -a 256 --ignore-missing -c SHA256SUMS.txt
```

### Checksums

Verify a download before you wave a warning away. With `SHA256SUMS.txt`
saved beside the file, in the same folder:

```bash
shasum -a 256 --ignore-missing -c SHA256SUMS.txt
```

```
8e4e289a09f72481a476afcd194af08395b22966f801510db8a75fd5f70e3fd2  SEO.Audit_1.37.0_amd64.AppImage
649b24e6c2434637061bc6e103f4c85c8f067da3bdad33f94baa29f12cbb1bcd  SEO.Audit_1.37.0_amd64.deb
a8b061f31ffd6f39a4492de1ab6d4a0dcbd882491eb44044a50836ab8691a8e4  SEO.Audit_1.37.0_x64-setup.exe
a350802df8f5f4bdf808909aab22a88d5313d1b3ffd50c543f41e8d8545fc2bb  seo-audit-1.37.0-macos.zip
```

The macOS line appears twice in these notes on purpose: once above, computed
when the app was built, and once here, computed from what is actually attached.
They should agree.

