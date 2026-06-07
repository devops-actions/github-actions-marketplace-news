---
title: docentic
date: 2026-06-07 06:37:47 +00:00
tags:
  - intrepideai
  - GitHub Actions
draft: false
repo: https://github.com/intrepideai/docentic
marketplace: https://github.com/marketplace/actions/docentic
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/intrepideai/docentic** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docentic) to find the latest changes.

## What's Changed


Stack-agnostic generators and multi-provider content-fill. docentic's
deterministic doc generators now produce real content for Python, Go, Ruby, and
PHP (not just JS/TS), and `populate` works with OpenAI and Gemini as well as
Anthropic. Includes the 0.2.3 safety/contract hardening.

### Added
- **Stack-agnostic generators via a `lang/<LANGUAGE>.sh` adapter seam.** The deterministic generators (`gen-stack`/`gen-api`/`gen-data`/`gen-integrations`) now produce real content for non-JS repos instead of blank/wrong skeletons, dispatching to a per-language adapter; the JS/TS paths are untouched.
  - **Python** (`lang/python.sh`) — `pyproject.toml`/`requirements.txt` stack; FastAPI/Flask decorator routes + Django URLConf (incl. `re_path(r"…")`); SQLAlchemy/Django models; `os.environ`/`os.getenv` env vars; Python services.
  - **Go** (`lang/go.sh`) — `go.mod` module/version/deps; gin/chi/echo verbs + net/http·gorilla `HandleFunc` (multiple routes per line); GORM models; `os.Getenv`/`os.LookupEnv`; Go services.
  - **Ruby / Rails** (`lang/ruby.sh`) — `Gemfile`/`.ruby-version`; `config/routes.rb` verbs + `resources`/`resource` (plural vs singular); ActiveRecord models; `ENV[...]`/`ENV.fetch`; Ruby services.
  - **PHP / Laravel** (`lang/php.sh`) — `composer.json` (`require` only); `Route::get/…` + `Route::resource`/`apiResource`; Eloquent models; `env()`/`getenv()`/`$_ENV[]`; PHP services.
- **Multi-provider `populate`** — real OpenAI and Google Gemini support alongside Anthropic, behind a small provider abstraction (`src/lib/llm/`). The provider is chosen by `DOCENT_PROVIDER`, else the first key present (`ANTHROPIC_API_KEY` → `OPENAI_API_KEY` → `GEMINI_API_KEY`). OpenAI uses Chat Completions + function calling (honors `OPENAI_MODEL` / `OPENAI_BASE_URL`); Gemini uses `generateContent` + function calling (honors `GEMINI_MODEL`). Covered by mocked-transport unit tests for all three.
- **Polyglot detection foundation.** `detect-stack.sh` exports a primary `LANGUAGE` (`js-ts` · `python` · `go` · `rust` · `ruby` · `php` · `java` · `unknown`) and the resolved `MANIFEST` path, and picks a language-appropriate `PACKAGE_MANAGER` (pip/poetry/uv/pipenv · go · cargo · bundler · composer · maven/gradle) instead of defaulting everything to `npm`. `SRC_DIRS` is now language-aware (includes `lib/` for JS, and `cmd/`/`internal/`/`pkg/`/… for non-JS). The TS detector also gains Go web-framework (`gin`/`echo`/`chi`/`fiber`) and DB (`gorm`/`ent`/`pgx`/`sqlx`) detection.

### Changed
- **Honest, layered scope copy.** README tagline + body now state the real scope: scaffold/detection/LLM-fill on any repo; deterministic generators for JS/TS, Python, Go, Ruby, and PHP. Corrected the stale "two smoke tests" CI claim, the GLOSSARY spine count (12 core docs in `docs/` + root `AGENTS.md`, not "13 in docs/"), and the PR label mismatch (`init` now uses the `docentic` label, matching `populate` and the maintenance loop).
- `.agents/index.json` `template_version` is now stamped with docentic's real version (was hardcoded `0.1.0`).
- `init`'s "next steps" points at the real maintenance entry point (`scripts/llm-docs/MAINTAIN.md`) instead of "7 prompts (see prompts/)"; `MAINTAIN.md` Step 3 no longer hardcodes docentic's own `apps/docs/` layout.
- `install --project` now warns it's Cursor-only instead of silently ignoring it for Claude.
- `populate` cost estimates are now **per-model** (`src/lib/pricing.ts`) instead of always Sonnet-priced, and `--max-cost` / `DOCENT_MAX_COST_USD` gate against the right figure (a non-numeric env value is ignored rather than disabling the guard).
- `.env.example` rewritten to reflect what the code actually reads (real providers, valid model ids, `DOCENT_PROVIDER`, `DOCENT_MODEL_BOOTSTRAP`, `DOCENT_MAX_COST_USD`) and drops the false "coming soon — scaffold-only" note and the dead env vars.

### Fixed
- `populate` now **refuses to apply a truncated response** (`stop_reason`/`finish_reason` = max tokens) instead of writing partial/garbled file content, and validates the structured tool output rather than blindly casting it.
- Generators no longer write **confidently-wrong content** into the "source of truth" docs: dependencies/services named only in a comment are no longer reported as active, commented-out routes/models are skipped, and multiple route registrations on one line are all captured (not collapsed into a fabricated endpoint).
- `gen-stack` falls back to the lockfile-derived package manager when package.json's corepack `.packageManager` field is absent (no more blank row for plain npm/pnpm/yarn/bun repos); `gen-integrations` links the detected manifest as source-of-truth only when it exists (no dead `package.json` link on non-Node repos).
- `*.xcodeproj` detection in the stack detector was dead code (`existsSync` doesn't expand globs); it now matches real directory entries by suffix.
- `populate`'s context-gatherer no longer skips nested monorepo schemas — the `apps/*/prisma/schema.prisma` glob is actually expanded (it was previously `continue`-d past), Drizzle default layouts are gathered, and monorepo app manifests (`apps/*/package.json`) are included so the LLM sees real app dependencies.


