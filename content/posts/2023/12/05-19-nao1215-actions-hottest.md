---
title: Run hottest
date: 2023-12-05 19:21:20 +00:00
tags:
  - nao1215
  - GitHub Actions
draft: false
repo: nao1215/actions-hottest
marketplace: https://github.com/marketplace/actions/run-hottest
version: v1
dependentsNumber: "2"
---


Version updated for **nao1215/actions-hottest** to version **v1**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-hottest) to find the latest changes.

## Release notes

## actions-hottest - GitHub Actions for hottest
:octocat: GitHub Action for [nao1215/hottest](https://github.com/nao1215/hottest)

### Usage: sample workflow
You should set `args` argument same as `go test` command.  
`nao1215/actions-hottest` requires the permission to comment on pull requests in order to store test results as PR comments. Please enable the following settings: 
- [GitHub Repository Top Page] -> [Settings] -> [Actions] -> [General] -> [Read and write permissions] = ON

```yml
name: SampleTest

on:
  push:

jobs:
  sample_test:
    name: sample test

    strategy:
      matrix:
        platform: [ubuntu-latest]

    runs-on: ${{ matrix.platform }}

    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-go@v4
        with:
          go-version: "1"
          check-latest: true

      - name: Download dependencies
        run: go mod download

      - uses: nao1215/actions-hottest@v1
        with:
          # This argument is same as `go test` command.
          args: '-cover -coverpkg=./... -coverprofile=coverage.out ./...'
```

> [!IMPORTANT]  
> Please remember to include 'go mod download' in the workflow. If you forget, the hottest command may experience long waiting times when running tests, and the tests may not complete.


### Result
The old PR comments created by `hottest` will be deleted when creating a new PR comment.
#### Success case
![image](https://github.com/nao1215/actions-hottest/assets/22737008/96870d90-3ba1-4e9d-ae9d-8056439047a0)
![image](https://github.com/nao1215/actions-hottest/assets/22737008/aba94c5d-ee06-4777-8c94-5c87056f80a4)



#### Failure case
![image](https://github.com/nao1215/actions-hottest/assets/22737008/0fb1fa1f-dfd5-4148-a99b-7e2d94f33699)

![image](https://github.com/nao1215/actions-hottest/assets/22737008/eca0053b-9359-4970-8697-99ebad4636e0)

