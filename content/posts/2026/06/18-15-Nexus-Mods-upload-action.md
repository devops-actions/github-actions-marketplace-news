---
title: Upload to Nexus Mods
date: 2026-06-18 15:30:45 +00:00
tags:
  - Nexus-Mods
  - GitHub Actions
draft: false
repo: https://github.com/Nexus-Mods/upload-action
marketplace: https://github.com/marketplace/actions/upload-to-nexus-mods
version: v1.0.0-beta.8
dependentsNumber: "58"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Nexus-Mods/upload-action** to version **v1.0.0-beta.8**.

- This action is used across all versions by **58** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-to-nexus-mods) to find the latest changes.

## What's Changed

## What's Changed

Migrates the action to the current Nexus Mods v3 upload API and renames several inputs/outputs for clarity.

### ⚠️ Breaking changes

Renamed inputs/outputs. Update your workflow when bumping to this version (old pins keep working on older tags, there are no aliases):

| Old | New |
| --- | --- |
| `file_group_id` (input) | `file_id` |
| `file_category` (input) | `category` |
| `archive_existing_file` (input) | `archive_existing_version` |
| `file_uid` (output) | `version_id` (now the new version's ID) |

```diff
    with:
      api_key: ${{ secrets.NEXUSMODS_API_KEY }}
-     file_group_id: ${{ vars.NEXUSMODS_FILE_GROUP_ID }}
+     file_id: ${{ vars.NEXUSMODS_FILE_ID }}
      filename: my-mod.zip
-     file_category: main
+     category: main
```

### Under the hood

- Switched from the deprecated `createUpdateGroupVersion` endpoint to `createModFileVersion` (`POST /mod-files/{id}/versions`). The old endpoint is removed on **2026-09-09**, so this release is required to keep uploading after that date.
- Regenerated the vendored OpenAPI schema from the latest spec.

**Full Changelog**: https://github.com/Nexus-Mods/upload-action/compare/v1.0.0-beta.7...v1.0.0-beta.8

