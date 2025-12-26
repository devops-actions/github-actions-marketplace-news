---
title: Install Noto Sans TC fonts
date: 2025-12-26 05:29:51 +00:00
tags:
  - doggy8088
  - GitHub Actions
draft: false
repo: https://github.com/doggy8088/install-noto-sans-tc-fonts-action
marketplace: https://github.com/marketplace/actions/install-noto-sans-tc-fonts
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/doggy8088/install-noto-sans-tc-fonts-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-noto-sans-tc-fonts) to find the latest changes.

## Action Summary

The `install-noto-sans-tc-fonts-action` GitHub Action automates the installation of the Noto Sans CJK TC font on Linux-based GitHub runners, ensuring consistent rendering of Traditional Chinese characters and preventing issues like missing glyphs or inconsistent font styles during tasks like testing, report generation, or screenshots. It supports Ubuntu runners and allows optional installation of additional font weights, providing a reliable solution for environments that require robust support for Traditional Chinese typography.

## Release notes

此版本提供一個可在 **GitHub Actions 的 Linux runner（Ubuntu/Debian 系，具備 `apt` 與 `sudo`）** 上快速安裝 **Noto Sans CJK（思源黑體）繁體中文（TC）** 字型的 Composite Action，降低 CI 測試、產報表或截圖時出現「中文字變方框」與字形不一致的風險。

### 亮點功能
- 在 Linux runner 上安裝 **Noto Sans CJK TC** 字型（預設安裝 `fonts-noto-cjk`：Regular/Bold）
- 可選擇額外安裝更多字重（`fonts-noto-cjk-extra`：Thin/Light/Medium...）
- 適用 GitHub-hosted Ubuntu runners（已於 CI 測試）：
  - `ubuntu-20.04` / `ubuntu-22.04` / `ubuntu-24.04` / `ubuntu-latest`

### 使用方式
````yaml
steps:
  - uses: doggy8088/install-noto-sans-tc-fonts-action@v1
````

### Inputs
- `extra`（預設：`'false'`）
  - `'true'`：額外安裝 `fonts-noto-cjk-extra`
  - 其他值：不啟用（建議使用字串 `'true'` / `'false'`）

範例：
````yaml
steps:
  - uses: doggy8088/install-noto-sans-tc-fonts-action@v1
    with:
      extra: 'true'
````

### 驗證安裝
````bash
fc-list | grep "Noto Sans CJK TC"
````

### 注意事項
- 若出現日文/韓文漢字變體（例如「復」字差異），請在應用程式中明確指定字體（如 `"Noto Sans CJK TC"`／`"Noto Sans TC"`），或調整字型 fallback / 語系優先順序。
- 這是系統套件安裝流程，建議在 workflow 為步驟加上 `timeout-minutes`，並在後續步驟使用 `if: always()` 以降低偶發套件源問題影響。

### 供應鏈安全建議
- 想避免 tag 被移動，可將 `uses:` 固定到特定 commit SHA（最嚴格，但需自行升級）。
- 想保持便利性，可使用主版本分支 `@v1`。

### 變更摘要
- **新增**：GitHub Action（Composite）— 安裝 Noto Sans CJK TC 字型（可選 extra 字重）
- **相容性**：Linux runner（Ubuntu/Debian，需 `apt`/`sudo`）
- **破壞性變更**：無（首次釋出）
