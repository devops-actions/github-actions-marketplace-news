---
title: GoSQLX Lint Action
date: 2026-04-11 21:46:56 +00:00
tags:
  - ajitpratap0
  - GitHub Actions
draft: false
repo: https://github.com/ajitpratap0/GoSQLX
marketplace: https://github.com/marketplace/actions/gosqlx-lint-action
version: v1.14.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/ajitpratap0/GoSQLX** to version **v1.14.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gosqlx-lint-action) to find the latest changes.

## Action Summary

GoSQLX is a high-performance SQL parsing SDK for the Go programming language that tokenizes, parses, and generates Abstract Syntax Trees (ASTs) from SQL queries with zero-copy optimizations and minimal latency. It automates the analysis, transformation, and formatting of SQL across multiple dialects, solving challenges related to efficient SQL parsing and manipulation at scale. Key capabilities include support for 8 SQL dialects, advanced syntax handling, and integrations such as a CLI, VS Code extension, and GitHub Action.

## What's Changed

## GoSQLX v1.14.0

High-performance SQL parsing SDK for Go with zero-copy tokenization and object pooling.

## Changelog
### New Features
* a721a16f332d7baac27164ca39b0f859a307e8df feat(advisor): add OPT-009 through OPT-020 optimization advisor rules (#453) (#464)
* 699ae20c02bcc0519737979a3488a9d83c64ecb3 feat(ci): Sentry → GitHub Issues automation (#438)
* a7ce3aa7d2cfcdfc40196cff2e97f4b7bd89b720 feat(ci): add OpenSSF Scorecard security analysis workflow (#443)
* e7b4895e11a3df54cab7963ea4e538783aa708c3 feat(dialect): add MariaDB + Snowflake to playground, fix WASM dialectMap, unify config validation (#432)
* 73219089f0d83d6df57f2749980f8054fb3223f8 feat(dialect): add MariaDB SQL dialect with SEQUENCE, temporal tables, and CONNECT BY (#431)
* 71109565bba64b5c4b83b2e5a0320ca9bbdc11c6 feat(fingerprint): add SQL query fingerprinting and normalization (#444) (#463)
* 43ccdf5a6f494a85fc2821d3ff6f518f08fe86c7 feat(integrations): add OpenTelemetry and GORM sub-modules (#451 #452)
* be53bcd2d7ba9c45c0fd67f5e54da1f3614625dc feat(linter): expand linter from 10 to 30 rules — safety, performance, naming (#445)
* 88599d51e822474d98f7258452fe4e8ffce7cf08 feat(p3): CLI watch registration, pool stats API, JSON function parsing (#458 #459 #460)
* a37ed1c0d0e46a2e03984dfbe0dbab307fc264eb feat(parser): ClickHouse CODEC(...) column option (#482) (#497)
* 132a13ea476c2836f0e9bb9723bacb136133ef52 feat(parser): ClickHouse ORDER BY ... WITH FILL (#482) (#493)
* b263a1dc1372cdce5004646a69b6b8639ad8db60 feat(parser): ClickHouse SETTINGS, TTL, and INSERT FORMAT tail clauses (#482) (#489)
* d065a2818140cf675a0d77fefe0c1ea1af414ce5 feat(parser): ClickHouse WITH TOTALS, LIMIT BY, ANY/ALL JOIN, DEFAULT as identifier (#482) (#503)
* 4e394338905589f36b6412c6ca3654bdeedba699 feat(parser): ClickHouse nested column types and engine clauses (#482) (#488)
* 1fd384b62421799524eac77ab39e6f7bb548be62 feat(parser): ClickHouse parametric aggregates (#482) (#487)
* f58d93544a8fb78f5a2fa693cf5f1eec75e602ee feat(parser): LIKE ANY/ALL and ILIKE ANY/ALL for Snowflake (#483) (#500)
* d72b4d8a8dd536da50b9766265e2e9a5fd4df78e feat(parser): MINUS as EXCEPT synonym in Snowflake/Oracle (#483) (#494)
* 6318d7dd5424efdcb0ffd271913781a72a819d54 feat(parser): QUALIFY clause for Snowflake/BigQuery (#483) (#490)
* 387cca8907cff8a9f2de9d43752d857f522002fe feat(parser): Snowflake @stage references in FROM (#483) (#505)
* 7cf8e2f50ba2eee21f8bf931fa8e903867f2dfe7 feat(parser): Snowflake COPY INTO / PUT / GET / LIST stubs (#483) (#499)
* 30ee35dd8f63dcc439eeb921734dc9849dd521db feat(parser): Snowflake CREATE STAGE/STREAM/TASK/PIPE/... stubs (#483) (#498)
* f48028825bdff6c2a3313e3e68d9e999378e719f feat(parser): Snowflake LATERAL FLATTEN and named arguments (#483) (#492)
* 627e7125cc7b7395736ef7a0a64f4ab8b422cd1f feat(parser): Snowflake MATCH_RECOGNIZE clause (#483) (#506)
* fcfae2e9de79f395362da36bc1cd2e7c77dad5eb feat(parser): Snowflake MINUS fix, CLUSTER BY, COPY GRANTS, CTAS (#483) (#504)
* 945004554d837673e0c8d01597e3dc3786f562ab feat(parser): Snowflake SAMPLE/TABLESAMPLE clause (#483) (#501)
* 60101ec9c06aa594846ff1643be67fb7e219e98c feat(parser): Snowflake USE and DESCRIBE object-kind prefixes (#483) (#491)
* 144e3ca77449eac01371cc61c30ace5382157ef3 feat(parser): Snowflake VARIANT colon-path expressions (#483) (#496)
* 4421fe37dd2452d18f0d5fc780342dc25a0e38d8 feat(parser): Snowflake time-travel AT/BEFORE/CHANGES (#483) (#495)
* 926afe4da3e135b0f3ac08c2a2f580d956391f51 feat(parser): TRY_CAST + IGNORE/RESPECT NULLS for Snowflake (#483) (#486)
* 4d96d5c234936923533b9f157845dee63a512d11 feat(parser): add DDL formatter, CONNECT BY, and SAMPLE clause (#450 #454 #455) (#472)
* daea668c669c1dce76103fd34c6ebdb95fdd727c feat(parser): add SQL Server PIVOT/UNPIVOT clause parsing (#477)
* 57ee59889eaef41d5b0dcf79eb2222f534298a41 feat(parser): support ClickHouse bare-bracket array literals (#482) (#485)
* b4d22253adb1feb5b28054ea483060cc74b7d04d feat(schema): live DB schema introspection for Postgres, MySQL, SQLite (#448)
* f0720d55a208c8b6afb0d0e9544a1589ebf38efe feat(transform): DML Transform API — SET clause and RETURNING clause (#446)
* 96137abf055c241a158b97b2c4daa02d61eeb315 feat(transform): dialect-aware SQL formatting (#479) (#507)
* 42b44aa875ed31ccf012c807fa9c13d21507d60f feat(transpiler): SQL dialect transpilation API (#449)
* 95629684310365454a6326361534d9a041ec11f9 feat(website): Phase 1 marketing — star button, social share, playground CTA, WCAG, RSS (#425)
### Bug Fixes
* 384a825be1b41df85164056b886585842cc45587 fix(ci): allow modernc.org/libc NOASSERTION license in dependency review
* c40ea17dd4ec1d870697de7a85850e840b917e8e fix(ci): remove auto-commit WASM step — blocked by branch protection on main (#424)
* 08b023697780628e3324999ff9f5932974a5b99c fix(ci): skip testcontainers on Windows, add trivyignore for unfixable CVEs, handle glama-sync gracefully
* 670dd7e0042aa976d5cca4419ae4074085ae36c1 fix(deps): upgrade opentelemetry SDK to v1.43.0 (CVE-2026-39883) (#502)
* c50661fb7833d20e2b63b0fd85a39ccf0a464604 fix(parser): allow TABLE/PARTITION/TABLES as identifiers in ClickHouse (#480) (#481)
* 6d5182c2ff8a493a0df15ac67331521c2256b81d fix(parser): support ILIKE and PIVOT/UNPIVOT in Snowflake dialect (#484)
* cec5acc74de68d88bb64c0300ee1994693e5c0e5 fix(playground): move useState/useCallback above early returns to fix React error #310 (#429)
* 04f5210bcb4781da2510c88b07dda52bf83a793e fix(wasm): commit gosqlx.wasm to git to fix production playground 404 (#423)
* 08836bd83f9c68c16a7711c1b9988001ba98a342 fix(website): Vercel Analytics, Speed Insights, and CSP fixes (#433)
* 5d54c3fa4608dd4bc8d13a71ae8813e260df77c7 fix(website): comprehensive audit fixes for UX, accessibility, security, and correctness (#440)
* ba4e21d97bbfe55f60f8a00a463bd640900d83d8 fix(website): mobile responsiveness improvements (#441)
* 155da559a4ec1d75d376cca71b956bfc94655cf8 fix(website): suppress Sentry hydration and pushState noise (#434 #437)
* 791b4a633027db7e7ff39b9ed0986af87911b188 fix: resolve Sentry hydration mismatch and suppress extension noise (#439)
### Other
* be25753025f5cf74c1ed40c2b7bb6fc16ca061f7 chore(release): prepare v1.14.0 (#508)
* 9dbab8eba36a496edd653fce4454bba96c7a6024 fix(vscode-extension): bump version to 1.13.0 (#422)
* dd92a2f284f7d1da6ba7d89a782b33750553325f test(cbinding): harden C binding coverage 18% to 93% (#447)

## Documentation

- [Getting Started](https://github.com/ajitpratap0/GoSQLX/blob/main/docs/USAGE_GUIDE.md)
- [API Reference](https://github.com/ajitpratap0/GoSQLX/blob/main/docs/API_REFERENCE.md)
- [Examples](https://github.com/ajitpratap0/GoSQLX/tree/main/examples)

**Full Changelog**: https://github.com/ajitpratap0/GoSQLX/compare/v1.13.0...v1.14.0

