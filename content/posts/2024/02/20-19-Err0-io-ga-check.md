---
title: Official err0 check action
date: 2024-02-20 19:22:22 +00:00
tags:
  - Err0-io
  - GitHub Actions
draft: false
repo: Err0-io/ga-check
marketplace: https://github.com/marketplace/actions/official-err0-check-action
version: v1
dependentsNumber: "?"
---


Version updated for **Err0-io/ga-check** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/official-err0-check-action) to find the latest changes.

## Release notes

# err0-check-action

## Description
This GitHub Action, named `err0-check-action`, is designed to perform err0 action checks. It verifies errors and checks associated with a specific repository.


## Inputs
The following inputs are required for the action to run successfully:

- `ERR0_JSON`
  - Description: Variable de entorno ERR0_JSON
  - Required: true

- `REPO_URL`
  - Description: Url of repository
  - Required: true

- `GH_TOKEN`
  - Description: Github token with read and write permissions
  - Required: true

## Runs Using
- Docker

## Image
- Dockerfile

## Environment Variables
The action uses the following environment variables:

- `REPO_URL`: The repository https url
- `ERR0_JSON`: The err0 json stored in action secrets
- `GH_TOKEN`: The GitHub token with read and write permissions

## Example Usage
```yaml
on: [push]

jobs:
  err0-check:
    runs-on: ubuntu-latest
    name: Check err0
    - name: Run err0-check-action
      uses: Err0-io/ga-check@v1
      with:
        ERR0_JSON: ${{ secrets.ERR0_JSON }}
        REPO_URL: ${{ secrets.REPO_URL }}
        GH_TOKEN: ${{ secrets.GH_TOKEN }}


```
## License
```
The err0-check-action is licensed under the MIT License. See the LICENSE file for details.
```


