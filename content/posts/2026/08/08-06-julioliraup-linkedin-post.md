---
title: LinkedIn Post
date: 2026-08-08 06:20:42 +00:00
tags:
  - julioliraup
  - GitHub Actions
draft: false
repo: https://github.com/julioliraup/linkedin-post
marketplace: https://github.com/marketplace/actions/linkedin-post
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of publishing text or image posts to LinkedIn using the official Posts API. It simplifies the integration by wrapping the LinkedIn Images and Posts APIs in a composite action, allowing users to publish content with minimal code. The action supports both text-only and text + image posts and is easy to set up by adding secrets for OAuth access tokens and URNs.
---


Version updated for **https://github.com/julioliraup/linkedin-post** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/linkedin-post) to find the latest changes.

## Action Summary

This GitHub Action automates the process of publishing text or image posts to LinkedIn using the official Posts API. It simplifies the integration by wrapping the LinkedIn Images and Posts APIs in a composite action, allowing users to publish content with minimal code. The action supports both text-only and text + image posts and is easy to set up by adding secrets for OAuth access tokens and URNs.

## What's Changed

First stable release of the **linkedin-post** GitHub Action — a lightweight, dependency-free way to publish content to LinkedIn directly from your CI/CD pipeline.

---

### ✨ Features

- **Text-only posts** — publish any text content to your LinkedIn profile with a single workflow step.
- **Image posts** — attach a local image (JPG, PNG or GIF) alongside your text using the LinkedIn Images API.
- **Official API only** — built on top of the LinkedIn REST [Posts API](https://learn.microsoft.com/en-us/linkedin/marketing/community-management/shares/posts-api) and [Images API](https://learn.microsoft.com/en-us/linkedin/marketing/community-management/shares/images-api). No third-party SDKs.
- **Composite Action** — uses plain Python + `requests`, no Docker image required. Fast cold start.
- **Configurable Python version** — pin any Python 3.x version via `python_version` input (default: `3.11`).
- **Structured outputs** — exposes `post_id` (LinkedIn URN) and `status` (`success` / `failure`) for downstream steps.

---

### 📥 Inputs

| Input | Required | Default | Description |
|---|---|---|---|
| `linkedin_access_token` | ✅ | — | OAuth 2.0 Access Token |
| `linkedin_person_urn` | ✅ | — | Author URN (`urn:li:person:...`) |
| `post_text` | ❌ | `"Posted automatically via GitHub Actions!"` | Body of the post |
| `image_path` | ❌ | `""` | Path to a local image file |
| `python_version` | ❌ | `3.11` | Python version on the runner |

---

### 📤 Outputs

| Output | Description |
|---|---|
| `post_id` | LinkedIn URN of the published post |
| `status` | `"success"` or `"failure"` |

---

### 📋 Minimal Example

```yaml
- name: Post to LinkedIn
  uses: julioliraup/linkedin-post@v1
  with:
    linkedin_access_token: ${{ secrets.LINKEDIN_TOKEN }}
    linkedin_person_urn:   ${{ secrets.LINKEDIN_URN }}
    post_text: "🚀 New release is live!"
```

---

### 🔧 API Version

Pinned to `LinkedIn-Version: 202508`.

---

### 📄 License

[GPL-3.0](LICENSE)

