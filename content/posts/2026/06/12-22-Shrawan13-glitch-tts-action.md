---
title: ShryneTTS
date: 2026-06-12 22:53:46 +00:00
tags:
  - Shrawan13-glitch
  - GitHub Actions
draft: false
repo: https://github.com/Shrawan13-glitch/tts-action
marketplace: https://github.com/marketplace/actions/shrynetts
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Shrawan13-glitch/tts-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shrynetts) to find the latest changes.

## What's Changed

## OpenTTS v1 — Kokoro TTS GitHub Action

Generate high-quality speech from text directly in your GitHub Actions workflows.

### Credits

Built on top of **[Kokoro TTS](https://github.com/kokoro-ai/kokoro)** — a state-of-the-art 82M-parameter neural TTS model. Huge thanks to the Kokoro team for their incredible work on the model architecture and training.

ONNX runtime conversion and voice packaging by **[thewh1teagle](https://github.com/thewh1teagle)** via [kokoro-onnx](https://github.com/thewh1teagle/kokoro-onnx).

### Features

- 9 languages: English (US/UK), Hindi, Chinese, Japanese, French, Spanish, Portuguese (BR/PT), Italian
- Per-sentence voice, speed, and filename customization
- Use via workflow YAML or `gh workflow run` with JSON input
- No GPU required — runs on CPU with ONNX Runtime

### Usage

```yaml
- uses: Shrawan13-glitch/tts-action@v1
  with:
    text: "Hello, this is a test!"
```

See [HOW_TO_USE.md](https://github.com/Shrawan13-glitch/tts-action/blob/master/HOW_TO_USE.md) for full documentation.
