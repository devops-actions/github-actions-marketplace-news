---
title: Cloud_Native_Task_Manager Deploy
date: 2026-03-26 14:01:45 +00:00
tags:
  - NadeeshaMedagama
  - GitHub Actions
draft: false
repo: https://github.com/NadeeshaMedagama/cloud_native_task_manager
marketplace: https://github.com/marketplace/actions/cloud_native_task_manager-deploy
version: v0.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/NadeeshaMedagama/cloud_native_task_manager** to version **v0.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud_native_task_manager-deploy) to find the latest changes.

## Action Summary

The "Cloud_Native_Task_Manager" is a production-ready, cloud-native task management platform built using a microservices architecture with Spring Boot, PostgreSQL, and Next.js. It automates the deployment, orchestration, and management of independent services (e.g., authentication, task handling, and user management) and provides a scalable solution for task tracking with integrated CI/CD pipelines for testing, building, and security scanning. Key capabilities include Docker/Kubernetes-based container orchestration, service discovery, API gateway routing, and a modern frontend for seamless user interaction.

## Release notes

## 🚀 Cloud_Native_Task_Manager v0.0.1

### Usage

```yaml
- name: Deploy Task Management Platform
  uses: NadeeshaMedagama/cloud_native_task_manager@v0.0.1
  with:
    database-password: {{ secrets.DB_PASSWORD {{ '}}' }}
    jwt-secret: {{ secrets.JWT_SECRET {{ '}}' }}
    api-url: "http://localhost:8080/api"
```

See [README](https://github.com/NadeeshaMedagama/cloud_native_task_manager) for full documentation.


## What's Changed
* deps(frontend): bump tailwindcss from 3.4.19 to 4.2.2 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/14
* deps(frontend): bump date-fns from 3.6.0 to 4.1.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/13
* deps(frontend): bump @types/node from 20.19.37 to 25.5.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/11
* ci: bump docker/build-push-action from 6 to 7 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/5
* ci: bump docker/login-action from 3 to 4 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/4
* ci: bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/3
* ci: bump docker/metadata-action from 5 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/1
* ci: bump actions/setup-node from 4 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/2
* deps(frontend): bump lucide-react from 0.344.0 to 0.577.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/12
* deps(frontend): bump eslint from 8.57.1 to 10.1.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/10
* deps(frontend): bump @headlessui/react from 1.7.19 to 2.2.9 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/9
* deps(frontend): bump the react group in /frontend with 4 updates by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/8
* deps(frontend): bump the next-js group in /frontend with 2 updates by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/7

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/14

**Full Changelog**: https://github.com/NadeeshaMedagama/cloud_native_task_manager/commits/v0.0.1

## What's Changed
* deps(frontend): bump tailwindcss from 3.4.19 to 4.2.2 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/14
* deps(frontend): bump date-fns from 3.6.0 to 4.1.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/13
* deps(frontend): bump @types/node from 20.19.37 to 25.5.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/11
* ci: bump docker/build-push-action from 6 to 7 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/5
* ci: bump docker/login-action from 3 to 4 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/4
* ci: bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/3
* ci: bump docker/metadata-action from 5 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/1
* ci: bump actions/setup-node from 4 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/2
* deps(frontend): bump lucide-react from 0.344.0 to 0.577.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/12
* deps(frontend): bump eslint from 8.57.1 to 10.1.0 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/10
* deps(frontend): bump @headlessui/react from 1.7.19 to 2.2.9 in /frontend by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/9
* deps(frontend): bump the react group in /frontend with 4 updates by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/8
* deps(frontend): bump the next-js group in /frontend with 2 updates by @dependabot[bot] in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/7

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/NadeeshaMedagama/cloud_native_task_manager/pull/14

**Full Changelog**: https://github.com/NadeeshaMedagama/cloud_native_task_manager/commits/v0.0.1
