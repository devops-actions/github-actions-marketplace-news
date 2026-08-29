---
title: Full-site SEO Audit
date: 2026-08-29 02:00:58 +00:00
tags:
  - nurkamol
  - GitHub Actions
draft: false
repo: https://github.com/nurkamol/seo-audit
marketplace: https://github.com/marketplace/actions/full-site-seo-audit
version: v1.34.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `nurkamol/seo-audit` crawls a website's sitemap and checks each page for SEO, metadata, and structured data problems, offering zero dependencies and automatic execution within CI. It automates tasks that single-page graders typically miss, ensuring comprehensive site audits without manual intervention.
---


Version updated for **https://github.com/nurkamol/seo-audit** to version **v1.34.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-site-seo-audit) to find the latest changes.

## Action Summary

The GitHub Action `nurkamol/seo-audit` crawls a website's sitemap and checks each page for SEO, metadata, and structured data problems, offering zero dependencies and automatic execution within CI. It automates tasks that single-page graders typically miss, ensuring comprehensive site audits without manual intervention.

## What's Changed


### Added
- **A score out of 100, and the checks that passed to earn it.** Every report
  now opens with a number, a grade and a ring: `81/100 (B)`, followed by the
  arithmetic that produced it. A run starts at 100 and pays for what is wrong
  with it — an error-level check costs 12 points, a warning 4, spread across
  the pages it is on — so what a check costs is exactly what fixing it is
  worth, and every piece of work in *Start here* now carries the points it
  returns.

  This project has refused a score everywhere else and the refusal still
  stands for the thing people usually mean by one: nothing here predicts a
  ranking, estimates traffic, or grades a site against its competitors. The
  weights are not a new judgement either — every check already carries a level,
  argued over check by check when it was written, and `scripts/check-levels.mjs`
  reads those levels back out of the source so a check promoted from warning to
  error cannot keep its old weight. A test asserts it on the machine of whoever
  changes one.

- **What passed, and what was never checked.** A report that only lists faults
  gives no way to tell a check that passed from one that never ran, and a
  missing finding reads exactly like a passing one. Both are now named: a
  **Passing** section listing every check the site cleared, in its own words
  (*"Every page has an og:image"*, not `og-image-missing`), and a **Not checked**
  section saying why the rest did not apply — no page carries an image, no
  redirect map was given, PageSpeed was not asked.

  A check that could not run is left out of the score entirely rather than
  counted as passed. A site with no images has not passed the alt-text check,
  and scoring it as though it had would hand out points for doing less.

- **Errors and warnings first, notes after them.** Findings used to arrive
  interleaved, and a note is *"worth knowing, may be deliberate"* — reading
  forty of them mixed into the faults is how a reader loses track of which is
  which. The terminal, the Markdown and the HTML now put what is wrong first
  and everything only worth knowing under its own heading, which says out loud
  that none of it costs the score anything.

- **`--write-schema <file>`** — the JSON-LD this site could add: `WebSite`,
  `Organization` and `BreadcrumbList`. Every schema generator on the internet
  asks you to type the answers in; this one refuses to ask, because the moment
  it asks it is no longer describing the site — and structured data that
  describes a site inaccurately is worse than none. It is a machine-readable
  claim the page does not support, which is a manual-action category at Google.

  So the rule is narrower than the rest of this project's and it is absolute:
  every value emitted is a string this crawl read off this site. An
  organisation is named only when the site names itself in `og:site_name`,
  because the home page's title with its tagline still attached is a claim
  about a company's name.

  The first live run made the point better than any test: a breadcrumb built
  from `<title>` produced *"Assets | Jekyll • Simple, blog-aware, static
  sites"* as a step. A title is not a breadcrumb name. Now a step is named by
  the page's `<h1>` when it has exactly one, or by what the site's own
  navigation calls it when the links agree and the words are not "read more" —
  and by nothing else. `Jekyll › Docs › Assets`. On that site 142 pages were
  skipped rather than given a name invented from a slug.

  The refusal can be the good answer here, so it says which it is: a site that
  already declares everything this could write gets told exactly that, with the
  counts, rather than the same sentence a site with no evidence gets.

- **`--write-llms <file>`** — the `llms.txt` this site should have had.
  Sibling to `--write-sitemap`, on the same premise: the crawl has already read
  every page's title, description, section and indexing directives, which is
  exactly what the file is made of. Every line is a string the site already
  serves — a page that gave us no description gets a line without one rather
  than a sentence somebody made up about it, and the H1 is the site's own name
  for itself rather than a guess.

  It refuses for the same reasons the sitemap does, and the refusals matter
  more than the file: this is a document handed to an assistant as the
  authoritative summary of a site, and one built from a third of the site is
  worse than none because it looks complete. A truncated crawl writes nothing
  and names the run that would work.

  Reachable everywhere: the flag, `llms-out=1` on the Worker, the macOS Export
  menu (which says *why* when the engine refused), the Raycast extension, and
  a `write-llms` input on the Action. `--write-sitemap` gained the Action input
  it should always have had while the wiring was open.

- **Search Console now answers where you rank, and what for.** The same
  connection, asked one more question — no second account, no scrape, no
  keyword provider, and no number that anybody here worked out.

  Every response Google has ever sent carried `position`, and it was being
  thrown away. It now travels with each finding, so a template on page two can
  be ordered ahead of one nobody has been shown, and the scope line says *"12
  pages, 4,300 impressions, best at position 6.4"*.

  **`search-console-striking`** names the crawled pages at positions 11 to 20 —
  page two, where the click-through rate is roughly nothing and the ranking is
  already earned — with the query each is closest on, most-shown first. It is
  the only list in this tool that is an opportunity rather than a fault, and
  moving one of them up two places is usually less work than a new page.

  A live property found the part no test would have: Google returns HTTP 200
  and **zero** query rows for a site under its anonymity threshold — 99
  impressions over 28 days was well under. Silence there reads exactly like
  "this site is found for nothing", so the report says which it is. The query
  call is best-effort besides: if it fails, the positions still stand.

- **Which AI crawlers a site lets in.** GPTBot, OAI-SearchBot, ClaudeBot,
  Claude-SearchBot, PerplexityBot, Google-Extended, Applebot-Extended, CCBot
  and five more, asked of `robots.txt` through the same `robotsVerdict()` every
  other robots question in this project goes through — so a rule this reads and
  a rule Google reads are the same rule, longer-`Allow`-wins included. Nothing
  is fetched that was not already being fetched and nothing is estimated: a
  site's position on being read by the answer engines is already written down
  in a file it already serves.

  It is a **note**, and stays one. A publisher who does not want their work in a
  training set and says so has done the correct thing correctly, and a check
  that cries wolf gets the whole report ignored. What the finding adds is the
  distinction everybody gets wrong — an *answering* crawler fetches a page
  because somebody asked a question just now, so blocking it removes the site
  from that answer today; a *training* crawler does not, and blocking it changes
  nothing about being cited. And it says whether anybody actually decided: a
  block that arrives through `User-agent: *` rather than the agent's own name is
  usually a CDN or plugin default nobody has seen.

  The one thing here that is a fault gets a warning: `ai-crawler-conflict`, a
  site serving `llms.txt` — a file whose only purpose is to tell an assistant
  what to read — while `robots.txt` turns that assistant away. The invitation
  never gets read, and unlike the block itself, nobody chose it.

  New area, **AI & answer engines**, which `llms-missing` moves into: it is
  addressed to assistants rather than to crawlers and belongs beside the agents
  that read it.

- **`/checks`**, served beside `/options`: every scored check with its weight,
  its area and what it says when it passes. "What does this thing actually
  check" is now a question with a fetchable answer rather than one that needs a
  source file read.

### Changed
- **The CSV is the whole checklist, not only the faults.** A `points` column
  carries what each failing check is taking off the score, so a spreadsheet
  sorts by what fixing something is worth rather than only by how often it
  occurs. Checks that passed arrive as rows at level `pass`, and ones that did
  not apply as `not-checked` with the reason in `detail`.

  Additive on purpose: `points` is appended after `detail` rather than put
  beside `indexable` where it reads better, so every column keeps the index it
  has had since the file shipped. Anything filtering on `error`, `warn` or
  `info` is untouched.

- **The portfolio table has a score column**, and orders by it where every run
  has one. "Which of my twenty sites is worst" is the only question a portfolio
  exists to answer, and counting errors weighs a site-wide failure the same as a
  warning on one page of four hundred. A run that never answered prints a dash,
  never a zero.

### Fixed
- **`<title>` and every heading arrived with their HTML entities undecoded.**
  `attr()` has decoded since it was written, so meta descriptions were always
  fine — but a title and an `<h1>` are element text and went through none of
  it. So `Widgets &amp; Co` was the title in the terminal, in the CSV, in the
  JSON, and in the length `title-long` measures against what Google shows,
  where it was five characters too long. Hexadecimal numeric references were
  not handled at all, and `&#x2019;` is what a CMS emits for the apostrophe in
  *Widget's*.

  Found by generating an `llms.txt` for a real site and reading the first line
  of it — not by the test suite, which is the usual way round here.

- **Every export dropped the score except the two that were written first.**
  It reached the terminal and the HTML and stopped there: the CSV had no column
  for it, the portfolio had no column for it, the Raycast extension's exports
  did not pass it to the writers, and the PDF the macOS app draws itself did not
  know about it.

  Worst of the four: the window re-encoded the report from its own Swift models
  on the way to `/render`, which silently dropped every field it had not been
  taught about — so an HTML report exported from the window lost the score panel
  the window itself was showing. The JSON export has written the engine's bytes
  verbatim since it shipped, with a comment saying exactly why; the other three
  formats now do the same. There is a test per writer.

- **`--against` never ignored hosts, though it said it did.** Comparing a
  rebuild against the site it replaces is the same question as comparing
  yesterday against today — *did this change anything* — but `diff()` keys a
  finding on its whole URL, and every URL on `new.example.com` differs from its
  twin on `example.com` by the host. The flag has passed `{ ignoreHost: true }`
  since it shipped and `diff()` has never read a third argument, so the answer
  came back with every finding fixed and every finding added at once, which is
  no answer at all.

  Two runs of different origins are now matched by path — trailing slash
  ignored, query kept, since `/search?q=a` and `/search?q=b` are two pages on
  any host. It decides for itself when it is not told, so the hosted `/diff`
  and the macOS window get it without either having to know the rule.

- **The macOS window could only compare two runs of the same site.** Its
  Compare menu filtered the library by host, so a rebuild kept beside the site
  it replaces greyed the button out — the exact comparison somebody keeps two
  reports around to make. Runs of other sites are now offered under their own
  heading, and the sheet says it matched by path when the hosts differ.


