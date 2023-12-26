---
title: Setup SSH for EC2
date: 2023-12-26 19:19:44 +00:00
tags:
  - omarhosny206
  - GitHub Actions
draft: false
repo: omarhosny206/setup-ssh-for-ec2
marketplace: https://github.com/marketplace/actions/setup-ssh-for-ec2
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **omarhosny206/setup-ssh-for-ec2** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ssh-for-ec2) to find the latest changes.

## Release notes

# Release v1.0.0 - Initial Release

🎉 We are excited to announce the initial release of the "Setup SSH for EC2" GitHub Action! This action simplifies the process of setting up SSH for connecting to an EC2 instance.

## Key Features:
- SSH Configuration:
    - Automatically configures SSH settings based on provided private key and EC2 instance URL.
    
## How to Use:
- In your workflow, use the Setup SSH for EC2 action.
- Provide the required input parameters:
   - EC2_SSH_PRIVATE_KEY: The private key of EC2 instance for SSH connection.
   - EC2_URL: The URL of the EC2 instance.

## Usage:
```yaml
name: Setup SSH for EC2 instance

on:
  push:
    branches:
      - master

jobs:
  setup-ssh:
    runs-on: ubuntu-latest
    env:
      EC2_SSH_PRIVATE_KEY: ${{ secrets.EC2_SSH_PRIVATE_KEY }}
      EC2_URL: ${{ secrets.EC2_URL }}
      EC2_USERNAME: ${{ secrets.EC2_USERNAME }}
    steps:
    - name: Setup SSH for EC2
      uses: omarhosny206/setup-ssh-for-ec2@v1.0.0
      with:
          EC2_SSH_PRIVATE_KEY: $EC2_SSH_PRIVATE_KEY
          EC2_URL: $EC2_URL
    # then you can run commands/scripts directly on the EC2 instance e.g.:
    - name: Create a new file on the EC2 instance with "hello-world"
      run: ssh -o StrictHostKeyChecking=no $EC2_USERNAME@$EC2_URL "echo "hello-world" >> new_file.txt"
```

