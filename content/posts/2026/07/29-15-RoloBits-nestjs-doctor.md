---
title: NestJS Doctor
date: 2026-07-29 15:02:22 +00:00
tags:
  - RoloBits
  - GitHub Actions
draft: false
repo: https://github.com/RoloBits/nestjs-doctor
marketplace: https://github.com/marketplace/actions/nestjs-doctor
version: nestjs-doctor0.7.6
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `RoloBits/nestjs-doctor` automates code analysis and diagnostics for NestJS projects, providing a 0-100 score with actionable insights. It supports various rules across security, performance, correctness, architecture, and schema, offering detailed reports in an HTML format that helps users identify and address potential issues in their codebase. The action is particularly useful for maintaining high-quality NestJS applications by catching anti-patterns introduced by AI-generated code.
---


Version updated for **https://github.com/RoloBits/nestjs-doctor** to version **nestjs-doctor@0.7.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nestjs-doctor) to find the latest changes.

## Action Summary

The GitHub Action `RoloBits/nestjs-doctor` automates code analysis and diagnostics for NestJS projects, providing a 0-100 score with actionable insights. It supports various rules across security, performance, correctness, architecture, and schema, offering detailed reports in an HTML format that helps users identify and address potential issues in their codebase. The action is particularly useful for maintaining high-quality NestJS applications by catching anti-patterns introduced by AI-generated code.

## What's Changed

### Patch Changes

- 39952f0: A Prisma schema is now found when it does not sit in one of the two
  conventional places.

  `findPrismaSchemaFiles` checked `<project>/prisma/schema.prisma`,
  `<project>/schema.prisma`, and a `prisma.schema` field in `package.json`, then
  gave up. An Nx workspace that keeps its schema in a library, which is the normal
  shape, got nothing: the ORM was detected as Prisma, the schema graph came back
  empty, the ER diagram never rendered, and the three schema rules were skipped in
  silence. On one 9,836-file workspace that is 33 models and 36 relations that
  were never checked.

  **`prisma.config.*` is read, and read first.** Prisma treats it as authoritative
  and ignores the `package.json` key when one exists, so a declared path now beats
  both conventional locations. Comments are stripped before the path is read and
  every `schema` key in the file is tried, taking the first that declares a model,
  so neither a commented-out old path nor a nested `datasource: { schema: … }`
  wins.

  **A bounded search runs last**, only when nothing above located a schema. It
  skips `node_modules`, generated client output, scaffolding templates,
  `examples/`, `sample/`, `test/`, `e2e/` and build directories, and
  dot-directories are skipped too, which is what keeps a worktree copy out. A
  guessed directory has to declare a model and has to look like a schema's own,
  either named `prisma` or holding a `schema.prisma`; without that second rule a
  vendored reference schema stood in for the project's own in one corpus project.

  The conventional directory now also accepts a folder holding no `schema.prisma`,
  which Prisma has allowed since 5.15.

  Measured over the 46 corpus projects that hold a `.prisma` file, scanned at their
  roots: **355 entities to 419, and 223 schema findings to 261**. Four projects
  gain a schema. One drops by one entity, correctly: it declares
  `schema: 'prisma/schema.prisma'` in a `prisma.config.ts`, and the entity came
  from a `schema-old.prisma` sibling the project does not use.

  Known limitation: a project that declares nothing and keeps a stale copy beside
  its schema merges both, because Prisma merges siblings and nothing distinguishes
  a backup from a legitimate second file.

- 449eb87: A monorepo scan resolves the workspace-root schema once instead of once per
  sub-project.

  `buildSubProjectContext` falls back to the workspace root when a sub-project's
  own extraction comes back empty, and the answer is the same every time. On an Nx
  workspace with 29 Nest sub-projects it ran **28 times**, each repeating the file
  lookup across the whole tree. #217 made that lookup more expensive by giving it a
  search. The root is one path per scan, so it is now resolved once and shared.

  The fallback also no longer runs for an ORM it cannot help. Only Prisma locates
  its schema from the target path; TypeORM, Drizzle and MikroORM read the source
  files they are handed, so for those the fallback re-ran the identical extraction
  with identical inputs and could only reach the identical empty result. Each
  extractor now declares this on `OrmSchemaExtractor`, so the compiler asks for it
  when an ORM is added. On a TypeORM monorepo the root extractions drop from 2 to 0.

  No finding moves: the 46-project schema corpus is unchanged at 419 entities and
  261 findings, every repo individually, and the workspace above still reports 34
  entities, 36 relations and the same 237 diagnostics.

  This closes the follow-up #194 recorded when it added the fallback: "sharing one
  extraction across sub-projects… deduplicating the work is a separate question".
