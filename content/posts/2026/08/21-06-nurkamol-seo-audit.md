---
title: Full-site SEO Audit
date: 2026-08-21 06:43:56 +00:00
tags:
  - nurkamol
  - GitHub Actions
draft: false
repo: https://github.com/nurkamol/seo-audit
marketplace: https://github.com/marketplace/actions/full-site-seo-audit
version: v1.13.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **The seo-audit GitHub Action automates the SEO audit of a website by crawling its sitemap and checking all pages for technical issues. It helps identify SEO, metadata, and structured-data problems that free-page graders overlook. The tool is zero-dependency and works in CI pipelines, providing a terminal output, Markdown report, HTML file, and JSON data.**
---


Version updated for **https://github.com/nurkamol/seo-audit** to version **v1.13.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-site-seo-audit) to find the latest changes.

## Action Summary

**The seo-audit GitHub Action automates the SEO audit of a website by crawling its sitemap and checking all pages for technical issues. It helps identify SEO, metadata, and structured-data problems that free-page graders overlook. The tool is zero-dependency and works in CI pipelines, providing a terminal output, Markdown report, HTML file, and JSON data.**

## What's Changed

### Added
- **`link-no-text` and `anchor-generic`** — the words attached to a link, which
  `parse.mjs` has been discarding since the first commit. They are the one
  description of a page that does not come from the page itself, which is why
  they were the last thing on the list a `fetch` loop could honestly read.

  A link's name is resolved the way a browser resolves an accessible name — the
  text inside, then an image's `alt`, then `aria-label`, then the anchor's own
  `title`, then an `<svg><title>` — because each of those is a real way to label
  a link and calling any of them unlabelled would be wrong. `aria-labelledby` is
  believed rather than followed. A framework binding (`:alt`, `[ariaLabel]`,
  `[attr.aria-label]`) counts as a label the author supplied: that is the trap
  that once made `img-alt` report twenty-four of allbirds.com's images as
  missing alt.

  **`link-no-text`** is a destination that *nothing* names. Three real sites
  taught this its final shape, each by producing a false positive first:

  - css-tricks.com's homepage has 33 links with no text at all. Every one is a
    heading-anchor icon pointing at a `#fragment`, `aria-hidden`, decorative.
    Fragment links were already excluded, so the check was right by
    construction — but it is worth knowing that this is what the pattern
    usually is.
  - elementor.com's blog index has 23 thumbnails with an emptied `alt` beside
    the headline that names the same article. Reporting those would be a true
    observation with a false conclusion attached, so a destination is only
    unreadable when *no* link anywhere names it.
  - wordpress.org/education names Campus Connect three times at
    `/campus-connect/` and once, wordlessly, at `/campus-connect`. Matching
    href strings called a page with three good links unreadable; destinations
    are now keyed without the trailing slash.

  What survives all three is genuine: elementor.com/trust links five ISO and
  SOC certificate PDFs through badge images with no `alt`, so Google is handed
  five documents it can index and nothing about any of them, and a screen
  reader reads out the filename. Grouped by destination rather than per page,
  because these live in headers and footers and the same icon on two hundred
  pages is one thing to fix.

  **`anchor-generic`** is a page whose inbound links *all* say "read more".
  Reporting each such link would fire on every blog index ever built — a card
  under a headline has to say something. The finding is the page that has
  nothing else: no link anywhere on the site tells Google what it is about.
  `info`, and the word list is deliberately short and unarguable. "Get started"
  and "Book now" are not on it; they say something about the destination.

  Silent across fitculturepilates.com, jekyllrb.com, css-tricks.com,
  smashingmagazine.com, wordpress.org, w3.org, gnu.org and freecodecamp.org —
  some 12,000 internal anchors.

### Changed
- **The HTML report can carry a way back.** `html()` takes an optional
  `{ backHref, backLabel }` and renders a link in the bar when given one. Only
  the hosted front end passes it: the report replaces the page it streamed
  into, and without this the only route back to the form was the browser's back
  button onto a stale log. A report written to a file has nowhere to go back
  to, and still renders without it.

