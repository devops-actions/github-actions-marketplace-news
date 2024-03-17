---
title: Upsert to PostgreSQL
date: 2024-03-17 03:23:19 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/upsert-postgresql
marketplace: https://github.com/marketplace/actions/upsert-to-postgresql
version: v1.2
dependentsNumber: "?"
---


Version updated for **yakubique/upsert-postgresql** to version **v1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upsert-to-postgresql) to find the latest changes.

## Release notes

**Full Changelog**: https://github.com/yakubique/upsert-postgresql/compare/v1.1...v1.2

# Upsert to PostgreSQL

Upsert anything to PostgreSQL

[![Test `upsert-postgresql` action](https://github.com/yakubique/upsert-postgresql/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/upsert-postgresql/actions/workflows/test-myself.yaml)

[Usage workflow](https://github.com/yakubique/upsert-postgresql/actions/workflows/test-myself.yaml)

Insert or update provided JSON array (_or file with JSON array_) to database. Conflicts would be resolved
by `column_to_match`

## Usage

```yaml
- name: Upsert
  id: upsert
  uses: yakubique/upsert-postgresql@v1.2
  with:
    input: |
      [{ "id": 1, "value": "c", "test": 1 }, { "id": 2, "value": "b", "test": 2 }]
    host: ${{ env.PG_HOST }}
    port: ${{ env.PG_PORT }}
    username: ${{ env.PG_USER }}
    password: ${{ env.PG_PWD }}
    db: ${{ env.PG_DB }}
    ssl: 'false'
    column_to_match: 'id'
    table_name: 'test'
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|      INPUT      |  TYPE  | REQUIRED |  DEFAULT   |                                      DESCRIPTION                                      |
|-----------------|--------|----------|------------|---------------------------------------------------------------------------------------|
|      input      | string |   true   |            |                                    Input JSON/file                                    |
|       db        | string |   true   |            |                                     PostgreSQL db                                     |
|      host       | string |   true   |            |                                    PostgreSQL host                                    |
|    password     | string |   true   |            |                                  PostgreSQL password                                  |
|    username     | string |   true   |            |                                  PostgreSQL username                                  |
|      port       | string |   true   |  `"5432"`  |                            PostgreSQL port (default: 5432)                            |
|   table_name    | string |   true   |            |                                Name of table to upsert                                |
| column_to_match | string |   true   |            | Primary column to match records (possible to pass multiple columns, comma separated)  |
|  table_schema   | string |  false   | `"public"` |                      Table schema to upsert (default: 'public')                       |
|       ssl       | string |  false   |  `"true"`  |                             SSL enabled (default: 'true')                             |
|     to_file     | string |  false   | `"false"`  |                        Save result to file (default: 'false')                         |
|    from_file    | string |  false   | `"false"`  |                        Read query from file (default: 'false')                        |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |     DESCRIPTION     |
|--------|--------|---------------------|
| count  | string | Upserted rows count |

<!-- AUTO-DOC-OUTPUT:END -->

----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

