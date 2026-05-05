---
title: Pompelmi ClamAV Scanner
date: 2026-05-05 20:53:37 +00:00
tags:
  - pompelmi
  - GitHub Actions
draft: false
repo: https://github.com/pompelmi/pompelmi
marketplace: https://github.com/marketplace/actions/pompelmi-clamav-scanner
version: v1.13.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/pompelmi/pompelmi** to version **v1.13.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pompelmi-clamav-scanner) to find the latest changes.

## Action Summary

Pompelmi is a Node.js library that integrates ClamAV antivirus scanning capabilities. It automates the detection of malicious files or threats in applications with a clean, type-safe implementation and no external dependencies. This solution simplifies antivirus integration for developers, ensuring security without compromising performance or maintainability.

## What's Changed

### Added
- **@pompelmi/nestjs** — NestJS module with `PompelmiModule.forRoot()` / `.forRootAsync()`, injectable `PompelmiService` (scan / scanBuffer / isMalware), `PompelmiGuard` (blocks malicious uploads via `CanActivate`), and `PompelmiInterceptor` (throws `BadRequestException` on infection). Full TypeScript declarations included.
- **@pompelmi/fastify** — Fastify plugin that decorates the instance with `fastify.pompelmi` (scan / scanBuffer / scanStream / preHandler). The `preHandler()` helper returns a route-level hook that scans uploaded files before the route handler runs. Supports custom `onMalicious` callbacks and full TypeScript declarations.
- **Framework Integrations** section in `README.md` — table of official packages with usage snippets for NestJS and Fastify.

---
