---
title: XLSX Cache Doctor
date: 2026-06-12 22:57:40 +00:00
tags:
  - proompteng
  - GitHub Actions
draft: false
repo: https://github.com/proompteng/bilig
marketplace: https://github.com/marketplace/actions/xlsx-cache-doctor
version: libraries-v0.164.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/proompteng/bilig** to version **libraries-v0.164.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xlsx-cache-doctor) to find the latest changes.

## What's Changed

# Libraries v0.164.0

- Release type: minor
- Previous libraries tag: libraries-v0.163.0
- Manual override: yes

## Features
- feat(xlsx): route simple exports through @bilig/xlsx writer (0402b079)
- feat(xlsx): export bordered simple workbooks with @bilig/xlsx (f569640d)
- feat(xlsx): export sparse style artifacts with @bilig/xlsx (46e9ef1e)
- feat(xlsx): export rich text with @bilig/xlsx (223ad9df)
- feat(xlsx): write macro fixtures with @bilig/xlsx (4bf4f3a2)
- feat(xlsx): write workpaper corpus fixtures with @bilig/xlsx (3c35d222)
- feat(xlsx): read same-corpus proof cells natively (79a1ab0b)
- feat(xlsx): scan workpaper corpus natively (41fc17a9)
- feat(workpaper): add A1 facade proof API (815daaa6)
- feat(workpaper): add atomic A1 readback proof (10d5a1fc)
- feat(xlsx): add native streaming recalc engine (3fd29acb)
- feat(xlsx): use wasm row-chain native recalc (3313b566)
- feat(xlsx): add native ratio row-chain recalc (b85507f9)
- feat(xlsx): route inline ratio chains natively (310a8c00)
- feat(xlsx): evaluate direct scalar formulas natively (8c35f905)
- feat(xlsx): evaluate sum ranges natively (55c4fed0)
- feat(xlsx): evaluate row conditionals natively (cc54d056)
- feat(xlsx): add native recalc public corpus gate (8e421a5b)
- feat(xlsx): support native cross-sheet scalar refs (704c4430)
- feat(xlsx): evaluate exact vlookup natively (2034336b)
- feat(xlsx): support indirect native vlookup (61a3a531)
- feat(xlsx): support native sum counta ranges (2e739d01)
- feat(xlsx): support native forecast lookup formulas (915e139f)
- feat(xlsx): use native streaming cache inspection (9ef328fc)
- feat(xlsx): move cache reader to native package (4c62bc44)
- feat(xlsx): hydrate native external link caches (586854f6)
- feat(xlsx): hydrate native external companions (12e59b88)
- feat(xlsx): patch native external link artifacts (a5a740a8)
- feat(xlsx): export simple hyperlinks natively (31601f75)
- feat(xlsx): batch exact native vlookup (a68976cc)
- feat(xlsx): batch approximate native vlookup (a63e0540)
- feat(xlsx): batch typed native range aggregates (8324492b)
- feat(xlsx): report native recalc fallback status (dd95d6d9)

## Fixes
- fix(xlsx): hydrate external caches natively (231bd902)
- fix(headless): route workpaper xlsx export through @bilig/xlsx (c5759851)
- fix(excel-import): make SheetJS fallback optional (2ffc9daf)
- perf(xlsx): retain fallback source readers (ea5630f0)
- perf(xlsx): copy untouched source entries (486e813a)
- perf(xlsx): stream sync source-preserving patches (1bfd9692)
- fix(xlsx): keep workbook runtime on native paths (8ca78173)
- fix(xlsx): route imports through native reader (aef1ac9e)
- fix(xlsx): stream formula cache patches natively (7aa2f9d6)
- fix(xlsx): reduce imported workbook memory (fbbaec39)
- fix(core): defer large cached formula instances (fbc67cca)
- fix(xlsx): stream recalculated workbook output (a4ef9711)
- fix(xlsx): keep recalc zip patching internal (204bd052)
- fix(xlsx): use native async scoped recalc cli (7c90c1fd)
- fix(xlsx): use native async compatibility recalc cli (a175be4e)
- fix(xlsx): require async native file recalc cli (e95a68f4)
- fix(xlsx): support native unary text formulas (62bddca1)
- fix(xlsx-recalc): remove primary WorkPaper fallback (ed7296ab)
- fix(xlsx-recalc): split legacy WorkPaper option types (79ebf804)
- fix(workpaper): own evaluator doors outside xlsx recalc (6ca86124)
- fix(xlsx-recalc): move legacy WorkPaper path to workpaper (109a69f2)
- fix(workpaper): move xlsx risk report to native package (75d98fef)
- fix(xlsx): expand native recalc corpus coverage (4ed796f7)
- fix(xlsx): route recalc bridges through native path (ba52c1be)
- fix(xlsx): expose native workpaper file recalc (a04f16b9)
- fix(xlsx): expose native cache inspection API (f8f98c43)
- fix(xlsx): stream workbook compatibility reports (433cb297)
- fix(xlsx): bound native cache inspection defaults (eb061910)
- perf(xlsx): stream source-preserving file patches (3297613a)
- fix(xlsx): keep mcp risk scan file-backed (24768544)
- fix(headless): use file-backed xlsx mcp import (c898f07e)
- fix(xlsx): cap legacy bytes recalc path (29613fd0)
- fix(headless): keep formula clinic large files native (9dab66fa)
- fix(xlsx): cap source-preserving byte patch APIs (0fb37484)
- fix(xlsx): cap external workbook byte inputs (afde8734)
- fix(xlsx): cap SheetJS fallback source bytes (559583a3)
- fix(xlsx): cap MCP WorkPaper XLSX imports (14d5a578)
- fix(xlsx): disable sync CLI file byte input (2dc0ffd2)
- fix(xlsx): cap file source byte reads (98ae1e64)
- fix(excel-import): cap imported source byte reads (87758981)
- fix(xlsx): avoid report external workbook byte reads (d447e675)
- fix(xlsx): standardize report native diagnostics (1a4c4faf)
- fix(excel-import): block large source export fallback (c2e5b7c5)
- fix(excel-import): require explicit legacy fallback opt-in (5243ca6b)
- fix(mcp): bound xlsx risk preflight (539e2951)
- fix(xlsx): bound formula cache scans by default (9334a075)
- fix(xlsx-recalc): cap byte-buffer recalc input (4724fe75)
- fix(excel-import): cap large xlsx byte imports (80e30591)
- fix(excel-import): route large workbook dispatch through byte source (022fb2bb)
- fix(workpaper): expose xlsx recalc dependency (85d0ae6a)
- fix(release): sync huggingface workpaper example version (1f4392e7)

## Internal runtime changes
- chore(xlsx): normalize @bilig/xlsx naming (975c7b67)
- test(xlsx): use native fixture builders (bb1dcff9)
- docs(agent): guard public rule targets (e05188d1)
- test(xlsx): expand native fixture coverage (40f6bf9e)
- test(xlsx): guard native recalc from sheetjs load (48c4060d)
- refactor(xlsx): own streaming native recalc (0c8b91e3)
- refactor(xlsx): keep native cli off workpaper path (38192a78)
- refactor(xlsx): isolate native recalc path types (c778dcd3)
- refactor(xlsx): split native recalc root from legacy workpaper (59ee0a9a)
- refactor(xlsx): keep native recalc install off headless (c0b3342e)
- refactor(xlsx): lazy load evaluator workpaper paths (588f4f49)
- refactor(xlsx): scan compatibility reports natively (96e94376)
- refactor(xlsx): keep workpaper selectors out of native package (bba963b2)
- test(excel-import): replace sheetjs lazy artifact fixture (0882493a)
- test(excel-import): replace sheetjs zip release fixture (9a629333)
- test(excel-import): replace sheetjs print fixtures (a2da8d0c)
- test(excel-import): replace sheetjs protection fixtures (682418e0)
- test(excel-import): replace sheetjs metadata fixtures (b4cccf06)
- test(excel-import): replace sheetjs conditional format fixtures (b3f8fd25)
- test(excel-import): replace sheetjs legacy comment fixtures (16463d88)
- test(excel-import): replace sheetjs ms-oi29500 fixtures (8db0a3ee)
- test(excel-import): replace sheetjs drawing fixtures (c8197db2)
- test(excel-import): replace sheetjs worksheet path fixture (49174016)
- test(excel-import): replace sheetjs generated fixtures (1852ec75)
- test(headless): replace sheetjs source-preserving fixture (c55a17d7)
- test(headless): replace sheetjs protection fixtures (bc6b4424)
- test(headless): replace sheetjs hyperlink fixture (93d5e371)
- test(headless): replace sheetjs comment fixtures (9589b770)
- test(headless): replace sheetjs external-link fixture (51bbbd13)
- test(headless): replace sheetjs chart fixture (4b92c5c0)
- test(headless): replace sheetjs preserved metadata fixture (cce302c8)
- test(excel-import): isolate sheetjs legacy fixtures (4d9e7ae9)
- test(corpus): remove sheetjs oracle fallback (f0013423)
- refactor(xlsx): share native workbook core for file scans (0ab9b0f2)
- refactor(xlsx): route native recalc through workbook core (824f3998)
- refactor(xlsx): store native recalc rows in typed arena (602aef55)
- refactor(xlsx): share workbook paths for large import preflight (1a397e2e)
- refactor(xlsx): unify source preserving patch writer (855b96b4)
- refactor(xlsx): centralize workbook report scans (c1db7bcf)
- refactor(corpus): use xlsx zip primitives (1a8e65b8)
- refactor(excel-import): use xlsx zip reader for byte sources (b0687f07)
- refactor(excel-import): use xlsx zip reader fallback (6855290d)
- refactor(excel-import): delegate zip runtime to xlsx core (4e8121a8)
- refactor(excel-import): use native sheet path resolver (5a47ec2c)
- refactor(xlsx): split native recalc source modules (6d591b9f)
- test(excel-import): route large fixtures through byte source (1e8ed360)
- chore(release): runtime packages v0.164.0 (bcdee654)

