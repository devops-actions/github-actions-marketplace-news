---
title: Lingo.Dev AI Localization
date: 2026-07-28 15:01:52 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev0.138.4
dependentsNumber: "107"
actionType: Composite
actionSummary: |
  Lingo.dev GitHub Action automates the continuous localization process of codebases using Lingo’s translation engine. It integrates seamlessly with CI/CD pipelines, ensuring that translations are up-to-date and error-free across different languages. This tool reduces terminology errors by leveraging Lingo's stateful translation APIs, making it an essential tool for developers working on internationalized applications.
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **lingo.dev@0.138.4**.

- This action is used across all versions by **107** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## Action Summary

Lingo.dev GitHub Action automates the continuous localization process of codebases using Lingo’s translation engine. It integrates seamlessly with CI/CD pipelines, ensuring that translations are up-to-date and error-free across different languages. This tool reduces terminology errors by leveraging Lingo's stateful translation APIs, making it an essential tool for developers working on internationalized applications.

## What's Changed

### Patch Changes

- [#2176](https://github.com/lingodotdev/lingo.dev/pull/2176) [`6b027c6`](https://github.com/lingodotdev/lingo.dev/commit/6b027c685685ec06beaab4109b8b4dae3f07651d) Thanks [@moygospadin](https://github.com/moygospadin)! - fix(cli): parse model responses that break JSON around a quoted placeholder

  A source string of `"Attach '{title}'?"` becomes `„{title}" anhängen?` in German:
  the language's word order moves the ICU placeholder to the front of the sentence
  and its typography wraps it in quotes. Models emit those quotes unescaped, so the
  JSON string closes early and the placeholder's `{` lands where a value belongs;
  some responses instead drop the value's opening quote entirely. `jsonrepair` gives
  up on both (`Unexpected character "{"` and `Colon expected at position N`) and the
  whole file fails to translate. German took the brunt of it — the same run
  translated every other locale fine, so it looked locale-specific, and it was
  deterministic across retries.

  `parseModelResponse` gains a last-resort repair pass that escapes quotes sitting
  inside a string rather than terminating it (a quote only closes the string when
  the next non-whitespace character could legally follow one), and treats a
  placeholder in a value position as the start of a string rather than an object.
  Extraction now also prefers the first brace that actually opens an object, so a
  preamble like `Hier ist die Übersetzung für {title}:` no longer becomes the start
  of the response.

  The pass runs only after `jsonrepair` itself has failed, so responses that
  already parse — or that `jsonrepair` repairs — are untouched, and a genuine
  nested object or a `"Zeit: {time}"` value is left alone. The nested
  stringified-`data` path goes through the same repair.
