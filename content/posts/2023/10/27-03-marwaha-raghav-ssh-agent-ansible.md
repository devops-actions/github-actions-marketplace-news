---
title: SSH Agent Setup
date: 2023-10-27 03:15:06 +00:00
tags:
  - marwaha-raghav
  - GitHub Actions
draft: false
repo: marwaha-raghav/ssh-agent-ansible
marketplace: https://github.com/marketplace/actions/ssh-agent-setup
version: v0.2.1
dependentsNumber: "1"
---


Version updated for **marwaha-raghav/ssh-agent-ansible** to version **v0.2.1**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssh-agent-setup) to find the latest changes.

## Release notes

This release features changes with removal of capture_out flag from subprocess to ensure comptability with version below python3.7

Any Private Key with a passphrase requires the passphrase to be added interactively for every host specified in the ansible inventory So, in order to make this process non-interactive at the shell level and easy to use IaC CI pipelines through Github Actions, This tool/action runs ssh-agent, generates a file with specified passphrase for ssh_ask_pass and then adds the key and passphrase with ssh-add to the ssh-agent non-interactively.

This Action will

Start ssh-agent.
Export custom bind able SSH_AUTH_SOCKET env variable.
Generate an executable file with the ansible SSH Key Passphrase (ssh_ask_pass requires aan executable file to be passed as an env var)
Load SSH Key with non-interactively through stdin to ssh-agent using ssh-add and also export the SSH_ASK_PASS env var with the passphrase containing executable file.
On failure the action will return a non-zero code.
