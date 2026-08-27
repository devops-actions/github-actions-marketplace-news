---
title: Auto Product Video Generator
date: 2026-08-27 17:38:06 +00:00
tags:
  - TakuKobayashi
  - GitHub Actions
draft: false
repo: https://github.com/TakuKobayashi/auto-product-video-generator
marketplace: https://github.com/marketplace/actions/auto-product-video-generator
version: v0.3.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action generates a narrated promotional video on an Ubuntu runner using Ollama, VOICEVOX, Playwright, and FFmpeg. It analyzes the repository, checks out the code, plans the presentation, records the application, and produces a narrated video. The action supports various platforms including web applications, CLI applications, Android devices/emulators, Flutter/React Native, Unity Android, iOS, and Unity Desktop.
---


Version updated for **https://github.com/TakuKobayashi/auto-product-video-generator** to version **v0.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-product-video-generator) to find the latest changes.

## Action Summary

The GitHub Action generates a narrated promotional video on an Ubuntu runner using Ollama, VOICEVOX, Playwright, and FFmpeg. It analyzes the repository, checks out the code, plans the presentation, records the application, and produces a narrated video. The action supports various platforms including web applications, CLI applications, Android devices/emulators, Flutter/React Native, Unity Android, iOS, and Unity Desktop.

## What's Changed

# English

## New Features

- **Enhanced CLI Command Handling**: The AI pipeline now more accurately detects and grounds CLI commands based on the project's `package.json` and README. This ensures that only safe and executable commands are included in the generated script, improving the reliability and security of the recorded video.
- **Support for Normalizing Windows Paths**: Added a function to normalize Windows setup paths for the Linux container in the CLI recorder.
- **Improved Error Handling**: Enhanced error handling in the CLI recorder to include detailed error messages from the CLI command output.

## Internal Changes

- **Refactored Analyzer Logic**: The `ProjectAnalyzer` class has been refactored to improve the detection and grounding of CLI commands. This includes new functions to detect and ground CLI commands based on the project's `package.json` and README.
- **Updated Scenario Generator**: The `ScenarioGenerator` class has been updated to ensure that each useful command is shown in a separate scene, and that real safe workflows ending in `--dry-run` are used when provided.
- **Refactored Timeline Builder**: The `TimelineBuilder` class has been refactored to set the volume to 1.0 for better audio quality.
- **FFmpeg Configuration**: The `FfmpegRenderer` class has been updated to include a more sophisticated audio mixing configuration. The `amix` filter is now set with `normalize=0` to prevent early narration from being attenuated, and `loudnorm` is used to normalize the final narration to a consistent volume level.
- **Refactored CLI Source Extraction**: The `readCliSourceExcerpt` and `discoverCliCommandPaths` functions have been added to the `inspector.ts` file. These functions help in extracting and analyzing CLI source code, providing more detailed insights into project commands and options.
- **Updated Dependencies**: The `action.yml` file has been updated to include new automation scripts for collecting npm publish diagnostics, configuring CI/APVG, verifying npm authentication, and verifying release tags.

## Breaking Changes

- **Removed Background Development Server for CLIs**: CLIs no longer require a background development server. The setup steps are now tailored to the actual README/scripts provided by the LLM, ensuring that only necessary preparation steps are included.
- **Removed AI Release Notes Generation**: The AI release notes generation functionality has been removed. This change affects the `.github/actions/ai-release-notes` directory, which includes the `README.md`, `action.yml`, `generate-release-notes.mjs`, and related files.
- **CLI Application**: The `runBuild` and `runRecord` functions now require the `startedApp` variable to be awaited and stopped properly to ensure all resources are released correctly. The `dryRun` and `skipRecord` options must now be explicitly set to `true` to skip recording.

## Migration Notes

- **Review and Update READMEs**: Ensure that your project's READMEs are up-to-date and contain accurate instructions for setting up and running your CLI. This will help the AI pipeline generate more accurate and useful scripts.
- **Update CI/CD Workflows**: The `.github/workflows` directory has been significantly updated. The `generate-demo.yml` and `publish-npm.yml` files have been modified, and new workflows have been added, such as `main-video-build.yml`. Ensure your CI/CD configurations are updated to accommodate these changes.
- **Update Workflows**: Users need to update their GitHub Actions workflows to use the new action and automation scripts. This includes updating the `uses` field in the workflow YAML files to point to the new action URL.
- **Environment Variables**: Ensure that the required environment variables (`OLLAMA_HOST`, `OLLAMA_NUM_PARALLEL`, `OLLAMA_MODEL`, `VOICEVOX_IMAGE`, `FFMPEG_PATH`, `FFPROBE_PATH`) are set in the workflow environment.

## Fixes

- **Fixed Volume Setting**: The volume setting for the timeline builder has been adjusted to 1.0, ensuring that the audio is not too quiet.
- **Fixed Path Resolution Issues**: Fixed an issue where the application was not stopping properly after recording, leading to resource leaks.
- **Fixed Server Lifecycle Management**: The `server.ts` and `server.spec.ts` files have been updated to include a `StartedApp` interface and a `stop` method. This ensures that the dev server can be properly stopped, preventing resource leaks and ensuring clean shutdowns.
- **Enhanced Error Messages**: Fixed an issue where early narration in videos was being attenuated, leading to inconsistent audio levels. The new configuration ensures that the audio is normalized to a loud, speech-friendly level, improving the overall quality of the rendered videos.

These changes aim to improve the reliability and functionality of the release notes generation process, while also providing better diagnostics and validation during the publishing process.

# Japanese

## 新機能

- **CLIコマンドの処理の向上**: AIパイプラインは、プロジェクトの`package.json`とREADMEに基づいてCLIコマンドをより正確に検出および接地します。これにより、生成されたスクリプトに含まれるコマンドが安全で実行可能であることを保証し、録画ビデオの信頼性とセキュリティを向上させます。
- **Windowsパスの正規化のサポート**: CLIレコーダーでLinuxコンテナ用のWindows設定パスを正規化するための関数を追加しました。
- **CLIコマンドのエラーハンドリングの向上**: CLIレコーダーのエラーハンドリングを向上させ、CLIコマンド出力からの詳細なエラーメッセージを含めました。

## 内部変更

- **Analyzerロジックのリファクタリング**: `ProjectAnalyzer`クラスがリファクタリングされ、CLIコマンドの検出と接地を改善しました。これには、プロジェクトの`package.json`とREADMEに基づいてCLIコマンドを検出および接地するための新しい関数が含まれます。
- **ScenarioGeneratorの更新**: `ScenarioGenerator`クラスが更新され、各有用なコマンドが個別のシーンで表示され、提供された実際の安全なワークフローが`--dry-run`で終わる場合に使用されます。
- **TimelineBuilderのリファクタリング**: `TimelineBuilder`クラスがリファクタリングされ、より良い音質のためのボリュームを1.0に設定しました。
- **FFmpegの構成**: `FfmpegRenderer`クラスが更新され、より複雑な音声ミックス構成が含まれました。`amix`フィルターは`normalize=0`で設定され、`loudnorm`を使用して最終的なナレーティョンを一貫した音量レベルに正規化します。
- **CLIソースコードの抽出のリファクタリング**: `inspector.ts`ファイルに`readCliSourceExcerpt`と`discoverCliCommandPaths`関数が追加されました。これらの関数はCLIソースコードを抽出および解析し、プロジェクトのコマンドとオプションに関するより詳しい洞察を提供します。
- **依存関係の更新**: `action.yml`ファイルが更新され、npmパブリッシュ診断の収集、CI/APVGの構成、npm認証の検証、リリースタグの検証などの新しい自動化スクリプトが含まれました。

## ブレーキング変更

- **CLIs用のバックグラウンド開発サーバーの削除**: CLIsはバックグラウンド開発サーバーを必要としません。設定手順は、LLMによって提供される実際のREADME/スクリプトに合わせて調整され、必要な準備手順のみが含まれます。
- **AIリリースノート生成機能の削除**: AIリリースノート生成機能が削除されました。これにより、`.github/actions/ai-release-notes`ディレクトリが影響を受け、`README.md`、`action.yml`、`generate-release-notes.mjs`、関連ファイルなどが含まれます。
- **CLIアプリケーション**: `runBuild`と`runRecord`関数は、`startedApp`変数を待機し、適切に停止してリソースを解放するように更新されました。`dryRun`と`skipRecord`オプションは、記録をスキップするためには明確に`true`に設定する必要があります。

## マイグレーション注意事項

- **READMEのレビューと更新**: プロジェクトのREADMEが最新で、CLIの設定と実行に関する正確な指示が含まれていることを確認してください。これにより、AIパイプラインがより正確で有用なスクリプトを生成します。
- **CI/CDワークフローの更新**: `.github/workflows`ディレクトリが大幅に更新されました。`generate-demo.yml`と`publish-npm.yml`ファイルが修正され、新しいワークフローが追加されました。CI/CD構成を更新してこれらの変更に対応してください。
- **ワークフローの更新**: ユーザーは、新しいアクションと自動化スクリプトを使用するGitHub Actionsワークフローを更新する必要があります。ワークフローYAMLファイルの`uses`フィールドを新しいアクションURLに更新します。
- **環境変数**: ワークフロー環境に必要な環境変数（`OLLAMA_HOST`、`OLLAMA_NUM_PARALLEL`、`OLLAMA_MODEL`、

