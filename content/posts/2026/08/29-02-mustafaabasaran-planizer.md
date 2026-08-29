---
title: Planizer
date: 2026-08-29 02:03:11 +00:00
tags:
  - mustafaabasaran
  - GitHub Actions
draft: false
repo: https://github.com/mustafaabasaran/planizer
marketplace: https://github.com/marketplace/actions/planizer
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Planizer is a deterministic static-analysis linter for SQL Server migrations that analyzes DDL, DML, and migration scripts to ensure they are safe, reversible, and perform within expected limits. It provides detailed findings with rules covering locking/blocking, rewrite vs metadata-only operations, reversibility, failure risk, and transaction hygiene, generating exit codes and SARIF reports for CI integration and GitHub code scanning.
---


Version updated for **https://github.com/mustafaabasaran/planizer** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/planizer) to find the latest changes.

## Action Summary

Planizer is a deterministic static-analysis linter for SQL Server migrations that analyzes DDL, DML, and migration scripts to ensure they are safe, reversible, and perform within expected limits. It provides detailed findings with rules covering locking/blocking, rewrite vs metadata-only operations, reversibility, failure risk, and transaction hygiene, generating exit codes and SARIF reports for CI integration and GitHub code scanning.

## What's Changed

Planizer is a deterministic static-analysis linter for **SQL Server (MSSQL) / T-SQL migrations**. It reads plain `.sql` files ‚Äî no database connection required ‚Äî and answers the questions every migration review asks before a change reaches production:

> Does it lock the table, and for how long? Does it rewrite the data or only metadata? Can it be rolled back? Will it fail on a re-run, or on our version and edition?

Every finding carries a rule id, a severity, a `line:column`, a one-sentence reason, a suggested fix (as SQL where possible), and the **version/edition assumption it was produced under**.

## What's in 0.1.0

**53 rules** in six families:

| Family | Covers |
|---|---|
| `LOCK` (10) | Sch-M windows, offline vs `ONLINE = ON`, `RESUMABLE`, `WAIT_AT_LOW_PRIORITY`, multi-statement transactions, lock escalation |
| `RW` (16) | Rewrite vs metadata-only: `ADD`/`ALTER`/`DROP COLUMN` variants, constraints, clustered indexes, compression, row width |
| `REV` (5) | Irreversible data loss, `sp_rename` fallout, `TRUNCATE`, opt-in rollback-script generation (`--rollback`) |
| `IDEM` / `BATCH` / `LIT` / `LIM` / `VER` (9) | Will the script *fail*: existence guards, same-batch column use, `GO` boundaries, non-Unicode literals, index-key and identifier limits, features missing on the target version |
| `TRAN` / `SET` / `ENV` (11) | `XACT_ABORT`, `BEGIN`/`COMMIT` balance, `TRY`/`CATCH`, `QUOTED_IDENTIFIER`, `USE` and cross-database coupling |
| `PARSE` / `DYN` (2) | Parse failures, dynamic SQL marked as unanalyzable rather than silently skipped |

**Also in this release**
- Statements nested in `IF` / `BEGIN‚Ä¶END` / `WHILE` / `TRY‚Ä¶CATCH` are analyzed like top-level ones, with their batch and control-flow context.
- Four outputs: `text`, `json`, `markdown` (PR comments), `sarif` (GitHub code scanning) ‚Äî plus `--sarif-file` to write SARIF alongside any other output.
- A composite **GitHub Action**: `uses: mustafaabasaran/planizer@v0.1.0`.
- Suppressions (`-- planizer:ignore RULE_ID reason`) and per-directory `.planizer.json` config.
- Worst-case defaults: SQL Server 2019 **Standard** ‚Äî the edition where the expensive surprises live.

## Why you can trust the rules

The behavior catalog behind the rules (`operation √ó version √ó edition ‚Üí lock, data movement, reversibility`) is not documentation-derived guesswork: a [CI job](https://github.com/mustafaabasaran/planizer/actions/workflows/catalog-verification.yml) measures **every row against real SQL Server containers** ‚Äî Developer *and* Express ‚Äî using transaction-log deltas, two-session blocking profiles and expected error numbers. The current state is 30/30 rows verified on Developer, 26/26 applicable rows on Express, zero contradictions. That harness has already corrected two claims this project got wrong.

The rules were also validated against a private corpus of 24 production repositories (8,507 migration files, 1.5M statements) over several false-positive rounds.

## Install

**As a GitHub Action** (no install):
```yaml
- uses: mustafaabasaran/planizer@v0.1.0
  with:
    path: migrations
    target-version: '2019'
    edition: standard
    fail-on: critical
```

**As a .NET tool**, from the package attached below (requires .NET 10; the tool rolls forward to newer majors):
```sh
dotnet tool install --global --add-source <folder-with-the-downloaded-nupkg> Planizer
planizer analyze migrations/ --output text
```

**From source:**
```sh
git clone https://github.com/mustafaabasaran/planizer && cd planizer
dotnet pack src/Planizer.Cli -c Release
dotnet tool install --global --add-source src/Planizer.Cli/nupkg Planizer
```

## Scope and limitations

- **SQL Server only** for now; PostgreSQL is planned via a Squawk adapter.
- **Offline analysis only.** Rules that need schema or statistics report `inconclusive` rather than staying silent; snapshot and live modes are the next phase ("this migration takes an estimated X seconds and Y MB of log").
- **No LLM anywhere in the pipeline** ‚Äî parser plus a verified behavior catalog, so the same input always produces the same report.
- Not yet on NuGet.org.

## Docs

[README](https://github.com/mustafaabasaran/planizer#readme) ¬∑ [Rule pages](https://github.com/mustafaabasaran/planizer/tree/main/docs/rules) ¬∑ [Roadmap](https://github.com/mustafaabasaran/planizer/blob/main/docs/ROADMAP.md) ¬∑ [Design decisions](https://github.com/mustafaabasaran/planizer/tree/main/docs/adr)

This is an early release ‚Äî issues and rule suggestions are very welcome, especially false positives from real migrations.

