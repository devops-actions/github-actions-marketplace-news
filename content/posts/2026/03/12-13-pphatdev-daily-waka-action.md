---
title: Waka Daily Stats
date: 2026-03-12 13:34:50 +00:00
tags:
  - pphatdev
  - GitHub Actions
draft: false
repo: https://github.com/pphatdev/daily-waka-action
marketplace: https://github.com/marketplace/actions/waka-daily-stats
version: v1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/pphatdev/daily-waka-action** to version **v1**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waka-daily-stats) to find the latest changes.

## Action Summary

This GitHub Action automates the process of fetching daily WakaTime coding activity data and updating a specified section in a GitHub README file with visual stats. It also generates a JSON file containing the raw API response for further analysis or use. This action simplifies the task of maintaining up-to-date coding activity summaries in project documentation, providing an efficient way to showcase developer productivity.

## Release notes

# 📋 Release Notes

## 🎉 [v1.0.0] - 2026-03-12

### 📌 Overview
Initial stable release of the GitHub Marketplace Action for daily WakaTime coding statistics integration.

### ✨ Features

#### 🔧 Core Functionality
- **⏱️ WakaTime Integration**: Fetch daily coding activity data from WakaTime API
- **📝 README Updates**: Automatically update README files with coded statistics
- **⚙️ GitHub Action**: Reusable action (`action.yml`) for GitHub Workflows
- **📊 JSON Export**: Export raw API response to `data/coding_stats.json`
- **🔍 Change Detection**: Output flag to indicate whether README was modified

#### 🎨 Visualization
- Multiple bar style options:
  - `block`: Legacy block-style bars
  - `shade`: Shaded style bars
  - `ascii`: ASCII-style bars
  - `dot`: Dot-style bars
  - `pipe`: Pipe-style bars
  - `emoji`: Emoji-style bars

#### ⚡ Configuration
- Environment-based configuration (`config.py`)
- Support for `.env` files with `.env.example` fallback
- Configurable WakaTime API endpoint
- Python version selection (defaults to 3.12)

### 📥 GitHub Action Inputs

| Input | Required | Default | Description |
|-------|----------|---------|-------------|
| `waka-token` | Yes | - | WakaTime API token |
| `github-token` | No | - | GitHub token for script compatibility |
| `waka-api` | No | `https://wakatime.com/api/v1` | WakaTime API endpoint |
| `bar-style` | No | `block` | Visualization style for stats |
| `python-version` | No | `3.12` | Python version to use |
| `entrypoint` | No | `src/main.py` | Main script entry point |

### 📤 GitHub Action Outputs

| Output | Description |
|--------|-------------|
| `changed` | Boolean flag (`true`/`false`) indicating if README was modified |

### 📁 Project Structure

```
.
├── action.yml              # GitHub Action manifest
├── README.md               # Main documentation
├── RELEASE.md              # Release notes (this file)
├── requirements.txt        # Python dependencies
├── assets/                 # Asset files
├── data/
│   └── coding_stats.json   # Generated API response
├── DOCS/
│   └── SETUP.md            # Setup guide
└── src/
    ├── config.py           # Configuration management
    ├── main.py             # Entry point
    ├── waka_api.py         # WakaTime API client
    └── utils/
        ├── get_daily_activity.py  # Daily activity fetch
        └── helpers.py              # Utility functions
```

### 🚀 Usage Example

#### 🔄 Workflow Configuration
```yaml
name: Update README Daily

on:
  schedule:
    - cron: "0 */6 * * *"
  workflow_dispatch:

permissions:
  contents: write

jobs:
  update:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Run Waka README Action
        id: daily
        uses: pphatdev/daily-waka-action@v1
        with:
          waka-token: ${{ secrets.WAKA_KEY }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
          bar-style: block

      - name: Commit generated files
        if: steps.daily.outputs.changed == 'true'
        uses: stefanzweifel/git-auto-commit-action@v5
        with:
          commit_message: "chore(readme): update daily coding stats"
          file_pattern: "README.md data/coding_stats.json"
```

#### 💻 Local Development
```bash
# Setup
python -m venv .venv
source .venv/Scripts/activate  # or .\.venv\Scripts\Activate.ps1 on Windows

# Install dependencies
pip install -r requirements.txt

# Configure environment
cp .env.example .env
# Edit .env with your WakaTime token

# Run
python src/main.py
```

### 📋 Requirements

- **🐍 Python**: 3.10 or newer (recommended 3.12)
- **⏱️ WakaTime Account**: API token required
- **📄 README Format**: Must contain markers for update:
  ```markdown
  <!--START_SECTION:daily-->
  <!--END_SECTION:daily-->
  ```

### ⚠️ Known Limitations

- Fetches only previous day's coding activity
- Requires valid WakaTime API token
- README must contain specific section markers
- Updates are file-based (commits require external action)

### 🔬 Technical Details

- **Language**: Python
- **API Client**: HTTP-based WakaTime API integration
- **Environment Management**: `.env` file support with defaults
- **CI/CD**: GitHub Actions compatible

### 📦 Installation

- Add to workflow: `uses: pphatdev/daily-waka-action@v1`
- Or reference specific commit: `uses: pphatdev/daily-waka-action@<commit-sha>`

### 🤝 Support

- Documentation: See [README.md](README.md)
- Setup Guide: See [DOCS/SETUP.md](DOCS/SETUP.md)
- Issues: Report on GitHub repository

---

📅 **Release Date**: March 12, 2026  
✅ **Status**: Stable  
👤 **Maintainer**: pphatdev


**Full Changelog**: https://github.com/pphatdev/daily-waka-action/commits/v1
