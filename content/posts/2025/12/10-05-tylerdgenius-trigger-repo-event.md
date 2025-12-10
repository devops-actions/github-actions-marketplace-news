---
title: Trigger Rollout Workflow
date: 2025-12-10 05:39:37 +00:00
tags:
  - tylerdgenius
  - GitHub Actions
draft: false
repo: https://github.com/tylerdgenius/trigger-repo-event
marketplace: https://github.com/marketplace/actions/trigger-rollout-workflow
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/tylerdgenius/trigger-repo-event** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trigger-rollout-workflow) to find the latest changes.

## Release notes

<html><head></head><body><h1>Release Notes – v1.1.0</h1>
<h2>🚀 Commit SHA-Aware Release</h2>
<p>This update introduces first-class commit SHA support, enabling more deterministic and traceable microservice deployments.</p>
<hr>
<h2>✨ What’s New</h2>
<h3>🔑 Commit SHA Injection</h3>
<p>You can now pass a specific commit SHA into the dispatch payload, unlocking:</p>
<ul>
<li>
<p>Arbitrary commit deployments</p>
</li>
<li>
<p>Rollbacks to known SHAs</p>
</li>
<li>
<p>Deterministic deployments</p>
</li>
<li>
<p>GitOps-style workflows</p>
</li>
<li>
<p>Version-pinned multi-service rollouts</p>
</li>
</ul>
<p><strong>New input:</strong></p>
<ul>
<li>
<p><code inline="">commit-sha</code> (optional) – SHA of the commit to deploy</p>
</li>
</ul>
<hr>
<h2>🧩 New Inputs</h2>

Input | Description
-- | --
commit-sha | Optional commit SHA included in the dispatch


<hr>
<h2>📦 Updated Payload Structure</h2>
<p>The dispatched event now includes:</p>
<ul>
<li>
<p><code inline="">commitSha</code>: The commit SHA requested for deployment</p>
</li>
<li>
<p>Workflow and repository metadata</p>
</li>
<li>
<p>Service and namespace details</p>
</li>
<li>
<p>Requester information</p>
</li>
<li>
<p>Dispatch identifiers</p>
</li>
</ul>
<p>This gives target repositories full visibility into which commit version should be deployed.</p>
<hr>
<h2>🛠️ Usage Example</h2>
<pre><code class="language-yaml">- name: Trigger Rollout with Commit SHA
  uses: tylerdgenius/trigger-repo-event@v1.1.0
  with:
    github-token: ${{ secrets.ROLLOUT_REPO_TOKEN }}
    target-repo-owner: 'your-org'
    target-repo-name: 'rollout-repo'
    service-name: 'my-service'
    namespace: 'production'
    commit-sha: ${{ github.sha }}
</code></pre>
<hr>
<h2>🔧 Technical Improvements</h2>
<ul>
<li>
<p>Added commit-sha input validation</p>
</li>
<li>
<p>Inserted <code inline="">commitSha</code> into dispatch payload</p>
</li>
<li>
<p>Updated TypeScript typings</p>
</li>
<li>
<p>Improved payload construction logs</p>
</li>
<li>
<p>Enhanced error handling for invalid or missing SHAs</p>
</li>
</ul>
<hr>
<h2>🔐 Security &amp; Integrity</h2>
<ul>
<li>
<p>No additional permissions required</p>
</li>
<li>
<p>Commit SHA handled securely</p>
</li>
<li>
<p>SHA remains traceable across CI/CD and GitOps pipelines</p>
</li>
</ul>
<hr>
<h2>🎯 Use Cases Unlocked</h2>
<ul>
<li>
<p>Canary releases with fixed SHAs</p>
</li>
<li>
<p>Rollback pipelines</p>
</li>
<li>
<p>Promotion workflows across environments</p>
</li>
<li>
<p>GitOps-style declarative deployments</p>
</li>
<li>
<p>Multi-service version orchestration</p>
</li>
</ul>
<hr>
</body></html>
