---
title: Merry Gitmas
date: 2026-06-17 07:38:25 +00:00
tags:
  - chromeheartz
  - GitHub Actions
draft: false
repo: https://github.com/chromeheartz/merry-gitmas
marketplace: https://github.com/marketplace/actions/merry-gitmas
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/chromeheartz/merry-gitmas** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/merry-gitmas) to find the latest changes.

## What's Changed

## 🎄 Merry Gitmas v1

Grow a **pixel-art Christmas tree from your GitHub contributions this year** — a self-updating SVG widget for your profile README.

올해 내 GitHub 커밋으로 자라나는 **픽셀 크리스마스 트리** — 프로필 README에 넣는 자동 갱신 SVG 위젯입니다.

<p align="center">
  <img width="260" alt="default theme" src="https://github.com/user-attachments/assets/b57377d2-2976-495e-9709-f62dc001c206" />
  <img width="260" alt="space theme" src="https://github.com/user-attachments/assets/bffc5ef9-bdd8-4148-9869-106e069e44cc" />
  <br/>
  <img width="260" alt="winter theme" src="https://github.com/user-attachments/assets/149d7790-6f8f-4c97-8de8-8ee9253a4443" />
  <img width="260" alt="sky theme" src="https://github.com/user-attachments/assets/24d0e6c6-0f6c-4f66-acaa-3d4410ff0570" />
</p>

### ✨ Features

- 🎁 **Grows with your contributions** — 커밋이 쌓일수록 눈이 덮이고 장식이 하나씩 해금, 300커밋에 꼭대기 왕별 👑
- 🌌 **Animated SVG backgrounds** (not GIF) — 별 반짝임 · 흐르는 구름 · 유성 · 내리는 눈
- 🎨 **4 themes** — `default` 🌙 / `space` 🪐 / `winter` 🏔️ / `sky` ☁️
- 🧩 **Per-user randomized layout** — 아이디 기반이라 사람마다 트리 모양이 다름
- 🖌️ **100% original pixel art**, MIT licensed

### 🚀 Usage

```yaml
- uses: chromeheartz/merry-gitmas@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    theme: default      # default | space | winter | sky
    width: 350
    output: profile-tree.svg
```

📖 Full setup & docs → [README](https://github.com/chromeheartz/merry-gitmas#readme)

