---
title: Modify File Content
date: 2024-02-23 11:08:37 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-modify-file-content
marketplace: https://github.com/marketplace/actions/modify-file-content
version: v2.0.0
dependentsNumber: "295"
---


Version updated for **jaywcjlove/github-action-modify-file-content** to version **v2.0.0**.
- This action is used across all versions by **295** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/modify-file-content) to find the latest changes.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor) 

Documentation v2.0.0: https://raw.githack.com/jaywcjlove/github-action-modify-file-content/2355740/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-modify-file-content/compare/v1.4.5...v2.0.0 

- 📖 doc: update test/overwrite.file.md. 5c42a9a @github-actions-bot
- 📖 doc: update README.md. 5120c96 @github-actions-bot
- 💄 chore: bump node16 to node20 56ef8a6 @jaywcjlove
- 📖 doc: update test/overwrite.file.md. 967d800 @github-actions-bot
- 📖 doc: update README.md. b83a2bf @github-actions-bot

```yml
- name: Modify README.md
  uses: jaywcjlove/github-action-modify-file-content@main
  with:
    path: README.md
```

`README.md` file content

```markdown
update time <!--GAMFC-->2022-10-26 14:39:35<!--GAMFC-END-->
```

Replace the content between `<!--GAMFC-->` and 
`<!--GAMFC-END-->`.
