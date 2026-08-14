---
title: darnlink — self-healing Markdown links
date: 2026-08-14 05:58:11 +00:00
tags:
  - txemi
  - GitHub Actions
draft: false
repo: https://github.com/txemi/darnlink
marketplace: https://github.com/marketplace/actions/darnlink-self-healing-markdown-links
version: v0.22.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The darnlink GitHub Action automatically heals Markdown links by updating paths after file or folder moves, ensuring they continue to work correctly even as documentation evolves over time. It supports cross-repo web links and offers options for robustifying plain links with UUIDs. The action is user-friendly and can be used in one line without installation, making it a powerful tool for maintaining consistent links in documentation projects.
---


Version updated for **https://github.com/txemi/darnlink** to version **v0.22.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/darnlink-self-healing-markdown-links) to find the latest changes.

## Action Summary

The darnlink GitHub Action automatically heals Markdown links by updating paths after file or folder moves, ensuring they continue to work correctly even as documentation evolves over time. It supports cross-repo web links and offers options for robustifying plain links with UUIDs. The action is user-friendly and can be used in one line without installation, making it a powerful tool for maintaining consistent links in documentation projects.

## What's Changed

> ### ⚠️ Moving your pin to this release CAN turn a green gate red — without you changing anything
>
> Not because of the new keys: those are opt-in, and a repo that sets none of them behaves exactly as
> it did on v0.21.0. It is the **dangling** fix below. Links with empty text — `![](photo.jpg)`, the
> shape pandoc emits for every image in a converted document — were not being filtered out, they were
> never *candidates*, so a tree full of broken embeds reported `dangling: 0`. Making them visible can
> only push the count up.
>
> **How likely is it to be you?** Measured across a nine-repository fleet, each with its own config,
> same command, only the version changing. Seven of them run `dangling: "repo"` with no ceiling — the
> setting that turns a finding into a closed push wall — and **two go red: 0 → 7 and 0 → 1. The other
> five stay at 0 and notice nothing.** An eighth, already at `warn`, moves 1704 → 1716; the ninth has
> the axis off.
>
> So: a minority, but not a rarity. Every single finding across the whole fleet was the same shape —
> `media/imageN.{jpeg,png,emf}` or a `foto-*.jpg` inside a CV or attachment converted by pandoc — so
> what it tracks is how many converted documents a tree carries.
>
> **Before you upgrade:** run the axis at `dangling: "warn"` to see your own number, then fix the
> links or raise the ceiling. This is a fix uncovering debt you already had, not a new failure — but
> it arrives as a red build either way, and being told afterwards is not being told.

### Added
- **`darnlink-gate`: the `own_web` keys, so feature 016 can actually be switched on.** The rule
  shipped in v0.21.0 lives in the CLI; until now no gate invoked it, so it protected nothing. Both
  recipes — bash and PowerShell — now read `own_web` (a list of owners), `own_web_from_origin` (bool)
  and `own_web_max` (int) and pass them through — including an explicit `own_web_max: 0`, which the
  PowerShell config reader dropped at first because it tests truthiness and PowerShell reads JSON `0`
  as false. That is the one value whose distinction from *absent* is the whole point of the budget.

  Three details keep it honest, and each is the same rule an existing key already follows:

  - **`own_web_from_origin` is its own key, not a sentinel inside the list** — an owner literally
    called `origin` has to stay expressible, the same reason the CLI has a flag rather than
    `--own auto`.
  - **A non-numeric budget counts as ABSENT, never as infinite.** Silently widening an allowance is
    the one direction a config typo must not be able to go (`dangling_max` established this).
  - **An exit 1 is treated as likely-config, but only when this run passed an `own_*` flag.** Feature
    016 makes exit 1 reachable from configuration — a budget with no owners, an unresolvable origin —
    and reporting that as a red gate would send someone hunting for broken links that do not exist.
    But exit 1 is *not* exclusively a usage error: `uvx` exits 1 on its own failures and an uncaught
    exception exits 1 too, so an unconditional reading would have turned those green for every
    consumer with `web: true`, including repositories that never adopted 016 — a worse guarantee than
    before the key existed. And it respects `fail_closed`: under fail-open the axis is dropped with a
    warning, in CI it becomes 4, because there the gate *is* the wall and an axis that could not run
    is not a pass. It is not routed to `bail()` either: that exits the script and would skip every
    axis after this one, the bug this same pass was fixed for once already.

  The wiring is asserted on the **invocation**, not the verdict: without a token an unreadable
  destination is `web_unverifiable` and the gate exits 0 whether or not the flags were passed, so a
  verdict-based test cannot tell — and did not. Dropping the `--own` loop entirely left every other
  recipe test green until the shim started recording argv.

  Two further silent no-ops closed while wiring it, both found by mutation rather than by reading:

  - **An empty owner entry passed without a word.** `[""]` flattens to exactly what an absent key
    gives, so the list length is now read separately from its value — and a *partially* empty list is
    named too, the case where the config lists three owners and the gate enforces one.
  - **`web-check`'s exit 4 had no test protecting it from the `rc>3` fail-open heuristic.** Its codes
    are all in 0..4 and none of them means *unreachable*, which is why the web verdict is marked
    final; remove that immunity and a genuine 4 — exactly how feature 016 reports an owned
    destination with no uuid — turns into **0** under the default, with the suite green.

### Fixed
- **Nothing had ever parsed `recipes/darnlink-gate.ps1`.** The recipe tests skip on Windows and no CI
  job ran `pwsh`, so a syntax error in the shipped PowerShell recipe would have reached consumers as
  a script that does not start. CI now parses it. Parsing is not testing — it never runs the gate —
  but it is the one failure mode a bash-only fleet cannot see at all.

- **A link with empty text — `![](photo.jpg)`, what pandoc emits for every image in a converted
  `.docx`/`.odt` — was invisible to every axis, not merely unreported.** `MD_LINK_RE` required at
  least one character of link text (`[^\]]+`), so such a link never matched: it was not a finding
  that got filtered, it was never a candidate. The axis then printed `dangling: 0` over a tree full
  of broken image embeds, which reads as *"no broken links"* but only ever meant *"none of the
  shapes the regex recognises"*.

  Measured on one repository running the wall at maximum, in its own gate scope: **127 links with
  empty text, 7 of them pointing at a target that does not exist**, and the axis printed
  `dangling: 0`. Since those files are converted documents, they arrive in blocks and nobody
  re-reads them.

  ⚠️ **Adopting this is not a no-op for a consumer.** `MD_LINK_RE` has three call sites, so
  the same repository also gains **36 newly visible web links** (none a `/blob/` URL today, so its
  web gate does not flip — the shape of those URLs, not a guarantee), and `--create-readme` gains a
  path where `![](media/)` can create a `README.md`. A repo at `dangling: repo` with `dangling_max`
  unset goes **0 → 7 and its push wall closes**: fix the links or raise the ceiling *before* moving
  the pin, not after.

  Reported as the pandoc attribute suffix (`{width="1.1in"}`) hiding the link; it was not.
  The pattern stops at the `)` and never looks past it, so `![alt](x.jpg){width="1.1in"}` was always
  seen. The two shapes simply co-occur. Both are pinned in tests so the real cause — the empty text —
  cannot be re-diagnosed from the same coincidence. `ROBUST_LINK_RE` widens alongside `MD_LINK_RE`,
  so an anchored empty-text link cannot be plain to one function and robust to another — a coupling
  that matters to the **repair** axis and has its own tests, since reverting that half alone leaves
  every `dangling` test green. FR-051.

### Known issues — read this before moving a pin

None is introduced by this release, but they belong where a consumer deciding on an upgrade will
see them rather than buried under *Fixed*. **One of them is live**; the rest are latent at 0
occurrences across thirteen repositories.

- ⚠️ **LIVE — balanced parentheses in a destination are truncated at the first `)`** (#71).
  CommonMark allows them; `MD_LINK_RE` does not, so the link is cut short and reported dead while
  the file it names sits on disk, clustered in mirrored attachment filenames (`(Parte 1)`,
  `(February - Monthly)`). The report conceals itself: its own `(resolves to …)` supplies the
  missing parenthesis, so the truncated path reads as complete, and a reader who checks finds the
  file present and concludes the *gate* is broken.

  **Size it by 20, not by 104.** Two measurements of the same repository, and only the first is what
  a wall would enforce:

  | measurement | count |
  |---|---:|
  | `dangling` findings the gate **emits** that are truncations | **20** |
  | truncated links **in the tree** whose paren-completed target exists | 104 |

  An earlier version of this entry printed only the 104 and said raising `dangling` to `repo` "would
  close the wall on 104 files that exist". That is wrong: a wall counts what the axis emits, and
  most of the 104 never reach it. The gap between the two is filters this note does not fully
  account for, which is exactly why the actionable number is the one measured at the gate.

  Pre-existing and orthogonal to this release.

- **`--write` detaches a pandoc attribute block** (#65). The anchor lands between the link and its
  `{…}`, so the block stops applying. Pre-existing: a non-empty link text has always done it. The
  tests added here pin that the block is never *deleted*, which is the worse neighbour of the two.
- **`--write` silently drops a file's UTF-8 BOM** (#68) on all four write paths. CRLF is preserved
  meticulously; the BOM is not, and three places in this repo imply otherwise — including the CI
  Windows matrix, whose stated purpose is BOM/CRLF and whose BOM fixture only covers the *read*
  path, so it cannot see this.
- **A trailing space in a destination makes `repair` emit a CONFLICT it cannot heal** (#67):
  a trailing space makes `names_md` false, the link is classified as a directory link and becomes a
  `CONFLICT` diagnosed as *"path and uuid disagree"* — which is untrue, and `--write` never heals
  it, so the gate stays red.

