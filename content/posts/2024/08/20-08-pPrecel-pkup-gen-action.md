---
title: PKUPgen
date: 2024-08-20 08:46:35 +00:00
tags:
  - pPrecel
  - GitHub Actions
draft: false
repo: pPrecel/pkup-gen-action
marketplace: https://github.com/marketplace/actions/pkupgen
version: v1
dependentsNumber: "?"
---


Version updated for **pPrecel/pkup-gen-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pkupgen) to find the latest changes.

## Release notes

#

``` text
.______    __  ___  __    __  .______
|   _  \  |  |/  / |  |  |  | |   _  \
|  |_)  | |  '  /  |  |  |  | |  |_)  |__ _  ___ _ __
|   ___/  |    <   |  |  |  | |   ___// _' |/ _ \ '_ \
|  |      |  .  \  |  '--'  | |  |   | (_| |  __/ | | |
| _|      |__|\__\  \______/  | _|    \__, |\___|_| |_|action
                                      |___/
```

---

Easy-to-use action allows generating PKUP reports and sending them zipped using the most popular email servers.

## Configuration

Action requires the `.pkupcompose.yaml` file located in the repository root directory and can be configured by passing additional (not required) inputs.

### Usage

```yaml
- uses: pPrecel/pkup-gen-action@v1
    with:
      # if true use the `.pkupcompose.yaml` file to generate reports
      # (default: `treu`)
      generate: 'true'

      # if true send emails to reports owners described in the `.pkupcompose.yaml` file 
      # based on the `.reports[].email` fields
      # (default: `true`)
      send-emails: 'true'

      # timestamp used to generate reports - foramt 02.01.2006
      # (default: 19th day of past month)
      since: "02.19.2024"
      
      # timestamp used to generate reports - foramt 02.01.2006
      # (default: 18th day of actual month)
      until: "03.18.2024"
```

### .pkupcompose.yaml

The action uses the `.pkupcompose.yaml` file documented [here](https://github.com/pPrecel/pkup-gen/tree/main/examples/compose-and-send).

