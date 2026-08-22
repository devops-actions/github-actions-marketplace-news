---
title: VentureX ERP & CRM Deploy
date: 2026-08-22 21:59:42 +00:00
tags:
  - SHIVAM73566
  - GitHub Actions
draft: false
repo: https://github.com/SHIVAM73566/venturex-deploy-action
marketplace: https://github.com/marketplace/actions/venturex-erp-crm-deploy
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the deployment of VentureX ERP & CRM to a server. It handles installation, database setup, application deployment, and configuration of Nginx with Let's Encrypt SSL, providing a seamless automated process for deploying VentureX ERP & CRM applications.
---


Version updated for **https://github.com/SHIVAM73566/venturex-deploy-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/venturex-erp-crm-deploy) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment of VentureX ERP & CRM to a server. It handles installation, database setup, application deployment, and configuration of Nginx with Let's Encrypt SSL, providing a seamless automated process for deploying VentureX ERP & CRM applications.

## What's Changed

VentureX ERP & CRM - GitHub Action

Deploy VentureX ERP & CRM - AI-Powered Business Operating System to your server in one click.

What This Action Does
- Installs PHP 8.3, MySQL 8.0, Nginx, Node.js 20, Composer 2
- Sets up database and runs migrations
- Deploys the application
- Configures Nginx web server
- Enables HTTPS with Let's Encrypt SSL
- Seeds demo data

Quick Start
```yaml
- uses: SHIVAM73566/venturex-deploy-action@v1
  with:
    server-host: ${{ secrets.SERVER_HOST }}
    server-key: ${{ secrets.SERVER_KEY }}
    domain: erp.yourdomain.com
    db-password: ${{ secrets.DB_PASSWORD }}
    
    
