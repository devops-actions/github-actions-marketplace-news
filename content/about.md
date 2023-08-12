---
title: "About"
menu:
  main:
    weight: 1
type: single
---
GitHub Actions does not have a way to stay up to date with the extension updates or new extensions being added. This site will show you the updates and has an RSS feed option to see updates in your favorite RSS tool. Made by [Rob Bos](https://github.com/rajbos).

This builds on the work done for scanning the actions marketplace, to dive deeper into:
- News and Updates
- Composition: Node based, Docker container, or Composite action
- Dependencies used (and what is vulnerable!)
- Last updated, what will break with the Node16 breaking change in the environment
- Verified or not

Read more on this research on [devopsjournal.io](https://devopsjournal.io/blog/2022/09/18/Analysing-the-GitHub-marketplace).
You can check the latest run of the marketplace composition [here](https://github.com/rajbos/actions-marketplace-checks/actions/workflows/report.yml), where you can find the latest report in the summary.

# Examples from the scan on 12-08-2023:
```mermaid
flowchart LR
  A[19993 actions]-->B[18229 action.yml - 91.2%]
  A-->C[1189 action.yaml - 5.9%]
  A-->D[203 Dockerfile - 1%]
  A-->E[0 dockerfile - 0%]
```

----

```mermaid
flowchart LR
  A[19993 Actions]-->B[8995 Node based]
  A-->C[6592 Docker based]
  A-->D[3716 Composite actions]
  C-->E[5574 Local Dockerfile]
  C-->F[1018 Remote image]
  A-->G[0 Unknown]
  B-->H[4551 Node 12 - 50.6%]
  B-->I[1 Node 13 - 0%]
  B-->J[6 Node 14 - 0.1%]
  B-->K[4430 Node 16 - 49.2%]
  B-->L[7 Node 18 - 0.1%]
```
