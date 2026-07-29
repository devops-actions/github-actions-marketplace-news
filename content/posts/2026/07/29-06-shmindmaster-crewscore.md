---
title: CrewScore
date: 2026-07-29 06:39:06 +00:00
tags:
  - shmindmaster
  - GitHub Actions
draft: false
repo: https://github.com/shmindmaster/crewscore
marketplace: https://github.com/marketplace/actions/crewscore
version: v0.5.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary:**
  
  CrewScore is a technical tool that scans AI agent prompts to identify missing safety controls such as injection defense, human approval, cost limits, and stop conditions. It helps developers ensure their prompts are comprehensive and enforceable, providing actionable insights into areas where the prompt does not state these critical guardrails.
---


Version updated for **https://github.com/shmindmaster/crewscore** to version **v0.5.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/crewscore) to find the latest changes.

## Action Summary

**Summary:**

CrewScore is a technical tool that scans AI agent prompts to identify missing safety controls such as injection defense, human approval, cost limits, and stop conditions. It helps developers ensure their prompts are comprehensive and enforceable, providing actionable insights into areas where the prompt does not state these critical guardrails.

## What's Changed

No scoring change. `crewscore-hygiene@0.5.0` is unchanged, so scores from
0.5.0 and 0.5.1 are directly comparable.

### Fixed

- **`action.yml` description was 211 characters; GitHub Marketplace rejects
  anything over 125.** The listing could not be published, and the form offers
  no override — the fix has to ship in a tagged release, so a browser-time
  discovery cost a whole extra release. Now 118 characters, and
  `tests/test_action_manifest.py` pins the limit along with the other fields
  the Marketplace requires (name, description, `branding.icon`, and a
  `branding.color` from GitHub's closed list).

  Shortening it also broke the manifest once: an unquoted colon in a YAML
  scalar turns the line into a mapping. A test now reparses the file and
  asserts the description is still a string.

- **A test imported `pyyaml`, which was declared nowhere.** It was installed
  on the author's machine, so the suite passed locally and failed on every CI
  runner — after the tag was pushed, which is the most expensive moment to
  learn it. The release gate was right and published nothing.

  `pyyaml` is now in the `dev` extra (test-only; the shipped package stays on
  `click` and `rich`), and `tests/test_packaging_contract.py` statically checks
  every test import against the declared dependency set. A local `pytest` run
  cannot catch this class of error — the module is already installed — so the
  check reads `pyproject.toml` rather than the environment.

---


