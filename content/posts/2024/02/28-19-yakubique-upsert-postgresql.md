---
title: Upsert to PostgreSQL
date: 2024-02-28 19:23:08 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/upsert-postgresql
marketplace: https://github.com/marketplace/actions/upsert-to-postgresql
version: v1
dependentsNumber: "?"
---


Version updated for **yakubique/upsert-postgresql** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upsert-to-postgresql) to find the latest changes.

## Release notes

# Upsert to PostgreSQL

Upsert anything to PostgreSQL
**Full Changelog**: https://github.com/yakubique/upsert-postgresql/commits/v1

[![Test `upsert-postgresql` action](https://github.com/yakubique/upsert-postgresql/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/upsert-postgresql/actions/workflows/test-myself.yaml)

[Usage workflow](https://github.com/yakubique/upsert-postgresql/actions/workflows/test-myself.yaml)

Insert or update provided JSON array (_or file with JSON array_) to database. Conflicts would be resolved
by `column_to_match`

## Usage

```yaml
- name: Upsert
  id: upsert
  uses: yakubique/upsert-postgresql@v1
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

|      INPUT      |  TYPE  | REQUIRED |  DEFAULT   |                DESCRIPTION                 |
|-----------------|--------|----------|------------|--------------------------------------------|
|      input      | string |   true   |            |              Input JSON/file               |
|       db        | string |   true   |            |               PostgreSQL db                |
|      host       | string |   true   |            |              PostgreSQL host               |
|    username     | string |   true   |            |            PostgreSQL username             |
|    password     | string |   true   |            |            PostgreSQL password             |
|   table_name    | string |   true   |            |          Name of table to upsert           |
| column_to_match | string |   true   |            |      Primary column to match records       |
|      port       | string |   true   |  `"5432"`  |      PostgreSQL port (default: 5432)       |
|       ssl       | string |  false   |  `"true"`  |       SSL enabled (default: 'true')        |
|    from_file    | string |  false   | `"false"`  |  Read query from file (default: 'false')   |
|  table_schema   | string |  false   | `"public"` | Table schema to upsert (default: 'public') |
|     to_file     | string |  false   | `"false"`  |   Save result to file (default: 'false')   |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |     DESCRIPTION     |
|--------|--------|---------------------|
| count  | string | Upserted rows count |

<!-- AUTO-DOC-OUTPUT:END -->

----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

