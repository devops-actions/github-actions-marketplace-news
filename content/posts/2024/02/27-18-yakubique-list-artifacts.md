---
title: List Artifacts
date: 2024-02-27 18:06:31 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/list-artifacts
marketplace: https://github.com/marketplace/actions/list-artifacts
version: v1
dependentsNumber: "?"
---


Version updated for **yakubique/list-artifacts** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/list-artifacts) to find the latest changes.

## Release notes

# List artifacts

**Full Changelog**: https://github.com/yakubique/list-artifacts/commits/v1
List a build artifacts that can be used by subsequent workflow steps

[![Test `list-artifacts` action](https://github.com/yakubique/list-artifacts/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/list-artifacts/actions/workflows/test-myself.yaml)

[Usage workflow](https://github.com/yakubique/list-artifacts/actions/workflows/test-myself.yaml)

## Usage
```yaml
- name: List artifacts
  id: list
  uses: yakubique/list-artifacts@v1
  with:
    name: test-*

# Output example: $> echo "${{ steps.list.outputs.result }}"
#  [
#    {
#      "name": "test-2",
#      "id": 1278446917,
#      "size": 140,
#      "createdAt": "2024-02-27T11:15:32.000Z"
#    },
#    {
#      "name": "test-1",
#      "id": 1278446907,
#      "size": 137,
#      "createdAt": "2024-02-27T11:15:31.000Z"
#    }
#  ]
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT    |  TYPE  | REQUIRED |           DEFAULT            |                                                                                     DESCRIPTION                                                                                      |
|------------|--------|----------|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|    name    | string |   true   |                              |                                              The name of the artifact to <br>delete; multiple names can be supplied <br>on new lines.                                                |
| repository | string |  false   | `"${{ github.repository }}"` |    The repository owner and the repository <br>name joined together by "/". If <br>github-token is specified, this is the <br>repository that artifacts will be listed <br>from.     |
|   run-id   | string |  false   |   `"${{ github.run_id }}"`   | The id of the workflow run <br>where the desired download artifact was <br>uploaded from. If github-token is specified, <br>this is the run that artifacts <br>will be listed from.  |
|   token    | string |   true   |   `"${{ github.token }}"`    |                                                          GitHub token with read access to <br>actions for the repository.                                                            |
|  useGlob   | string |  false   |           `"true"`           |                                                    Indicates whether the name, or names, <br>should be treated as glob patterns.                                                     |

<!-- AUTO-DOC-INPUT:END --> 



## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |        DESCRIPTION         |
|--------|--------|----------------------------|
| result | string | Result list in JSON format |

<!-- AUTO-DOC-OUTPUT:END -->

