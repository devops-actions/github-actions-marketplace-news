---
title: Set AWS Elastic Beanstalk Environment Variables
date: 2024-02-12 19:24:54 +00:00
tags:
  - SociallyAwkk
  - GitHub Actions
draft: false
repo: SociallyAwkk/set-aws-beanstalk-env-vars-action
marketplace: https://github.com/marketplace/actions/set-aws-elastic-beanstalk-environment-variables
version: v1.0.2
dependentsNumber: "?"
---


Version updated for **SociallyAwkk/set-aws-beanstalk-env-vars-action** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-aws-elastic-beanstalk-environment-variables) to find the latest changes.

## Release notes

# Set AWS Elastic Beanstalk Environment Variables v1.0.2

This release introduces the **Set AWS Elastic Beanstalk Environment Variables** GitHub Action. This action allows you to set environment variables in an AWS Elastic Beanstalk environment.

## Features

- **AWS Credentials**: The action requires AWS Access Key ID, AWS Secret Access Key, and AWS Region as inputs.
- **Application and Environment Details**: You need to provide the AWS Elastic Beanstalk Application Name and Environment Name.
- **Environment Variables**: You can set environment variables in the format `VAR1=value1 VAR2=value2`.

## Usage

```yaml
steps:
  - name: Set AWS Elastic Beanstalk Environment Variables
    uses: SociallyAwkk/set-aws-beanstalk-env-vars-action@v1.0.2
    with:
      aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
      aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
      aws_region: 'us-east-1'
      application_name: 'my-application'
      environment_name: 'my-environment'
      env_vars: 'VAR1=value1 VAR2=value2'
