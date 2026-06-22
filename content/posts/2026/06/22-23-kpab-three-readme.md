---
title: three-readme
date: 2026-06-22 23:52:44 +00:00
tags:
  - kpab
  - GitHub Actions
draft: false
repo: https://github.com/kpab/three-readme
marketplace: https://github.com/marketplace/actions/three-readme
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kpab/three-readme** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/three-readme) to find the latest changes.

## What's Changed

## three-readme v1.0.0

Bake a Three.js scene into an animated SVG (SMIL) for embedding in your README.

### Usage

```yaml
- uses: kpab/three-readme@v1
  with:
    scene: torusknot
    out: assets/scene.svg
```

### Inputs

| Input | Default | Description |
| --- | --- | --- |
| `scene` | `torusknot` | Scene name (`torusknot` / `icosahedron` / `torus`) |
| `frames` | `24` | Number of frames |
| `fps` | `12` | Frames per second |
| `width` | `480` | SVG width |
| `height` | `480` | SVG height |
| `color` | `#ffffff` | Drawing color |
| `bg` | `none` | Background color (`none` = transparent) |
| `out` | — (required) | Output path, relative to the calling repo |
| `node-version` | `20` | Node.js version used to run the renderer |

See the [README](https://github.com/kpab/three-readme#readme) for full details.

