---
title: Action Mailer ✨
date: 2026-08-10 14:37:21 +00:00
tags:
  - ksatriow
  - GitHub Actions
draft: false
repo: https://github.com/ksatriow/action-mailer
marketplace: https://github.com/marketplace/actions/action-mailer
version: v1.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  **Action Mailer** is a GitHub Action that sends professional emails using SMTP (Gmail, Outlook, SendGrid) or AWS SES. It offers HTML templates, attachments, CC/BCC support, and secure credential handling. Key features include automatic provider detection, rich logging, input validation, and security best practices.
---


Version updated for **https://github.com/ksatriow/action-mailer** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-mailer) to find the latest changes.

## Action Summary

**Action Mailer** is a GitHub Action that sends professional emails using SMTP (Gmail, Outlook, SendGrid) or AWS SES. It offers HTML templates, attachments, CC/BCC support, and secure credential handling. Key features include automatic provider detection, rich logging, input validation, and security best practices.

## What's Changed

# Action Mailer

> Send beautiful and configurable emails directly from **GitHub Actions**, via **SMTP** or **AWS SES**, with support for **HTML templates**, **CC**, **BCC**, and **attachments**.

---

## 📘 Overview

**Action Mailer** is a GitHub Action that allows you to send rich HTML emails, alerts, or reports as part of your CI/CD pipeline.  
You can use either:
- **SMTP** (e.g., Gmail, Outlook, Zoho, custom mail servers), or
- **AWS SES** (Amazon Simple Email Service)

Perfect for:
- Build/deploy success/failure notifications  
- Daily or weekly reports  
- Monitoring alerts  
- Custom workflow notifications

---

## 🚀 Features

✅ Supports **SMTP** and **AWS SES**  
✅ **HTML Templates** with [Handlebars](https://handlebarsjs.com)  
✅ **CC / BCC** recipients  
✅ **Attachments** with wildcard support (`*.pdf`)  
✅ **Dynamic variables** in templates  
✅ Automatic provider detection (SMTP or SES)  
✅ Emoji-enhanced log output for better readability  

---

## 🧩 Inputs

| Name | Description | Required | Default |
|------|--------------|-----------|----------|
| `smtp-server` | SMTP hostname (e.g. `smtp.gmail.com`) | ❌ | |
| `smtp-port` | SMTP port number (e.g. 465 or 587) | ❌ | `465` |
| `smtp-secure` | Use secure TLS connection (true/false) | ❌ | `true` |
| `aws-region` | AWS region for SES | ❌ | |
| `username` | SMTP username or AWS access key ID | ❌ | |
| `password` | SMTP password or AWS secret key | ❌ | |
| `from-email` | Sender email address | ✅ | |
| `to-email` | Recipient email(s), comma-separated | ✅ | |
| `cc-email` | CC recipients, comma-separated | ❌ | |
| `bcc-email` | BCC recipients, comma-separated | ❌ | |
| `subject` | Email subject line | ✅ | |
| `body` | Plain text email body | ❌ | |
| `html-template` | Path to HTML template (Handlebars supported) | ❌ | |
| `template-variables` | JSON string containing key-value pairs for template replacement | ❌ | |
| `attachments` | File paths or glob patterns for attachments | ❌ | |

---

## ✉️ Example (SMTP)

```yaml
- name: Send Email
  uses: yourusername/action-mailer@v1
  with:
    smtp-server: smtp.gmail.com
    smtp-port: 465
    smtp-secure: true
    from-email: youremail@gmail.com
    to-email: recipient@example.com
    username: ${{ secrets.SMTP_USERNAME }}
    password: ${{ secrets.SMTP_PASSWORD }}
    subject: "✅ Build Success"
    html-template: "./templates/success.html"
    template-variables: '{"name":"Satrio","job_name":"CI Build","status":"SUCCESS","date":"'"$(date -u)"'"}'

**Full Changelog**: https://github.com/ksatriow/action-mailer/commits/v1.0.0
