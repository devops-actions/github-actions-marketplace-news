---
title: tmtv — Debug with SSH
date: 2026-03-12 13:34:35 +00:00
tags:
  - sa3lej
  - GitHub Actions
draft: false
repo: https://github.com/sa3lej/action-tmtv
marketplace: https://github.com/marketplace/actions/tmtv-debug-with-ssh
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sa3lej/action-tmtv** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tmtv-debug-with-ssh) to find the latest changes.

## Action Summary

The `action-tmtv` GitHub Action enables users to SSH into their CI runners for interactive debugging during workflows. It serves as a modern replacement for `action-tmate`, offering an updated foundation with tmux 3.6a, active maintenance, and enhanced features like password protection and a web viewer. This action simplifies debugging by automating the setup of interactive sessions, allowing users to inspect logs, run commands, and resume pipelines seamlessly.

## Release notes

A drop-in replacement for action-tmate — maintained, modern, and built on tmux 3.6a instead of 2.4.

Your CI job fails. You read the logs. You add `echo` statements. You push. You wait. You read more logs. Stop. Just SSH in and fix it.

## What's new

- **One-line migration.** Replace `mxschmitt/action-tmate@v3` with `sa3lej/action-tmtv@v1`. Everything else stays the same.
- **tmux 3.6a.** Nine years of tmux improvements that action-tmate never got — popup menus, extended keys, better mouse support.
- **No Docker overhead.** Composite action runs directly on the runner. No image pull, no container startup.
- **Zero dependencies.** Static binary drops in and runs on any Linux runner.
- **Web viewer included.** Share a link with a teammate who doesn't have SSH. They watch in the browser, you debug in the terminal.
- **Self-hosted server support.** Point `server-host` at your own tmtv-server for private infrastructure.
- **Password protection.** Lock down your debug session when you need to.
- **Access control.** Set `limit-access-to-actor: true` to restrict SSH access to the user who triggered the workflow.
- **Configurable timeout.** Sessions close automatically — no more forgotten runners burning minutes.

## Quick start

    - uses: sa3lej/action-tmtv@v1

## Migration from action-tmate

    - uses: mxschmitt/action-tmate@v3
    + uses: sa3lej/action-tmtv@v1

## Links

- [action-tmtv repository](<https://github.com/sa3lej/action-tmtv>)
- [tmtv — terminal sharing over SSH](<https://tmtv.se>)
---

If tmtv is useful to you, [buy me a coffee](<https://buymeacoffee.com/lejo>).

