---
title: OpenSCAD HiRes renderer
date: 2026-04-06 21:43:24 +00:00
tags:
  - ggabbiani
  - GitHub Actions
draft: false
repo: https://github.com/ggabbiani/OpenSCAD-renderer
marketplace: https://github.com/marketplace/actions/openscad-hires-renderer
version: v1.2.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/ggabbiani/OpenSCAD-renderer** to version **v1.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openscad-hires-renderer) to find the latest changes.

## Action Summary

The **OpenSCAD-renderer GitHub Action** automates the high-resolution rendering of 3D models from OpenSCAD scripts into image files. It simplifies the process of generating visual outputs by handling tasks such as camera positioning, resolution settings, and rendering options directly within a CI/CD pipeline. This action is particularly useful for developers and designers who want to automate the creation of visual representations for OpenSCAD projects without manual intervention.

## What's Changed

- Remove draft release badge from README (ebdcffb)
- Add draft release workflow badge to README (e210e3c)
- Fix file extension for draft release workflow reference in build.yaml (0f052b1)
- Remove branch reference from draft release workflow usage (879242d)
- Refactor build workflow to streamline job conditions and add draft release workflow (34123f2)
- Enhance workflow conditions to prevent duplicate executions for tag and trunk pushes (6f3cb25)
- Add tag trigger for push events in build workflow (b64fac5)
- Consolidate draft release workflow into build.yaml and remove separate draft-release.yaml (92af120)
- Refactor bump process to remove documentation update and commit commands (3aa2da9)
- Update .gitignore to include __pycache__ directory and update logo images (6b6f144)
