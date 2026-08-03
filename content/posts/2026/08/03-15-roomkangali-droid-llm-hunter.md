---
title: Droid LLM Hunter
date: 2026-08-03 15:08:22 +00:00
tags:
  - roomkangali
  - GitHub Actions
draft: false
repo: https://github.com/roomkangali/droid-llm-hunter
marketplace: https://github.com/marketplace/actions/droid-llm-hunter
version: v1.3.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **Main Purpose and Functionality**: Droid LLM Hunter is an automated security analysis tool that leverages traditional SAST techniques combined with the powerful context understanding of Large Language Models (LLMs) to identify vulnerabilities in Android applications. It uses Hybrid Decompilation, Context-Aware Analysis, and Intelligent Risk Filtering to ensure focused attention on high-severity findings.
  
  **Problems it Solves**: The action automates the detection process by replacing keyword-based scanning with LLM-driven analysis, thereby improving both precision and speed. It also provides the capability to generate Proof-of-Concept (PoC) scripts for verified vulnerabilities, transforming from a passive scanner into an active Red Team Assistant.
  
  **Key Capabilities**: Droid LLM Hunter supports Hybrid Decompilation, Context-Aware Analysis, Intelligent Risk Filtering, Auto-Exploit Generation, and offers a Dashboard Report and VulnerAppDLH tool for managing security analysis reports.
---


Version updated for **https://github.com/roomkangali/droid-llm-hunter** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droid-llm-hunter) to find the latest changes.

## Action Summary

**Main Purpose and Functionality**: Droid LLM Hunter is an automated security analysis tool that leverages traditional SAST techniques combined with the powerful context understanding of Large Language Models (LLMs) to identify vulnerabilities in Android applications. It uses Hybrid Decompilation, Context-Aware Analysis, and Intelligent Risk Filtering to ensure focused attention on high-severity findings.

**Problems it Solves**: The action automates the detection process by replacing keyword-based scanning with LLM-driven analysis, thereby improving both precision and speed. It also provides the capability to generate Proof-of-Concept (PoC) scripts for verified vulnerabilities, transforming from a passive scanner into an active Red Team Assistant.

**Key Capabilities**: Droid LLM Hunter supports Hybrid Decompilation, Context-Aware Analysis, Intelligent Risk Filtering, Auto-Exploit Generation, and offers a Dashboard Report and VulnerAppDLH tool for managing security analysis reports.

## What's Changed

# UPDATE v1.3.0 — PROMPT QUALITY, TEST FOUNDATION & TESTBED EXPANSION: "Golden Test Layer 2, Consistent Rules, Detection Fixes, Intent Redirection & VulnerAppDLH v2"

This release makes the detection **verifiable** and the rule prompts **consistent**. It adds a semantic Golden Test (Layer 2) that runs real scans against the `VulnerAppDLH` testbed and asserts a recall contract, then uses that safety net to standardize all 26 vulnerability-rule prompts, redesign a few misleading detection patterns, and close two recall gaps — all proven not to regress detection (recall held **16/16** across every change).

> Verified with OpenRouter `moonshotai/kimi-k3`. Layer 1 (deterministic) grew from 45 → **91 tests**.

> **This release also folds in the originally-planned testbed-expansion follow-up** (now complete): the `VulnerAppDLH` testbed was extended to **v2.0.0** (8 new vulnerable modules), a brand-new **`intent_redirection`** rule was added (**26 toggleable rules** now), and two detection/engine fixes were surfaced by the harness. Final Layer-2 recall against **`VulnerAppDLHv2.apk` → 25/25** (precision green, 0 errors). See sections **[13]–[16]**. Future work is split into focused releases: **`Update v1.3.1`** ("The Obfuscation Update") then **`Update v1.3.2`** ("The Supply Chain Update").

---

## 🧪 Test Foundation — Golden Test Layer 2 (semantic)

### [1] Semantic golden test + recall contract 🟢 NEW
| | |
|--|--|
| **What** | `tests/test_golden_vulnerapp.py` runs a full scan of `VulnerAppDLH.apk` and asserts findings **cover** the curated ground-truth `{rule → file}` set (`tests/golden/vulnerapp_expected.json`) — a *recall contract* — plus precision guards (`must_not_fire`). Counts `also_detected_by` so dedup can't hide a finding. |
| **Ground truth** | Derived from the app's SOURCE (not a past scan): 16 intended true-positives across 12 code files + the manifest. Curated to exclude historical false positives. |
| **Opt-in** | Marked `@pytest.mark.llm`, skipped by default (`pytest`), run explicitly with `pytest -m llm`. Content-addressed cache (v1.2.0) makes re-runs cheap; a changed prompt busts only that rule's cache. |

### [2] CI Job B — semantic tests, gated 🟢 NEW
| | |
|--|--|
| **What** | New `semantic-test` job in `.github/workflows/ci.yml`, gated to `workflow_dispatch` OR a PR labeled `semantic-test` (no auto-schedule → no surprise LLM cost). Wires the `OPENROUTER_API_KEY` secret. |

---

## 🎯 Detection Quality — rule prompts (all 26 rules now consistent)

### [3] [C] JSON-only output enforcement 🟠 HIGH
| | |
|--|--|
| **Problem** | Many rule prompts ended with prose-inviting instructions ("explain how to exploit", "say Safe", "report VULNERABLE") that fight the system prompt's JSON-only contract → parse failures, esp. on weaker models. |
| **Fix** | A single `JSON_ONLY_SUFFIX` is appended (engine-level) to every rule call as the final, overriding instruction; removed the worst offender ("say Safe") from `universal_logic_flaw`. 0 parse errors in verification. |

### [4] [A] Language-agnostic prompts + retired the `replace` hack 🟡 MEDIUM
| | |
|--|--|
| **Problem** | ~11 prompts said "smali code snippet" though the default `hybrid` mode feeds **Java**; the engine papered over it with a fragile `vuln_prompt.replace("smali","java")`. |
| **Fix** | All rule prompts + `summarize_prompt.txt` now say "decompiled Android code (Java or Smali)" with neutral ```` ``` ```` `{code_snippet}` wrappers; the `replace` hack was **removed** from `engine.py`. |

### [5] [F] Rich, consistent template for terse rules 🟡 MEDIUM
| | |
|--|--|
| **Problem** | Older rules were 2–3 lines with no taint reasoning, while newer rules had a detailed template — inconsistent quality. |
| **Fix** | 13 covered rules rewritten to *Vulnerability pattern → Tainted source → "not a finding if…"* (sql_injection, biometric_bypass, insecure_random/storage/webview/file_permissions, graphql_injection, path_traversal, webview_xss, hardcoded_secrets, exported_components, intent_spoofing, deeplink_hijack, webview_deeplink). |

### [6] [D] Redesigned misleading detection patterns 🟠 HIGH
| | |
|--|--|
| **Problem** | `path_traversal` matched `openFile` — which only hit `InsecureFileActivity` *coincidentally* (via `openFileOutput`), missing the real signal. `graphql_injection` matched any `query = "..."` (noisy). `universal_logic_flaw` (meant to be LLM-exclusive) had a narrow pattern that made gating skip real logic flaws. |
| **Fix** | `path_traversal` → `(openFile|FileInputStream|FileOutputStream)\s*\(` (real read signal). `graphql_injection` → require GraphQL context/syntax. `universal_logic_flaw` → **no** detection_pattern (truly LLM-exclusive, runs on every risky file). Recall held / improved; verified. |
| **Fix (scope)** | Because `universal_logic_flaw` now runs on every risky file, its prompt was **narrowed** to genuine trust/business-logic flaws and told to **defer** issues owned by dedicated rules (SQLi, GraphQL, secrets, storage, path traversal, deserialization, reflection). This stopped it re-flagging those as "logic flaws" while keeping the real conceptual flaws (e.g. CryptoActivity client-side auth trust). Verified: recall still 16/16. |

### [7] Full consistency sweep 🟢 POLISH
| | |
|--|--|
| **What** | Neutralized the `{code_snippet}` wrapper fence (```` ```java ```` → ```` ``` ````) across 9 newer rules so all 26 rules are uniform. `strandhogg` and `hardcoded_secrets_xml` already used the rich template — left unchanged (correct). |

---

## 🐛 Correctness & Recall

### [8] Dedicated-pass rules leaked into the code deep-scan 🔴 CRITICAL
| | |
|--|--|
| **Problem** | Rules that have their OWN analysis pass were not excluded from the generic `analyze_file` code scan, so they ran on every risky `.java` file and false-positived: (a) `strandhogg` (manifest-only) fired on 8 files incl. library `FastServiceLoaderKt` — found by the Layer-2 smoke run; (b) `hardcoded_secrets_xml` (strings.xml-only) fired on `SecretsActivity.java` / `WebViewActivity.java` — found by the full all-rules scan. |
| **Fix** | Single-source constants: `MANIFEST_RULES` (manifest) and `DEDICATED_PASS_RULES = MANIFEST_RULES + hardcoded_secrets_xml`, used by every code-scan exclusion. Manifest rules run only in `analyze_manifest`; `hardcoded_secrets_xml` only in `analyze_strings_xml`. + Layer-1 regression tests. |

### [9] Two recall gaps closed → 16/16 🟠 HIGH
| | |
|--|--|
| **Problem** | Baseline recall was 14/16: `insecure_file_permissions` missed `InsecureFileActivity` (app uses `setReadable(true,false)` + integer mode, not `MODE_WORLD_*`); `universal_logic_flaw` missed `CryptoActivity` (gated out by its own narrow pattern). |
| **Fix** | Added `set(Readable|Writable)(true,false)` to the file-permissions pattern + prompt; made universal_logic_flaw LLM-exclusive (see [6]). Recall → **16/16**; baseline floor tightened. |

### [10] Dual-language detection patterns (apktool mode) 🟡 LOW
| | |
|--|--|
| **Fix** | `unsafe_reflection`, `insecure_deserialization`, `pending_intent_hijacking`, `zip_slip` patterns now match both Java (`.method`) and Smali (`;->method`) forms + Layer-1 Smali tests. |

### [11] `manifest_parser.py` deprecation 🟢 TRIVIAL
| | |
|--|--|
| **Fix** | `if self.root` → `if self.root is not None` (ElementTree truth-value DeprecationWarning). |

---

## 🧹 Report Noise

### [12] [E] Report-level de-duplication 🟡 MEDIUM
| | |
|--|--|
| **Problem** | Overlapping rules flagged the same file repeatedly (WebView trio on one file; `universal_logic_flaw` fired broadly after [6]). |
| **Fix** | `engine._dedupe_findings()` (info-preserving): family merge (webview/storage/ipc/deeplink) + generic fold (universal_logic_flaw folded into a same-file specific finding, kept under `also_detected_by`, standalone only if alone). Added a `rule` key to every finding. e.g. WebViewActivity: 4 findings → 1 primary + `also_detected_by`. |

---

## 🧱 Testbed Expansion & New Detection (originally planned as a follow-up, folded in here)

The originally-planned "testbed expansion" work was completed and merged into this release, giving the previously pattern-only rules real semantic (Layer-2) ground truth.

### [13] New rule: `intent_redirection` 🟠 HIGH — NEW
| | |
|--|--|
| **What** | Detects a **confused-deputy Intent redirection**: an exported component pulls a nested Intent from `getParcelableExtra(...)` and forwards it (`startActivity` / `startService` / `sendBroadcast`) without validating the target — reaching the app's non-exported components or relaying granted URI permissions. |
| **Why** | Not covered by `intent_spoofing`, `exported_components`, or the deep-link rules. Google Play's App Security Improvement program flags exactly this pattern. |
| **Wiring** | New `intent_redirection.yaml` (rich template) + `RulesSettings` field (now **26 toggleable rules**, A–Z) + `masvs_mapping.json` (MASVS-PLATFORM-1) + `settings.yaml` entry + Layer-1 golden coverage. `detection_pattern: getParcelableExtra\s*[(<]` — matches Kotlin source, JADX Java, and Smali. |

### [14] Testbed grown to VulnerAppDLH v2 → Golden Layer 2 is now 25/25 🟢 NEW
| | |
|--|--|
| **What** | `VulnerAppDLH` was extended in place to **v2.0.0** with 8 new vulnerable modules: `insecure_deserialization`, `unsafe_reflection`, `pending_intent_hijacking`, `zip_slip`, `intent_redirection`, `fragment_injection`, `strandhogg` (now a real TP), and `hardcoded_secrets_xml`. The Layer-2 harness + baseline now target **`VulnerAppDLHv2.apk`**. |
| **Result** | Recall floor raised **16 → 25** and **verified 25/25** with `moonshotai/kimi-k3` (precision green, 0 errors). `strandhogg` moved from negative-control → real TP; `hardcoded_secrets` on `WebViewActivity` (a real `getSecrets()` token the v1 baseline had omitted) was added. Only `jetpack_compose_security` still lacks semantic coverage (needs a Compose app — deferred). |

### [15] Engine: static-pattern hits bypass the LLM risk-triage 🔴 CRITICAL (recall)
| | |
|--|--|
| **Problem** | In `hybrid` mode the LLM risk-triage (`identify_risky_chunks`) can drop a genuinely vulnerable file *before* rule gating. It dropped `ZipSlipActivity` even though the `zip_slip` `detection_pattern` matched — so no rule ever ran on it. |
| **Fix** | New `Engine._pattern_matched_files()`: **first-party** files whose content matches an enabled rule's `detection_pattern` are deep-scanned regardless of the triage verdict (a static hit is a strong signal). Scoped to the app package so added cost stays bounded to first-party code; library files still go through the normal triage. |

### [16] `pending_intent_hijacking`: match the JADX-inlined flag 🟠 HIGH
| | |
|--|--|
| **Problem** | JADX inlines `PendingIntent.FLAG_MUTABLE` to its integer value `33554432`, so the literal-only pattern missed `PendingIntentActivity`. |
| **Fix** | `detection_pattern` now matches `(FLAG_MUTABLE\|33554432)` (+ Layer-1 test). Same class of decompiler-inlining issue as `MODE_WORLD_READABLE`→`1`. |

### [17] System-prompt analysis rules refined — reachability vs. flaw 🟠 HIGH
| | |
|--|--|
| **Problem** | `system_prompt.txt`'s rule *"Do not assume context outside the provided snippet"* made the model blind to manifest-level facts (is the component `exported`?), so IPC rules hedged or risked false negatives — visible in an `intent_redirection` scan where the model wrote *"the AndroidManifest is not provided, so exported status cannot be confirmed"*. |
| **Fix** | Rewrote RULES FOR ANALYSIS to (1) **use ALL provided context** (manifest excerpt, cross-references); (2) **separate the flaw (`is_vulnerable`) from its reachability (`confidence`)** — but only when the vulnerable pattern is otherwise complete and the sole unknown is reachability; (3) keep `evidence` minimal. Recall-first, without loosening the "distinct evidence / tainted source" bar. |

### [18] Manifest reachability injected into the deep-scan (+ `get_component_details` bug fix) 🟠 HIGH
| | |
|--|--|
| **What** | New `Engine._manifest_context_for()` injects the analyzed class's AndroidManifest entry (exported status, permission, intent-filters) into the LLM input for code rules — so IPC/exported-dependent rules (`intent_redirection`, `pending_intent_hijacking`, `fragment_injection`, …) get **authoritative reachability** instead of guessing. Kept out of the pattern-gating input (LLM-only) so gating is unaffected. |
| **Bug fixed** | `ManifestParser.get_component_details()` used ElementTree Element truthiness (`if target_node:` / `if not self.root:`); an element with **no children** is falsy, so any component declared without an `<intent-filter>` (e.g. `IntentRedirectionActivity`) wrongly returned `{}` ("not found"). Now compared with `is not None`. + Layer-1 regression tests. |

---

## 🔌 New LLM Provider

### [19] 9Router support (`router9`) 🟢 NEW
| | |
|--|--|
| **What** | Added `router9` as a 7th LLM provider: a **self-hosted, OpenAI-compatible LLM router** that fans out to many providers/models behind one local endpoint via a provider-prefixed model name (e.g. `gc/gemini-2.5-pro` routes through to Gemini). New `modules/llm_client/router9.py` (`Router9Client`); wired into `LLMSettings` (`router9_model`, `router9_api_key`, `router9_base_url`), `Engine._setup_llm_client`, the `config wizard`/`config model` CLI, and `settings.yaml`. |
| **Streaming quirk handled** | 9Router's `/v1/chat/completions` endpoint returns a **Server-Sent Events (SSE) stream** (`Content-Type: text/event-stream`, `data: {...}` chunks) even for a plain request with no `"stream"` key set — unlike every other OpenAI-compatible client in this codebase, which expects one JSON body. `Router9Client` detects this via the `Content-Type` header and accumulates `delta.content` fragments across chunks, falling back to a normal single-JSON parse if the router ever returns one. Verified against a real, running 9Router instance during development (not just a synthetic test). |
| **Operational finding** | Routing to a **reasoning-capable model** (e.g. `gemini-2.5-pro`) burns part of the `max_tokens` budget on hidden `reasoning_tokens` before any visible output — confirmed live: with `max_tokens: 200` the model returned only a fragment (`finish_reason: "length"`, `reasoning_tokens: 190`), while `max_tokens: 4096` completed correctly. Documented in `settings.yaml`'s inline comment and `CONFIGURATION.md` (same class of issue as OpenRouter's `kimi-k3` needing `8192`). |
| **Tests** | 5 new Layer-1 tests: SSE parsing against the *exact* chunk shape observed from the real router, malformed-line skipping, `[DONE]` termination, empty-stream handling, and brace-safe prompt construction. Config test asserts the 3 new `LLMSettings` fields exist. |

---

## 📝 Report Quality

### [20] `app_summary` rewritten for information density 🟡 MEDIUM
| | |
|--|--|
| **Problem** | The executive-summary prompt asked for a "comprehensive summary" with no length or format constraint. Real reports showed ~1000-1600 tokens of markdown essay (headers, tables, repeated disclaimers, and an exhaustive list of *absent* dangerous permissions) — low information density for a field meant to orient a reviewer in seconds. |
| **Fix** | `app_summary_prompt.txt` rewritten: explicit 120-180 word budget, bullet points only (no headers/tables), report only permissions actually present (don't enumerate absent ones), no closing disclaimer, and the **exported attack surface prioritized** as the most report-relevant section. Verified live against the real `VulnerAppDLHv2` manifest: output dropped to ~360 tokens with no loss of security-relevant content. Confirmed `app_summary` is report-only (never re-injected as LLM context elsewhere), so this is a pure report-quality change with no detection-side risk. + Layer-1 format-safety test. |

### [21] `attack_surface_map` changed from narrative essay to structured JSON inventory 🟠 HIGH
| | |
|--|--|
| **Problem** | With `generate_attack_surface_map: true`, the prompt asked for a free-text "attack surface map" with no schema or format constraint, and the engine stored the raw LLM text verbatim. A real scan produced **~16,000 characters (~4,000 tokens)** of markdown — numbered sections, a full table re-describing every exported activity, ADB example commands, and repeated impact narration that duplicates what the per-file vulnerability findings already say in detail. |
| **Fix** | `attack_surface_prompt.txt` rewritten to demand a **flat JSON inventory only** (no prose, no markdown, no impact commentary): `exported_activities`/`exported_receivers`/`exported_services`/`exported_providers` (short names), `deep_links` (scheme/host/handler triples), `unprotected_broadcasts`, `network`/`file_io`/`ipc`/`deserialization`/`reflection` boolean/tag signals, and `manifest_flags`. `Engine.generate_attack_surface_map` now parses the response into a real dict (`_parse_llm_response`, reused) instead of storing raw text, and returns `{"error": ...}` on an empty/unparseable response instead of silently returning nothing. A downstream report renderer is expected to turn this data into bullets/tables. |
| **Result** | Verified live against the real `VulnerAppDLHv2` manifest: **~16,000 chars → ~900 chars (~230 tokens)**, a **~17.8x reduction**, with the schema populated correctly (including the correct nuance that `ProfileInstallReceiver` — protected by the `DUMP` permission — was excluded from `unprotected_broadcasts`). Also verified working through the new `router9` provider with a different model. + 3 Layer-1 tests (success, empty-response, unparseable-response) + a format-safety test. |

---

## 🛠️ Exploit Generation Robustness

### [22] Exploit prompt reframed with authorization context 🟠 HIGH
| | |
|--|--|
| **Problem** | `--generate-exploit` silently returned nothing for some models: `exploit_prompt.txt` opened with `ROLE: Android Security Researcher & Exploit Developer` and asked to "Generate the PoC Code" with no authorization/defensive framing at all — a pattern prone to safety refusals (observed as an empty response, not an explicit refusal string, after ~45-50s — consistent with a reasoning model spending its budget deciding not to comply). |
| **Fix** | Added an explicit `AUTHORIZATION CONTEXT` paragraph up front (this is an authorized, sandboxed assessment; the finding was already confirmed by static analysis; the script is for a remediation/QA team, not for discovering new targets), and reframed offensive vocabulary to verification/defensive language throughout (`Exploit Developer` → `Security Verification Engineer`, "demonstrate a vulnerability" → "reproduce an already-confirmed finding", "API exploitation" → "API interaction", `Generate the PoC Code now` → `Generate the verification script now`). All anti-hallucination constraints and the strict output-format rules were kept unchanged. |
| **Result** | Verified live on the `intent_redirection` finding that previously failed: **Anthropic `claude-opus-4-6` now succeeds** (a complete ADB verification script). One specific reasoning model routed through `router9` still returned empty even with this fix — confirming the refusal is model-specific, not a wording problem in general, and motivating [23] below. |

### [23] Per-stage LLM routing: `exploit_provider` / `exploit_model` 🟠 HIGH — NEW
| | |
|--|--|
| **What** | New optional `llm.exploit_provider` / `llm.exploit_model` settings let `--generate-exploit` use a **different provider/model than scanning** — e.g. keep a strong reasoning model for vulnerability analysis, but route exploit-gen to a provider known to comply (per [22], some models still refuse regardless of prompt wording). Neither field re-declares credentials: `exploit_provider: anthropic` reuses that provider's *own* `anthropic_api_key`/`anthropic_model` already in `settings.yaml`. Both unset → identical to pre-existing behavior. |
| **Engine change** | `Engine._setup_llm_client` split into an orchestrator plus a reusable `_build_llm_client(provider, model_override=None)` (no new LLM-client code — reuses all 7 existing clients). `self.exploit_llm_client` aliases `self.llm_client` unless a separate client is actually needed, and is built **only when `--generate-exploit` is requested** — a typo'd `exploit_provider` can never break a normal scan. Building it is wrapped in try/except: on failure, logs a warning and falls back to the main provider/model rather than crashing. The end-of-run cache-effectiveness log now merges hits/misses from both clients when they differ. `_generate_poc` now calls `self.exploit_llm_client` instead of `self.llm_client`. |
| **Result** | Verified live end-to-end: main provider stayed on `router9`/`jem/glm-5.2` for scanning while `exploit_provider: anthropic` (set in memory, not written to `settings.yaml`) routed exploit-gen to `claude-opus-4-6` — which produced a complete verification script for the exact `intent_redirection` case that returned empty via `router9` alone. + 7 Layer-1 tests (model-override resolution, default-to-main, skip-when-disabled, separate-provider routing, model-only override, and safe fallback on a bad provider name). |
| **Adopted** | `exploit_provider: anthropic` was then set in the real `config/settings.yaml` and confirmed working on a live `--generate-exploit` run (main scan stayed on `router9`; PoC generation succeeded via Anthropic where it had previously returned empty). |

### [24] PoC file extension misdetected when a script embeds another language 🟠 HIGH
| | |
|--|--|
| **Problem** | `_generate_poc`'s extension detection scanned the ENTIRE PoC content for signal substrings (`"import "`, `"def "`, `"Java.perform"`, ...) with no priority given to the script's own shebang. A live-generated PoC was a single, valid, directly-executable `#!/bin/bash` script that embedded a `python3 - << 'EOF' ... EOF` heredoc (to run background logcat monitoring, which Bash can't easily do alone) — a legitimate shell-scripting pattern, not the model ignoring the "pick ONE format" instruction. Because the heredoc's body contains `"import "`/`"def "`, the whole-content scan misclassified this Bash script as `.py`, producing a file that fails if executed as Python. |
| **Fix** | Extracted the detection logic into `Engine._detect_poc_extension()` and made the **first line** (the shebang, or the opening token for Frida JS/HTML) authoritative — checked BEFORE any whole-content scan, since that's literally what `exploit_prompt.txt` already instructs the model to emit there, and what the OS actually uses to run the file. Whole-content sniffing is now only a fallback for the rare case a response doesn't start with a recognized signal. |
| **Result** | The real misclassified file (bash+heredoc) now correctly resolves to `.sh`; a similar bash+embedded-Frida-JS case from earlier testing also now resolves to `.sh`. Existing pure Python/JS/HTML detection unchanged. + 7 Layer-1 tests, including the exact bash+heredoc fixture as a named regression guard. |

---

## ✅ Summary
- **Golden Test Layer 2** added — real scans assert a recall contract; opt-in + CI-gated.
- **All rule prompts standardized** — JSON-only output, language-agnostic wording, rich taint-reasoning template, uniform wrappers.
- **New rule `intent_redirection`** (confused-deputy IPC) → **26 toggleable rules**.
- **Testbed expanded to VulnerAppDLH v2.0.0** (8 new modules) → Golden Layer 2 recall **verified 25/25** (precision green, 0 errors).
- **Detection/engine fixes**: `strandhogg` leak removed; 2 v1 recall gaps closed; `path_traversal`/`graphql`/`universal_logic_flaw` patterns redesigned; 4 patterns dual-language; `pending_intent` now matches JADX-inlined `FLAG_MUTABLE`; **first-party static-pattern hits now bypass the LLM risk-triage** (recall fix).
- **Report de-duplication** collapses overlapping findings without losing data.
- **Manifest-aware reachability**: IPC/exported-dependent rules no longer guess reachability; the system prompt separates flaw-from-reachability instead of silently hedging.
- **New 7th LLM provider `router9`** (9Router, self-hosted multi-model router) — handles its unusual SSE-streaming responses and documents a `max_tokens`/reasoning-token gotcha found via live testing.
- **`app_summary` report field made dense**: ~1000-1600 token essay → ~360 tokens, same security content, exported attack surface prioritized.
- **`attack_surface_map` changed from a ~4000-token narrative essay to a ~230-token structured JSON inventory** (exported components, deep links, network/IPC/file-io signals) — a ~17.8x reduction, verified live.
- **Exploit-generation robustness**: `exploit_prompt.txt` reframed with authorization context (fixes some model refusals); new `llm.exploit_provider`/`exploit_model` routes `--generate-exploit` to a different, known-permissive provider when a model still refuses — verified live to turn an empty PoC into a working one; PoC file-extension detection now trusts the script's own shebang over whole-content keyword scanning, fixing a live-observed misclassification of a valid Bash+heredoc script as `.py`.
- **Every change Layer-2 verified** to not regress detection. Layer 1 = **91 tests**.
- **Still uncovered**: `jetpack_compose_security` (needs a Compose app — planned separately). Future work is split into **`Update v1.3.1`** ("The Obfuscation Update") and **`Update v1.3.2 `** ("The Supply Chain Update" — library deep scan).

---

<img width="1246" height="937" alt="Screenshot from 2026-07-31 09-07-23" src="https://github.com/user-attachments/assets/753c1bf4-c9ae-4001-82ed-8c061a02157f" />

