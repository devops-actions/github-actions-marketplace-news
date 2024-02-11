---
title: Query to PostgreSQL
date: 2024-02-11 19:20:48 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/query-postgresql
marketplace: https://github.com/marketplace/actions/query-to-postgresql
version: v1
dependentsNumber: "?"
---


Version updated for **yakubique/query-postgresql** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/query-to-postgresql) to find the latest changes.

## Release notes

# query-postgresql

Make query to PostgreSQL and return JSON
**Full Changelog**: https://github.com/yakubique/query-postgresql/commits/v1

## Usage

For live examples, please see [actions](https://github.com/yakubique/query-postgresql/actions/workflows/test-myself.yaml)

```yaml
uses: yakubique/query-postgresql@v1
with:
  query: |
    select true as result
  host: ${{ env.PG_HOST }}
  port: ${{ env.PG_PORT }}
  username: ${{ env.PG_USER }}
  password: ${{ env.PG_PWD }}
  db: ${{ env.PG_DB }}
  ssl: 'false'
```

