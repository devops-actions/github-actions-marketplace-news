---
title: Nyx Security Scanner
date: 2026-05-03 21:31:46 +00:00
tags:
  - elicpeter
  - GitHub Actions
draft: false
repo: https://github.com/elicpeter/nyx
marketplace: https://github.com/marketplace/actions/nyx-security-scanner
version: v0.6.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/elicpeter/nyx** to version **v0.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nyx-security-scanner) to find the latest changes.

## Action Summary

Nyx is a local-first security scanner that performs cross-language taint analysis on repositories to detect vulnerabilities, providing a browser-based UI for triage and visualization without requiring cloud integration or user accounts. It automates the identification of security issues, displays detailed dataflows (source → sanitizer → sink), and allows collaborative triage management through shared state files. Key capabilities include severity-based finding categorization, code snippet visualization, scan history comparison, customizable rules, and integration with CI pipelines using SARIF output.

## What's Changed

Precision pass on auth and resource analysis, three fresh CVE corpus pairs, plus a UTF-8 slice panic in the path abstract domain.                                                                                                                     
                                                                                                                                                                                                                                                        
  Closes ~1900 Go auth FPs on gitea-shaped helpers, the mastodon/diaspora private-callback Ruby controller pattern, and a phantom-taint outbreak from JS/TS / Java lambda shorthand in jest-style nested test callbacks.                                
                                                                                                                                                                                                                                                        
  ## Highlights                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                        
  - **Java JDBC raw-SQL sinks.** `Statement.execute` / `executeBatch` / `executeLargeUpdate` modeled as `SQL_QUERY` via type-qualified resolution (`DatabaseConnection.execute`), so bare `execute` on Runnable / Executor / HttpClient does not        
  over-fire. Closes GHSA-h8cj-hpmg-636v (Appsmith `FilterDataServiceCE.dropTable`).                                                                                                                                                                     
  - **Java/Kotlin regex allowlist.** `Pattern.matcher(value).matches()` recognised as a `ValidationCall` when the receiver name contains `regex` or `pattern`. Branch narrowing applies `validated_must` to the matcher argument on the surviving       
  branch.                                                                                                                                                                                                                                               
  - **Go raw-SQL builders.** `goqu.L` / `goqu.Lit` modeled as `SQL_QUERY` sinks; safe siblings (`goqu.I`, `goqu.C`, `goqu.T`, `goqu.V`, …) stay unlabeled. Gin source list extended with the array-returning helpers (`c.QueryArray`, `c.GetQueryArray`,
   `c.PostFormArray`, `c.GetPostFormArray`). Closes CVE-2026-41422 (daptin).                                                                                                                                                                            
  - **Rust format-string named args.** `format!("...{x}...")` and friends (`println!`, `write!`, log macros, `panic!`, …) lift `{name}` captures into the call's `uses`. Mirrors the Python f-string lifter.                                            
  - **Java/JS lambda shorthand.** `cmd -> …` and `(a, b) -> …` now match `extract_param_meta`, so lambda formals are no longer treated as closure captures. Closes 934 phantom taint findings on the outline test suite.                                
                                                                                                                                                                                                                                                        
  ## CVE corpus pairs added                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                        
  - CVE-2026-41422 — daptin Go SQL injection via `goqu.L`                                                                                                                                                                                               
  - CVE-2023-42456, CVE-2024-32884, CVE-2025-53549 — Rust vulnerable + patched fixtures                                                                                                                                                                 
  - GHSA-h8cj-hpmg-636v — Appsmith Java JDBC dropTable                                                                                                                                                                                                  
                                                                                                                                                                                                                                                        
  ## Fixes                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                        
  - **Panic on non-ASCII input** to `has_first_char_absolute_check` in the path abstract domain. The 32-byte search window around `[0]` was sliced as `&clause[lo..hi]` (str), which panicked when `hi` landed inside a multi-byte UTF-8 char (e.g. em  
  dash). Switched to byte-pattern checks. Surfaced by `cargo fuzz`.                                                                                                                                                                                     
                                                                                                                                                                                                                                                        
  ## False-positive fixes                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                        
  - **Go ~1900 auth FPs closed.** `unit_has_user_input_evidence` allow-list narrowed for Go (no `ctx`, `context`, `info`, `body`, `path`, `payload`, `dto`, `form`, `query` as user-input indicators); param collection drops `ctx context.Context` /   
  `context.CancelFunc` entirely and avoids type-segment identifiers polluting the param-name set.                                                                                                                                                       
  - **Ruby controller visibility + filter-callback gate.** `private` / `protected` methods and Rails filter callback targets (`before_action`, `after_action`, `around_action`, their `prepend_*` / `append_*` / `skip_*` siblings, legacy `*_filter`   
  aliases) no longer emit as `Function` units. Closes mastodon / diaspora `set_X` row-fetch flood.                                                                                                                                                      
  - **Field-LHS resource acquires** no longer counted as local leaks at `apply_assignment` (`e->name = (char *)e + sizeof(*e)`, `mem->buf = ptr`). Parent struct owns the field's lifecycle. Cross-language. Closes curl `entry_new` and equivalents in 
  openssl / postgres.                                                                                                                                                                                                                                   
  - **Empty-formals SSA lowering signal.** `lower_to_ssa_with_params` sets `with_params=true` on `() => {…}` so external vars are correctly tagged synthetic. JS/TS / Java auto-seed pass no longer mistakes a bubbled-up free var (e.g. `userId` lifted
   from a nested jest test callback) for a real handler formal.                                                                                                                                                                                         
  - **Rust integer-typed values** suppress `Cap::FILE_IO` at the abstract-domain leaf gate. Closes the sudo-rs RUSTSEC-2023-0069 patched FP `path.push(uid.to_string())`.
                                                                                                                                                                                                                                                        
  Full changelog: https://github.com/elicpeter/nyx/blob/master/CHANGELOG.md
