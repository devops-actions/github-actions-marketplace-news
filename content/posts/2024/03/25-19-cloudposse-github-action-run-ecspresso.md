---
title: Run Ecspresso
date: 2024-03-25 19:05:37 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: cloudposse/github-action-run-ecspresso
marketplace: https://github.com/marketplace/actions/run-ecspresso
version: 0.2.0
dependentsNumber: "3"
---


Version updated for **cloudposse/github-action-run-ecspresso** to version **0.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-ecspresso) to find the latest changes.

## Release notes

<details>
  <summary>Partial Task Definition Support @Benbentwo (#15)</summary>

  ## what
* Application repositories can now run DB Migrations and other Ecspresso tasks while only having a partial task definition in their repository. e.g.
```json
{
  "containerDefinitions": [
    {
      "name": "app",
      "image": "{{ must_env `IMAGE` }}"
    }
  ],
  "cpu": "256",
  "memory": "1024"
}
```

The rest can be fetched from S3, which will be merged. This S3 Task Template is populated by our [ECS Service component](https://github.com/cloudposse/terraform-aws-components/tree/main/modules/ecs-service) with the variable `s3_mirror_name` which enables [these modules](https://github.com/cloudposse/terraform-aws-components/blob/main/modules/ecs-service/main.tf#L555-L585)

This action will then merge the task definition before running ecspresso commands.

## why
* We want the infrastructure repo to control the infrastructure things of the application deployment process, such as volumes (getting the ID is better through terraform than hardcoding). But we want the application (GitHub Repo) to decide the image, CPU, env or any other application related change. 

</details>

<details>
  <summary>Configure Renovate @renovate (#2)</summary>

  Welcome to [Renovate](https://togithub.com/renovatebot/renovate)! This is an onboarding PR to help you understand and configure settings before regular Pull Requests begin.

🚦 To activate Renovate, merge this Pull Request. To disable Renovate, simply close this Pull Request unmerged.



---
### Detected Package Files

 * `.github/workflows/auto-readme.yml` (github-actions)
 * `.github/workflows/feature-branch.yml` (github-actions)
 * `.github/workflows/main-branch.yaml` (github-actions)
 * `.github/workflows/test-negative.yml` (github-actions)
 * `.github/workflows/test-positive.yml` (github-actions)
 * `.github/workflows/test-validate-failed.yml` (github-actions)
 * `action.yml` (github-actions)

### Configuration Summary

Based on the default config's presets, Renovate will:

  - Start dependency updates only once this onboarding PR is merged
  - Enable Renovate Dependency Dashboard creation.
  - Use semantic commit type `fix` for dependencies and `chore` for all others if semantic commits are in use.
  - Ignore `node_modules`, `bower_components`, `vendor` and various test/tests directories.
  - Group known monorepo packages together.
  - Use curated list of recommended non-monorepo package groupings.
  - Apply crowd-sourced package replacement rules.
  - Apply crowd-sourced workarounds for known problems with packages.

🔡 Would you like to change the way Renovate is upgrading your dependencies? Simply edit the `renovate.json` in this branch with your custom config and the list of Pull Requests in the "What to Expect" section below will be updated the next time Renovate runs.

---

### What to Expect

With your current configuration, Renovate will create 4 Pull Requests:

<details>
<summary>Update aws-actions/configure-aws-credentials action to v2.1.0</summary>

  - Schedule: ["at any time"]
  - Branch name: `renovate/aws-actions-configure-aws-credentials-2.x`
  - Merge into: `main`
  - Upgrade [aws-actions/configure-aws-credentials](https://togithub.com/aws-actions/configure-aws-credentials) to `v2.1.0`


</details>

<details>
<summary>Update cloudposse/actions action to v0.33.0</summary>

  - Schedule: ["at any time"]
  - Branch name: `renovate/cloudposse-actions-0.x`
  - Merge into: `main`
  - Upgrade [cloudposse/actions](https://togithub.com/cloudposse/actions) to `0.33.0`


</details>

<details>
<summary>Update joellefkowitz/random-env action to v1.2.0</summary>

  - Schedule: ["at any time"]
  - Branch name: `renovate/joellefkowitz-random-env-1.x`
  - Merge into: `main`
  - Upgrade [joellefkowitz/random-env](https://togithub.com/joellefkowitz/random-env) to `v1.2.0`


</details>

<details>
<summary>Update actions/checkout action to v3</summary>

  - Schedule: ["at any time"]
  - Branch name: `renovate/actions-checkout-3.x`
  - Merge into: `main`
  - Upgrade [actions/checkout](https://togithub.com/actions/checkout) to `v3`


</details>

<br />

🚸 Branch creation will be limited to maximum 2 per hour, so it doesn't swamp any CI resources or overwhelm the project. See docs for `prhourlylimit` for details.


---

❓ Got questions? Check out Renovate's [Docs](https://docs.renovatebot.com/), particularly the Getting Started section.
If you need any further assistance then you can also [request help here](https://togithub.com/renovatebot/renovate/discussions).


---

This PR has been generated by [Mend Renovate](https://www.mend.io/free-developer-tools/renovate/). View repository job log [here](https://app.renovatebot.com/dashboard#github/cloudposse/github-action-run-ecspresso).

</details>

