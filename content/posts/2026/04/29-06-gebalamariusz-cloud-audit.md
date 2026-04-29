---
title: cloud-audit - AWS Security Scanner
date: 2026-04-29 06:09:15 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v2.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v2.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

The `cloud-audit` GitHub Action is an open-source CLI tool designed to identify and analyze AWS attack paths, IAM privilege escalation risks, and their root causes. By simulating fixes and prioritizing remediation based on impact, it helps users efficiently address security vulnerabilities and prevent critical threats. Its key capabilities include detecting attack chains, providing actionable remediation plans, and enabling proactive security improvements in AWS environments.

## What's Changed


### Added

- **IAM Privilege Escalation - Tier 1 + Tier 2 + Tier 3**: 39 new detection methods, total 64 across 9 categories (was 25/6). Coverage of all known IAM privilege escalation paths in pathfinding.cloud.

  Tier 1 (20 methods - PassRole variants + resource policy abuse + deny removal):
  - PassRole + Glue variants: `glue:CreateJob`, `glue:UpdateJob`, `glue:CreateSession`
  - PassRole + ECS variants: `ecs:UpdateService`, `ecs:RegisterTaskDefinition` (auto-deploy)
  - PassRole + CloudFormation: `cloudformation:UpdateStack`
  - PassRole + EC2 instance profile hijack: `ec2:AssociateIamInstanceProfile`, `ec2:ReplaceIamInstanceProfileAssociation`
  - PassRole + Lambda event source mapping
  - Instance profile role swap (no PassRole): `iam:RemoveRoleFromInstanceProfile` + `iam:AddRoleToInstanceProfile`
  - **NEW Resource Policy Abuse category**: `lambda:AddPermission`, `lambda:AddLayerVersionPermission`
  - IAM deny-removal patterns: `iam:DeleteRolePolicy`, `iam:DeleteUserPolicy`, `iam:DetachRolePolicy`, `iam:DetachUserPolicy`, `iam:CreateServiceLinkedRole`
  - Credential access extensions: `iam:UpdateAccessKey`, `iam:DeactivateMFADevice`, `iam:DeleteVirtualMFADevice` (MFA bypass paths)

  Tier 2 (12 methods - new compute primitives + SSM):
  - PassRole + new services: `codebuild:CreateProject`, `apprunner:CreateService`, `sagemaker:CreateNotebookInstance`, `sagemaker:CreateProcessingJob`, `bedrock:CreateAgent`, `states:CreateStateMachine`
  - **NEW Compute Hijack category**: `ssm:SendCommand`, `ssm:StartSession` (managed EC2 abuse), `ec2-instance-connect:SendSSHPublicKey` (60s SSH key push), `codebuild:UpdateProject` (hijack existing CI build), `apprunner:UpdateService` (replace running container)
  - Credential access extension: `ssm:GetParameter` (read secrets from Parameter Store)

  Tier 3 (4 methods - lateral movement via AssumeRole graph - NEW pipeline):
  - **NEW Lateral AssumeRole category** with new module `iam_trust_graph.py` parsing `AssumeRolePolicyDocument` and building a directed graph
  - `AssumeRole:Direct` - 1-hop assume from a principal to a role with admin permissions
  - `AssumeRole:Chain` - multi-hop assume chain (up to 4 hops) ending at admin
  - `AssumeRole:WildcardTrust` - any role with `Principal: "*"` trust policy
  - `AssumeRole:CrossAccountRoot` - any role trusting external account `:root`
  - Same-account root expansion: roles trusting `arn:aws:iam::SAME:root` are reachable by any principal in account with `sts:AssumeRole`
  - Bare 12-digit account IDs are normalized to `:root` ARNs
  - Trust conditions (MFA / ExternalId / SourceArn) are flagged but not semantically evaluated


