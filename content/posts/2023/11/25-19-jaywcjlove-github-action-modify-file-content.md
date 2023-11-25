---
title: Modify File Content
date: 2023-11-25 19:14:16 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-modify-file-content
marketplace: https://github.com/marketplace/actions/modify-file-content
version: v1.4.5
dependentsNumber: "229"
---


Version updated for **jaywcjlove/github-action-modify-file-content** to version **v1.4.5**.
- This action is used across all versions by **229** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/modify-file-content) to find the latest changes.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor) 

Documentation v1.4.5: https://raw.githack.com/jaywcjlove/github-action-modify-file-content/dab08d6/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-modify-file-content/compare/v1.4.4...v1.4.5 

- 📖 doc: update test/overwrite.file.md. e69cf33 @github-actions-bot
- 📖 doc: update README.md. 91debd5 @github-actions-bot
- 💄 chore(deps): update dependency lint-staged to ~13.2.0 (#9) 9b61b03 @renovate-bot
- 📖 doc: update test/overwrite.file.md. 7478ef3 @github-actions-bot
- 📖 doc: update README.md. c7dbae6 @github-actions-bot
- 💄 chore: add sponsor badge. dc2f1d4 @jaywcjlove

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
