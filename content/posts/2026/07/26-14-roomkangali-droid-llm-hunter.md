---
title: Droid LLM Hunter
date: 2026-07-26 14:40:38 +00:00
tags:
  - roomkangali
  - GitHub Actions
draft: false
repo: https://github.com/roomkangali/droid-llm-hunter
marketplace: https://github.com/marketplace/actions/droid-llm-hunter
version: v1.2.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **Summary:**
  
  Droid LLM Hunter is an automated security analysis tool designed to detect vulnerabilities in Android applications using a combination of static analysis and Large Language Models. It enhances the detection accuracy by integrating contextual understanding, supports hybrid decompilation and call graph analysis, and provides features like Auto-Exploit Generation for verifying vulnerabilities. The action offers a dashboard report interface for visualizing security findings and is used to test the tool with a specific vulnerable application.
---


Version updated for **https://github.com/roomkangali/droid-llm-hunter** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droid-llm-hunter) to find the latest changes.

## Action Summary

**Summary:**

Droid LLM Hunter is an automated security analysis tool designed to detect vulnerabilities in Android applications using a combination of static analysis and Large Language Models. It enhances the detection accuracy by integrating contextual understanding, supports hybrid decompilation and call graph analysis, and provides features like Auto-Exploit Generation for verifying vulnerabilities. The action offers a dashboard report interface for visualizing security findings and is used to test the tool with a specific vulnerable application.

## What's Changed

# FEATURE & HARDENING UPDATE v1.2.0: "LLM Response Cache, Scan Reliability & Cost Controls"

This release adds a content-addressed **LLM response cache** (crash/rate-limit resume), makes concurrency and token limits **configurable**, closes several correctness gaps that could silently drop or mislabel findings, and cleans up noisy logging. Documentation was expanded to cover every new knob and CLI option.

---

## 🚀 New Features & Enhancements

### [1] core/llm_cache.py — LLM Response Cache & Resume 🟢 NEW
| | |
|--|--|
| **What** | New `CachedLLMClient` wraps every LLM call. Key = SHA-256 of `model + system prompt + rule prompt + code`, stored under `output/.dlh_cache/`. |
| **Benefit** | **Resume:** a scan interrupted by a crash or rate limit re-uses completed calls for free on re-run — only unfinished work hits the LLM. **Dedup:** identical content costs one call. |
| **Safety** | Only **successful** responses are cached; empty/failed responses are never stored, so they are retried on the next run. Content-addressed, so changing the model/prompt/APK recomputes automatically. |
| **Control** | Enabled by default (`analysis.use_cache: true`). Disable per-run with `--no-cache`. Reset with `rm -rf output/.dlh_cache`. Hit/miss stats logged at end of scan. |

### [2] core/engine.py — Per-Rule Regex Gating in Deep Scan 🟠 HIGH
| | |
|--|--|
| **Problem** | Every enabled rule called the LLM on every target file, even when the rule's own `detection_pattern` didn't match — thousands of wasted calls (20 rules × hundreds of files). |
| **Fix** | New `_rule_should_run()` skips a rule's LLM call in `hybrid`/`static_only` modes when its pattern(s) don't match. Pattern-less logic rules (e.g. `universal_logic_flaw`) always run; broken regex fails open. Biggest available token saving. |

### [3] Configurable Concurrency & Output Tokens 🟡 MEDIUM
| | |
|--|--|
| **Problem** | `ThreadPoolExecutor(max_workers=2)` and `max_tokens=4096` were hardcoded — too slow for fast providers, and long JSON/exploit output could be truncated → JSON parse failures. |
| **Fix** | Added `analysis.max_workers` (default 2) and `llm.max_tokens` (default 4096). `max_tokens` is wired into all 6 clients with the correct per-provider field (`max_tokens`, Gemini `maxOutputTokens`, Ollama `num_predict`). |

### [4] Oversized Input Truncation Guard 🟡 MEDIUM
| | |
|--|--|
| **Problem** | Full file content was sent to the LLM with no size cap (only the exploit path truncated) — large files could blow the context window or inflate cost. |
| **Fix** | New `analysis.max_input_chars` (default 30000). `_truncate_for_llm()` keeps head + tail with a `[TRUNCATED …]` marker; applied in deep scan and summarization. Set `0` to disable. |

---

## 🐛 Bug Fixes & Reliability

### [5] core/engine.py — LLM failure silently reported as "Not Vulnerable" 🔴 CRITICAL
| | |
|--|--|
| **Problem** | On a soft-fail (empty response after retries), the parser returned `is_vulnerable: false`. A file that could not be analyzed (rate limit, timeout) was reported as if it were clean — a silent false negative. |
| **Fix** | Empty responses now yield `status: "Error"` / `status_detail: "UNANALYZED"` and are collected into a new `analysis_errors` list surfaced in the report + an end-of-scan warning. Applied to rule scan, library scan, manifest, and strings.xml paths. |

### [6] core/engine.py — Multi-class Smali summaries overwritten 🟡 MEDIUM
| | |
|--|--|
| **Problem** | In `summarize_chunks`, `summaries[file_path] = summary` inside the chunk loop kept only the **last** class's summary for multi-class Smali files, losing context used by risk-ID and cross-reference injection. |
| **Fix** | Summaries of all chunks are now accumulated and joined per file. |

### [7] core/engine.py — Smali chunking misapplied to Java files 🟡 MEDIUM
| | |
|--|--|
| **Problem** | `summarize_chunks` split on the Smali token `".class "`, which is meaningless for `.java` sources (JADX/hybrid) and could mis-slice at Java class literals. |
| **Fix** | Chunk-by-class only for `.smali`; `.java` files are summarized as a single chunk. |

### [8] dlh.py — `config provider` / `config model` crash on incomplete config 🟡 MEDIUM
| | |
|--|--|
| **Problem** | Writing `settings["llm"][...]` with no guard raised `KeyError` when `settings.yaml` lacked an `llm:` key, and `AttributeError` when the file was empty. The `except` only handled `FileNotFoundError`. |
| **Fix** | `yaml.safe_load(f) or {}` + `settings.setdefault("llm", {})`. Both commands now handle missing-key and empty-file configs safely. |

### [9] core/engine.py — Deprecated `.dict()` (Pydantic v2) 🟡 LOW
| | |
|--|--|
| **Problem** | `self.settings.rules.dict()` (3 call sites) triggers a `DeprecationWarning` under Pydantic v2 (which the project runs on, per its use of `model_dump_json`). |
| **Fix** | Replaced with `model_dump()`. |

### [10] core/engine.py — Duplicate `replace("{file_path}")` line 🟢 TRIVIAL
| | |
|--|--|
| **Problem** | The exploit prompt builder replaced `{file_path}` twice (harmless copy-paste). |
| **Fix** | Removed the duplicate line. |

### [11] modules/decompiler/jadx_handler.py — Noisy JADX partial-decompile WARNING 🟢 TRIVIAL
| | |
|--|--|
| **Problem** | A non-zero JADX exit code **with sources generated** is the normal partial-decompile outcome, but it was logged as a `WARNING` every run — misleading users into thinking something failed. |
| **Fix** | Demoted to a calm `INFO` line; STDOUT/STDERR details moved to `DEBUG` (`-v`). Genuine failures (no sources) still log as `ERROR`. |

### [12] requirements.txt — Unpinned dependencies + dead `langchain` 🟠 HIGH
| | |
|--|--|
| **Problem** | All dependencies were unpinned — builds were not reproducible, and a breaking upstream release (e.g. Pydantic, Typer) could silently break the tool on another machine. Separately, `langchain` was declared but **never imported anywhere** — a heavy, unused dependency. |
| **Fix** | Pinned all 6 real dependencies to their tested versions (`typer==0.27.0`, `loguru==0.7.3`, `PyYAML==6.0.3`, `pydantic==2.13.4`, `requests==2.34.2`, `rich==15.0.0`) and removed the unused `langchain`. |

### [13] Ollama prose output silently dropped findings 🟠 HIGH
| | |
|--|--|
| **Problem** | Small local models via Ollama (e.g. `deepseek-coder-v2`) often answer in **prose** instead of the required JSON. The parser then fell back to `is_vulnerable: false` — a vulnerability the model actually detected was reported as clean. The free/local path effectively "looked broken". |
| **Fix (A)** | The Ollama client now sends Ollama's native `format="json"` for **rule-analysis** calls (via an `expect_json` flag), forcing valid JSON. It is **not** set for summarization / risk-ID calls, which legitimately return free text. |
| **Fix (B)** | Non-empty but **unparseable** responses are now marked `status: "Error"` / `UNANALYZED` (reason `unparseable`) across all 4 analysis paths and surfaced in `analysis_errors` — no longer silently "Not Vulnerable". This protects **every** provider, not just Ollama. |
| **Note** | Clear the cache once after upgrading (`rm -rf output/.dlh_cache`) or run `--no-cache`, since a prior prose response may already be cached. |

### [16] Inconsistent Gemini API key field name 🟡 LOW
| | |
|--|--|
| **Problem** | Gemini's key used the generic field `api_key`, while every other provider used `<provider>_api_key` (`groq_api_key`, `openai_api_key`, …) — confusing and easy to mis-set. |
| **Fix** | Renamed the Gemini settings field `api_key` → `gemini_api_key` consistently across `config_loader.py`, `engine.py`, the `config wizard`, `settings.yaml`, and the CI configurator. `LLMSettings` fields also regrouped per provider (model + key together) for readability. |
| **⚠️ Migration** | Existing `config/settings.yaml` files must rename `api_key:` to `gemini_api_key:` (only affects Gemini users). |

### [17] `fragment_injection` was dead in the default (hybrid) mode 🔴 CRITICAL
| | |
|--|--|
| **Problem** | Its `detection_pattern` was Smali-only (`.super Landroid/preference/PreferenceActivity;`). In the default `hybrid`/`jadx` mode the static filter runs over **Java** source (`extends PreferenceActivity`), so the pattern never matched → the rule **never ran**. A silent false negative for the whole rule (worked only under `apktool`). |
| **Fix** | Pattern now matches both forms: `(\.super Landroid/preference/PreferenceActivity;\|extends\s+PreferenceActivity)`. Covered by a regression test (see Test Foundation). |
| **Audit** | All 24 code-rule patterns were reviewed against Java. `fragment_injection` was the only one **Smali-only** (broken in the default mode). A few others (`Class.forName`, `PendingIntent.`, `setJavaScriptEnabled(true)`, …) are Java-oriented and work in the default mode but would degrade under `apktool` — full dual-language coverage is deferred to v1.2.1 [A]. |

---

## 🧪 Test Foundation (Golden Test — Layer 1)

The project had **zero tests** (CI only did `docker build` + `--help`). v1.2.0 adds a deterministic, **no-LLM** test suite (`pytest`) that locks in every fix above and gives future prompt/refactor work a safety net.

- **`tests/test_detection_patterns.py`** — asserts every rule's `detection_pattern` matches a representative Java/XML sample in the default mode (this is what catches "dead rule" bugs like #17), plus negative cases and a compile check for all patterns.
- **`tests/test_pure_functions.py`** — locks in the engine fixes: per-rule gating (#1), input truncation (#5), failure/parse handling (#2 + Ollama-JSON), the response cache (#4), and cross-language call-graph mapping.
- **`tests/test_config.py`** — config-schema invariants: settings validate, rules stay A-Z, rule count = 25, `gemini_api_key` consistency.
- **CI** now runs `pytest` on every push/PR (new `test` job in `.github/workflows/ci.yml`); dev deps in `requirements-dev.txt`.

*Layer 2 (semantic golden test that actually runs the LLM against `VulnerAppDLH`) is planned for v1.2.1.*

**Result: 45 tests, all passing.** This raises engineering maturity from "no automated verification" toward a real regression net.

---

## 🎨 CLI / UX

### [14] `dlh.py --help` polish 🟢 ENHANCEMENT
| | |
|--|--|
| **What** | Cleaned up the root `--help` output: functional flags grouped into a **"Scan Options"** panel, `--install-completion` / `--show-completion` hidden (`add_completion=False`), and a bordered **"Examples"** panel (aligned two-column table matching the Commands/Options boxes) + docs link. The Examples panel is shown only on the top-level help, not on `scan --help` / `config --help`. |
| **Consistency** | Bare `dlh.py config` and `dlh.py scan` now show their **help** instead of an error box (`no_args_is_help=True`) — `scan` still errors if options are given without the APK; `config profile` still lists profiles as before. The root banner now prints a `Run 'python dlh.py --help' to get started.` hint. |
| **Impact** | Display / UX only — **no change to scan behavior**. Makes the tool feel more polished for new users. |

### [15] `list-rules` now sorted A–Z 🟢 ENHANCEMENT
| | |
|--|--|
| **What** | `RulesSettings` fields reordered alphabetically, so `dlh.py list-rules` prints rules A–Z instead of definition order. |
| **Impact** | Display order only — all 25 rules unchanged, config still valid. |

---

## 📄 Documentation

New config knobs and CLI options were documented across the existing docs, with backlinks kept consistent.

| File | Update |
|------|--------|
| CONFIGURATION.md | New **"Performance & Cost Controls"** section: `use_cache`, `max_workers`, `max_input_chars`, `max_tokens`, `--no-cache`, cache reset. |
| USAGE.md | Added `--scan-libraries` (was missing) and `--no-cache`; split flags into **Global Flags** vs **Scan Options**; completed the config command table (`context-injection`, `--disable` variants, show-current behavior, `config profile`). |
| FEATURES.md | New **"Response Cache & Resume"** feature bullet. |
| SCAN-WORKFLOW.md | Added a **CACHE CHECK → HIT/MISS** node in the Phase 3 diagram + cross-cutting cache note. |
| ARCHITECTURE_EXPLANATION.md | New **"Cross-Cutting Layer: The Response Cache"** section with flow diagram. |

---

## ✅ Summary

- **LLM response cache** added — interrupted scans resume for free; identical content is de-duplicated. Toggle via `--no-cache` / `analysis.use_cache`.
- **Per-rule regex gating** eliminates the bulk of wasted LLM calls in the deep-scan phase.
- **Concurrency (`max_workers`), input size (`max_input_chars`), and output tokens (`max_tokens`)** are now configurable.
- **Failed LLM analyses can no longer masquerade as clean** — they are marked `Error`/`UNANALYZED` and surfaced in `analysis_errors`.
- **Multi-class Smali summaries** are no longer truncated; **Java files** are no longer chunked with Smali logic.
- **`config provider` / `config model`** no longer crash on incomplete or empty `settings.yaml`.
- Deprecated `.dict()`, a duplicate line, and a noisy JADX warning cleaned up.
- **Dependencies pinned** for reproducible builds; unused `langchain` dependency removed.
- **Ollama/local path fixed:** forces JSON output for analysis calls; prose/unparseable responses are now flagged `Error`, not silently reported clean.
- **`--help` polished:** grouped option panels, a bordered **Examples** panel, docs link, and hidden shell-completion clutter.
- **`fragment_injection` un-broken (#17):** its Smali-only pattern never matched Java, so the rule was dead in the default mode — now dual-language.
- **Test foundation added:** a 45-test, no-LLM `pytest` suite + CI job that locks in all of the above.
- Documentation updated to cover every new option, with the cache shown as a cross-cutting layer in the workflow/architecture diagrams.
