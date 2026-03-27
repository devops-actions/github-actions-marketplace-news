---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-03-27 06:14:22 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automatically generate secure CI/CD DevSecOps pipelines tailored to a project's technology stack, including workflows for build, test, lint, and deployment. It simplifies the setup of security practices by integrating tools like Gitleaks for secret scanning, Trivy for container vulnerability checks, and CodeQL or Semgrep for static analysis, while automating the creation and management of these workflows through pull requests. This action streamlines the process of implementing robust and consistent CI/CD pipelines, reducing manual effort and ensuring compliance with security standards.

## Release notes

# ShieldCI v1.0.0

First stable release of ShieldCI — a GitHub Action that auto-generates hardened CI/CD DevSecOps pipelines and opens a PR with the generated workflows.

## What ShieldCI does

Point ShieldCI at any repository and it will:
1. Auto-detect the stack (Go, Node.js, Python, Java) and tooling (npm/yarn/pnpm, mvn/gradle, pip/poetry)
2. Detect the presence of a Dockerfile and Kubernetes manifests
3. Generate a full set of reusable GitHub Actions workflows
4. Open a pull request with all generated files ready to review and merge

## Generated workflows

| File | Purpose |
|---|---|
| `ci.yml` | Orchestrator — calls all reusable workflows |
| `lint.yml` | Language-specific linting (golangci-lint, eslint, ruff, …) |
| `test.yml` | Tests with version matrix (go test -race, jest, pytest, mvn, …) |
| `security.yml` | Gitleaks secret scanning + CodeQL or Semgrep SAST |
| `docker.yml` | Docker build + Trivy vulnerability scan *(if Dockerfile detected)* |
| `k8s-deploy.yml` | Staging + production deploy via kubectl/Helm *(if `kubernetes: true`)* |

## Supported stacks

- **Go** — golangci-lint + go test -race
- **Node.js** — eslint + jest, Node version matrix
- **Python** — ruff + pytest, Python version matrix
- **Java** — Maven or Gradle + JaCoCo coverage

## Security tools included

- **Gitleaks** — detects secrets committed in git history
- **Trivy** — scans Docker images for CVEs (CRITICAL/HIGH, ignores unfixed)
- **CodeQL** — GitHub's static analysis engine (default)
- **Semgrep** — open-source SAST alternative (opt-in via `sast-tool: semgrep`)

## Usage

```yaml
- uses: Richonn/ShieldCI@v1
  with:
    github-token: ${{ secrets.GH_TOKEN }}
```

> Requires a PAT with `repo` + `workflow` scopes — GitHub blocks writes to `.github/workflows/` for `GITHUB_TOKEN` by design.

## All inputs

| Input | Default | Description |
|---|---|---|
| `github-token` | — | PAT with `repo` + `workflow` scopes |
| `language` | `auto` | Force language: `node`, `python`, `java`, `go` |
| `docker` | `auto` | Force Docker detection: `true` or `false` |
| `kubernetes` | `false` | Add K8s deploy workflow |
| `enable-trivy` | `true` | Include Trivy scan |
| `enable-gitleaks` | `true` | Include Gitleaks scan |
| `enable-sast` | `true` | Include SAST |
| `sast-tool` | `codeql` | `codeql` or `semgrep` |
| `branch-name` | `shieldci/generated-workflows` | Target branch |
| `pr-title` | `[ShieldCI] Add CI/CD DevSecOps pipeline` | PR title |

## Technical stack

- **Go 1.25** — single static binary, no runtime dependencies
- **Docker action** — fully reproducible environment
- **`text/template` + `embed.FS`** — templates baked into the binary at compile time
- **`google/go-github/v60`** — typed GitHub API client
- **Contents API** — idempotent file creation, re-runnable without side effects

