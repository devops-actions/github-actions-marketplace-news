---
title: nark - Dependency Error Checker
date: 2026-06-09 14:51:54 +00:00
tags:
  - nark-sh
  - GitHub Actions
draft: false
repo: https://github.com/nark-sh/nark-action
marketplace: https://github.com/marketplace/actions/nark-dependency-error-checker
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nark-sh/nark-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nark-dependency-error-checker) to find the latest changes.

## What's Changed

## Summary

L1 from the lessons doc — \`work-packages/launch-readiness/0004-product-lessons-from-ci-rollout.md\`.

v1 was a thin wrapper around \`npx nark\` with input parsing. v2 ships the dogfood-proven defaults we learned the hard way running Nark on our own SaaS this week. The whole point of the upgrade is to **prevent the silent-success failure mode** documented at [nark.sh/articles/github-actions-security-scanner-silent-success](https://nark.sh/articles/github-actions-security-scanner-silent-success) — where \`continue-on-error: true\` + a crashed scanner + missing-file \`actions/upload-artifact@v4\` warnings combine to report green while the job did nothing.

## New defaults (no breaking changes for callers using \`with:\`-free upgrade)

- **\`NODE_OPTIONS=--max-old-space-size=8192\`** — prevents OOM at exit 134 (\`FATAL ERROR: Reached heap limit Allocation failed\`) on mid-sized TS programs.
- **\`NARK_TELEMETRY=false\`** in CI — toggle with \`telemetry: 'true'\` to re-enable.
- **Built-in verify-artifact step** — fails loud when the scanner exits without writing the audit JSON.
- **Built-in \`actions/upload-artifact@v4\`** step — uploads the audit as a workflow artifact. Override via \`upload-artifact: 'false'\`.
- **Built-in step summary** — parses the audit JSON and writes violation counts + a top-10-packages table into \`\$GITHUB_STEP_SUMMARY\`.

## New caller-composition outputs

\`audit-path\`, \`total-violations\`, \`error-count\`, \`warning-count\`, \`info-count\`.

Lets callers do things like:

\`\`\`yaml
- uses: nark-sh/nark-action@v2
  id: nark
- if: steps.nark.outputs.total-violations != '0'
  run: echo "Found \${{ steps.nark.outputs.total-violations }} violations"
\`\`\`

## New inputs

\`output\`, \`node-options\`, \`verify-artifact\`, \`upload-artifact\`, \`artifact-name\`, \`artifact-retention-days\`, \`telemetry\`. All have safe defaults; the simplest usage is still \`uses: nark-sh/nark-action@v2\` with no \`with:\` block.

## Implementation notes

Composite-action structure preserved (no JS build pipeline introduced). The \`Run nark\` step is wrapped in \`set +e\` so a non-zero exit doesn't abort the composite before verify + summary + upload run. The final \`Propagate nark exit code\` step re-raises the original exit code so the caller's \`continue-on-error\` logic still applies.

## Self-test

New \`.github/workflows/self-test.yml\` runs two end-to-end tests on every PR:

1. **Happy path** — runs the action against the bundled \`npx nark --demo\` fixture (qt-256, ~7 guaranteed violations across axios + stripe + @prisma/client). Asserts non-empty outputs.
2. **Silent-failure catch** — passes a bogus tsconfig path and asserts \`steps.nark.outcome == 'failure'\` even though \`continue-on-error: true\` is set. The whole point of verify-artifact.

## Migration from v1

Most callers can flip the tag:

\`\`\`diff
- uses: nark-sh/nark-action@v1
+ uses: nark-sh/nark-action@v2
\`\`\`

Callers who already wired their own \`actions/upload-artifact@v4\` step after the v1 action should either remove theirs or set \`upload-artifact: 'false'\` on v2 to avoid duplicate uploads.

## Test plan

- [x] \`python3 -c 'import yaml; yaml.safe_load(...)'\` — both action.yml and self-test.yml validate.
- [ ] Self-test workflow runs and both jobs pass on this PR's CI.
- [ ] On merge: tag \`v2.0.0\` + update floating \`v2\` tag.
