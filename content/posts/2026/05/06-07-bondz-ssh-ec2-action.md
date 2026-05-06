---
title: Create an SSH Session to an EC2 instance via SSM
date: 2026-05-06 07:30:13 +00:00
tags:
  - bondz
  - GitHub Actions
draft: false
repo: https://github.com/bondz/ssh-ec2-action
marketplace: https://github.com/marketplace/actions/create-an-ssh-session-to-an-ec2-instance-via-ssm
version: v3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/bondz/ssh-ec2-action** to version **v3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-an-ssh-session-to-an-ec2-instance-via-ssm) to find the latest changes.

## Action Summary

The "SSH For EC2 Action" is a GitHub Action that automates the establishment of secure, temporary SSH connections to AWS EC2 instances using AWS Systems Manager (SSM) and EC2 Instance Connect (EIC). It eliminates the need for persistent SSH keys, open inbound ports, and manual setup by generating ephemeral keys, using IAM-based access control, and leveraging SSM for tunneling traffic securely. This action simplifies remote EC2 instance management while enhancing security and auditability through AWS CloudTrail logging.

## What's Changed

## Breaking changes
- IAM policy for deployment no longer requires `arn:aws:ssm:*:*:document/AWS-RunShellScript` but now requires `ec2-instance-connect:SendSSHPublicKey`

```diff
 {
 	"Version": "2012-10-17",
 	"Statement": [
 		{
 			"Effect": "Allow",
 			"Action": [
 				"ssm:StartSession"
 			],
 			"Resource": [
 				"arn:aws:ssm:*:*:document/AWS-StartSSHSession",
				"arn:aws:ec2:*:*:instance/i-ec2-instance-id"
 			]
 		},
 		{
 			"Effect": "Allow",
-			"Action": "ssm:SendCommand",
-			"Resource": [
-				"arn:aws:ssm:*:*:document/AWS-RunShellScript",
-				"arn:aws:ec2:*:*:instance/i-ec2-instance-id"
-			]
+			"Action": "ec2-instance-connect:SendSSHPublicKey",
+			"Resource": "arn:aws:ec2:*:*:instance/i-ec2-instance-id",
+			"Condition": {
+				"StringEquals": {
+					"ec2:osuser": "remote-user"
+				}
+			}
 		}
 	]
 }
```

> [!CAUTION]
> The `Condition` block of the policy is not required but is recommended. Your deployment should only be able to login as the specified user, preventing privilege escalation.

## What's Changed
* Switch to ephemeral keys with send-ssh-public-key by @bondz in https://github.com/bondz/ssh-ec2-action/pull/60

**Full Changelog**: https://github.com/bondz/ssh-ec2-action/compare/v2.0.1...v3.0.0
