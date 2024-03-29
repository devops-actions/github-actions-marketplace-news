---
title: Apply PostgreSQL migrations
date: 2024-03-29 11:25:27 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/postgresql-apply-migrations
marketplace: https://github.com/marketplace/actions/apply-postgresql-migrations
version: v1.1
dependentsNumber: "?"
---


Version updated for **yakubique/postgresql-apply-migrations** to version **v1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/apply-postgresql-migrations) to find the latest changes.

## Release notes

# Apply PostgreSQL migrations

[![Coverage](./badges/coverage.svg)](./badges/coverage.svg)
[![Test `postgresql-apply-migrations` action](https://github.com/yakubique/postgresql-apply-migrations/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/postgresql-apply-migrations/actions/workflows/test-myself.yaml)

Automatically applies SQL migrations to your database.

Supports PostgreSQL 9.4+

Action uses [thomwright/postgres-migrations](https://github.com/thomwright/postgres-migrations)
> A PostgreSQL migration library inspired by the Stack Overflow system described in [Nick Craver's blog](http://nickcraver.com/blog/2016/05/03/stack-overflow-how-we-do-deployment-2016-edition/#database-migrations).


Migrations are defined in sequential SQL files, for example:
```text
migrations
├ 1_create-table.sql
├ 2_alter-table.sql
└ 3_add-index.sql
```


[Usage workflow](https://github.com/yakubique/postgresql-apply-migrations/actions/workflows/test-myself.yaml)

## Usage
```yaml
- name: Apply PostgreSQL migrations
  uses: yakubique/postgresql-apply-migrations@v1.1
  with:
    migrations: './.github/migrations'
    host: ${{ env.PG_HOST }}
    username: ${{ env.PG_USER }}
    password: ${{ env.PG_PWD }}

```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT    |  TYPE  | REQUIRED |   DEFAULT    |           DESCRIPTION           |
|------------|--------|----------|--------------|---------------------------------|
| migrations | string |   true   |              |    Path to migrations folder    |
|    host    | string |   true   |              |         PostgreSQL host         |
|  username  | string |   true   |              |       PostgreSQL username       |
|  password  | string |   true   |              |       PostgreSQL password       |
|     db     | string |   true   | `"postgres"` |       PostgreSQL database       |
|    port    | string |   true   |   `"5432"`   | PostgreSQL port (default: 5432) |
|    ssl     | string |  false   |   `"true"`   |  SSL enabled (default: 'true')  |
|  to_file   | string |  false   |  `"false"`   | Save migration results to file  |

<!-- AUTO-DOC-INPUT:END -->




## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

|   OUTPUT   |  TYPE  |                          DESCRIPTION                           |
|------------|--------|----------------------------------------------------------------|
| migrations | string | Applied migrations list (or path to result if `to_file=true`)  |

<!-- AUTO-DOC-OUTPUT:END -->



----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

