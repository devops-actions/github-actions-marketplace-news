---
title: Modify File Content
date: 2024-05-12 11:30:55 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-modify-file-content
marketplace: https://github.com/marketplace/actions/modify-file-content
version: v2.0.3
dependentsNumber: "374"
---


Version updated for **jaywcjlove/github-action-modify-file-content** to version **v2.0.3**.
- This action is used across all versions by **374** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/modify-file-content) to find the latest changes.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor) 

Documentation v2.0.3: https://raw.githack.com/jaywcjlove/github-action-modify-file-content/792710d/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-modify-file-content/compare/v2.0.2...v2.0.3 

- 📖 doc: update test/overwrite.file.md. eceee9a @github-actions-bot
- 📖 doc: update README.md. 785f929 @github-actions-bot
- 💢 ci: update workflows config. 62bb91c @jaywcjlove
- 📖 doc: update test/overwrite.file.md. 6dddc59 @github-actions-bot
- 📖 doc: update README.md. 95552f2 @github-actions-bot
- 💄 chore: bump node16 to node20 7973ef4 @jaywcjlove

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
