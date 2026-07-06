---
title: vimanam-action
date: 2026-07-06 15:29:44 +00:00
tags:
  - noemaforge
  - GitHub Actions
draft: false
repo: https://github.com/noemaforge/vimanam-action
marketplace: https://github.com/marketplace/actions/vimanam-action
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/noemaforge/vimanam-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vimanam-action) to find the latest changes.

## What's Changed

Vimanam is a high-performance OpenAPI/Swagger (JSON or YAML) to Markdown documentation generator. It supports OpenAPI 2.0 (Swagger) and OpenAPI 3.0 specifications.

While useful for human documentation, Vimanam is uniquely optimized for feeding API specifications to LLMs by condensing large multi-megabyte specs into token-budget-friendly Markdown representations.

## What it is

Vimanam translates complex API specs into clean, structured Markdown. Key features include:

- Multiple Detail Levels: Choose from summary, basic, standard, or full levels depending on how deep you want to go.
- Token-Budget-Aware Rendering (--max-tokens): Input a maximum token budget, and Vimanam will automatically step down the detail level of the documentation until it fits, outputting what was trimmed to stderr.
- Deterministic, Byte-Identical Output: Guaranteed stable output across identical runs, which maximizes LLM prompt-caching efficiency.
- Compact Schema Expansion: Component schemas reached through $ref are expanded once in a trailing "Schema Definitions" section to keep output size compact, with an option (--inline-schemas) to inline them directly.
- Beautiful Grouping: Group endpoints by service (tags), HTTP methods, path, or leave them flat.

## Usage

```yaml
- uses: noemaforge/vimanam-action@4599a14c84d9d7bce1ec34ed9f12f3036f06b518 # v1
  with:
    spec: openapi.json
    output: docs/api.md
    detail: full
```

> **Pin to a commit SHA, not a tag.** See [Pinning](#pinning) below — it matters for security.

## Keep docs in sync (staleness gate)

vimanam's output is deterministic, so you can fail CI whenever the committed docs drift from
the spec:

```yaml
- uses: noemaforge/vimanam-action@4599a14c84d9d7bce1ec34ed9f12f3036f06b518 # v1
  with:
    spec: openapi.json
    output: docs/api-map.md
    detail: summary
- name: Fail if docs are stale
  run: git diff --exit-code -- docs/api-map.md
    || { echo "::error::docs/api-map.md is out of date — regenerate and commit"; exit 1; }
```

See [`examples/`](examples/) for complete workflows.

## Pinning

**Always pin GitHub Actions — including this one — to a full 40-character commit SHA, not a
tag.** Tags like `@v1` are *mutable*: whoever controls the action's repo can move them to point
at new code at any time. If an action (or one of its maintainers' accounts) is ever compromised,
an attacker can repoint the tag and your workflow silently runs their code — with access to your
repo token and secrets. This is a real, recurring supply-chain attack vector.

A commit SHA is **immutable**: it always resolves to the exact code you reviewed. It is currently
the only way to use an action as an immutable release.

```yaml
# ✅ pinned — immutable, audit once and trust
- uses: noemaforge/vimanam-action@4599a14c84d9d7bce1ec34ed9f12f3036f06b518 # v1

# ❌ mutable — the tag can be repointed at any time
- uses: noemaforge/vimanam-action@v1
```

Keep the `# v1` trailing comment so the version stays human-readable.
[Dependabot](https://docs.github.com/code-security/dependabot) and
[Renovate](https://docs.renovatebot.com/) both understand SHA-pinned actions and will open PRs
to bump the SHA (and the comment) when a new release lands — so pinning costs you nothing in
maintenance. Many orgs now [enforce SHA pinning by policy](https://github.blog/changelog/2025-08-15-github-actions-policy-now-supports-blocking-and-sha-pinning-actions/).

Find the SHA for any tag on the [releases page](https://github.com/noemaforge/vimanam-action/releases)
or with:

```bash
gh api repos/noemaforge/vimanam-action/commits/v1 --jq .sha
```

## Inputs

| Input      | Required | Default          | Description |
| ---------- | -------- | ---------------- | ----------- |
| `spec`     | yes      | —                | Path to the OpenAPI/Swagger JSON spec |
| `output`   | no       | stdout           | Output Markdown file path |
| `detail`   | no       | vimanam default  | `summary` \| `basic` \| `standard` \| `full` |
| `group-by` | no       | vimanam default  | `service` \| `method` \| `path` |
| `args`     | no       | —                | Extra raw CLI args appended verbatim (e.g. `--service-filter Auth --include-auth`) |
| `version`  | no       | `v0.6.0`         | vimanam release tag to install |
| `token`    | no       | `${{ github.token }}` | Token used to download release assets |

## Supported runners

| OS      | Arch                  |     |
| ------- | --------------------- | --- |
| Linux   | x86_64, aarch64       | ✓   |
| macOS   | Intel, Apple Silicon  | ✓   |
| Windows | x86_64                | ✓   |

Other combinations (e.g. Windows ARM) have no prebuilt binary; the action fails with a clear message.

## License

[Apache-2.0](LICENSE)

