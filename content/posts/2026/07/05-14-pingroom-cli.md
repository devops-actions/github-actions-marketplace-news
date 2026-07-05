---
title: PingRoom Notify
date: 2026-07-05 14:54:13 +00:00
tags:
  - pingroom
  - GitHub Actions
draft: false
repo: https://github.com/pingroom/cli
marketplace: https://github.com/marketplace/actions/pingroom-notify
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pingroom/cli** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pingroom-notify) to find the latest changes.

## What's Changed

Turn a human decision into a shell gate. This release adds the **Question** commands to the CLI, alongside the existing `ping`.

### New commands
- **`ask`** — ask a human a question in a room; with `--wait`, block until they tap an answer on their phone. Prints the chosen value to stdout and encodes the outcome in the exit code (`0` answered · `3` expired · `4` cancelled), so it drops straight into a shell conditional.
- **`watch`** — block on an existing question until it resolves.
- **`list`** — list your agent's questions by state.
- **`cancel`** — withdraw a pending question.

```bash
if [ "$(pingroom ask --token "$PINGROOM_TOKEN" --room ab12cd --wait 
      -p 'Deploy 1.4.0 to production?')" = approve ]; then
  ./deploy-prod.sh
fi
```

### The Action
The `PingRoom Notify` action sends a ping on deploy/CI and now runs on `@pingroom/cli@0.2.0`:

```yaml
- uses: pingroom/cli@v0.2.0
  with:
    webhook-url: ${{ secrets.PINGROOM_WEBHOOK_URL }}
    message: "🚀 Deployed ${{ github.sha }}"
```

`ping` is unchanged and fully backward-compatible.
