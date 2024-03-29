---
title: VK Teams Notification
date: 2024-03-29 11:25:41 +00:00
tags:
  - dosymep
  - GitHub Actions
draft: false
repo: dosymep/vk-teams-action
marketplace: https://github.com/marketplace/actions/vk-teams-notification
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **dosymep/vk-teams-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vk-teams-notification) to find the latest changes.

## Release notes

# Publish first release

GitHub Action for sending a VK Teams notification message.

## Inputs

- `to` **Required** chat id.
- `token` **Required**  bot token.
- `api_url` **Required** bot api url. Default `https://myteam.mail.ru/bot/v1`.
- `message` **Optional** custom message.
- `message_file` **Optional** overwrite the default message template with the contents of the specified file.
- `format` **Optional** message format: `MarkdownV2` or `HTML`. Default `"MarkdownV2"`. See [text formatting](https://teams.vk.com/botapi/tutorial/#Text_Format).
- `file_path` **Optional** send file.

## Outputs

- `response` VK Teams server response.

## Example usage

Default message

```yml
- name: Send message (default)
  uses: dosymep/vk-teams-action@v1
  with:
    to: ${{ secrets.VK_TEAMS_TO }}
    token: ${{ secrets.VK_TEAMS_TOKEN }}
    api_url: ${{ secrets.VK_TEAMS_API_URL }}
```

Custom message

```yml
- name: Send message (custom)
  uses: dosymep/vk-teams-action@v1
  with:
    to: ${{ secrets.VK_TEAMS_TO }}
    token: ${{ secrets.VK_TEAMS_TOKEN }}
    api_url: ${{ secrets.VK_TEAMS_API_URL }}
    message: |
       [#42](https://github.com/${{ github.repository }})
       [repository](https://github.com/${{ github.repository }})
```
