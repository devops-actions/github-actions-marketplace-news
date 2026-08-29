---
title: Full-site SEO Audit
date: 2026-08-29 22:01:45 +00:00
tags:
  - nurkamol
  - GitHub Actions
draft: false
repo: https://github.com/nurkamol/seo-audit
marketplace: https://github.com/marketplace/actions/full-site-seo-audit
version: v1.38.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `seo-audit` is designed to crawl an entire website's sitemap and check all pages for SEO, metadata, and structured data issues that single-page graders often overlook. It automates the process of identifying problems such as duplicate content, long page titles, and missing language switcher links on translated pages. The action can be run in CI environments or directly from the command line with minimal setup, ensuring comprehensive SEO audits across a site's entire structure without requiring manual checks.
---


Version updated for **https://github.com/nurkamol/seo-audit** to version **v1.38.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-site-seo-audit) to find the latest changes.

## Action Summary

The GitHub Action `seo-audit` is designed to crawl an entire website's sitemap and check all pages for SEO, metadata, and structured data issues that single-page graders often overlook. It automates the process of identifying problems such as duplicate content, long page titles, and missing language switcher links on translated pages. The action can be run in CI environments or directly from the command line with minimal setup, ensuring comprehensive SEO audits across a site's entire structure without requiring manual checks.

## What's Changed

> ### Updating from 1.38.0 or earlier on macOS needs one command
>
> This release fixes an updater that could not install its own fix. On 1.38.0
> and earlier, **Update** offers this version and then does nothing: the banner
> reads GitHub's releases while `brew upgrade` reads Homebrew's own copy of the
> tap, which is refreshed at most once a day, so for a while after any release
> the two disagree and Homebrew answers *"the latest version is already
> installed"*.
>
> Once, in a terminal:
>
> ```bash
> brew update && brew upgrade --cask seo-audit
> ```
>
> From 1.38.1 onward the button does both steps itself, and this is the last
> time it is needed.


### Fixed
- **Update said a new version had appeared and then did nothing.** The banner
  reads GitHub's releases; `brew upgrade` reads Homebrew's own clone of the tap,
  and that clone is refreshed by an auto-update which runs at most once a day.
  So for up to twenty-four hours after a release the two disagree: the window
  offers 1.38.0, Homebrew answers *"Not upgrading seo-audit, the latest version
  is already installed"*, and the process exits 0 — so nothing reported a
  failure and nothing moved.

  `brew update` now runs first, as a step rather than a hope, and the command
  shown on screen says both so that running it by hand does the same thing.
  Found by pressing Update on a real 1.36.0 with 1.38.0 published, watching it
  do nothing, and going after the reason.

- **Linux was told to run a command that could not work.** An apt-installed
  copy was offered `sudo apt-get install --only-upgrade seo-audit`, and no apt
  repository anywhere carries this package — the `.deb` is downloaded from a
  release and installed by hand. apt would answer that it cannot locate it. The
  same failure as above in a different package manager: an instruction that
  reads like an answer and is not one. That copy now goes to the release page,
  where the next `.deb` actually is.

  With nothing left that could produce it, the "Show me" path and its dialog are
  gone. An option nothing can reach is an option that does not exist.

- **The winget path could never have worked, token or no token.** Detection ran
  `winget list --id Nurkamol.SeoAudit --exact` and then asked whether the output
  contained `seo-audit`. It never does: winget prints an Id column reading
  `Nurkamol.SeoAudit`, the Name is `SEO Audit`, and the lowercase hyphenated
  spelling appears nowhere. So the check was false for every winget install
  there could ever be — and would have stayed false after a manifest shipped,
  with the branch dead for a reason nobody was looking at any more. It matches
  on the identifier now, case-insensitively, which is what winget is.

  The identifier is one constant rather than three copies, and the guard that
  keeps it in step with the workflow reads that constant and also fails if
  anybody writes it out by hand again.

- **The bundle declared no publisher, licence or description**, all of which a
  winget manifest requires and all of which Windows shows in Add/Remove
  Programs. Set, so the first submission has something true to carry.


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
shasum -a 256 seo-audit-1.38.1-macos.zip
# f1ce47dace1edecef143143f27e50f94dcd068b621e86affdc0ed39d4457eeb1
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
1328e19d7b4e3de68706ac978376b6b5f02a03182c2434e60a809b2671bdea17  SEO.Audit_1.38.1_amd64.AppImage
c147fe6865200efeff9454df5c792a4bc087f0a201ebc7d807a4309323ada651  SEO.Audit_1.38.1_amd64.deb
30fe3d86dee9b056638fa986387e9a1a0a20224a90764366a79aebde4c67d1af  SEO.Audit_1.38.1_x64-setup.exe
f1ce47dace1edecef143143f27e50f94dcd068b621e86affdc0ed39d4457eeb1  seo-audit-1.38.1-macos.zip
```

The macOS line appears twice in these notes on purpose: once above, computed
when the app was built, and once here, computed from what is actually attached.
They should agree.

