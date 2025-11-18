---
title: Browse Terraform State Files as Interactive HTML
date: 2025-11-18 12:58:07 +00:00
tags:
  - cloudvic-org
  - GitHub Actions
draft: false
repo: https://github.com/cloudvic-org/terraform-state-visualizer
marketplace: https://github.com/marketplace/actions/browse-terraform-state-files-as-interactive-html
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/cloudvic-org/terraform-state-visualizer** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/browse-terraform-state-files-as-interactive-html) to find the latest changes.

## Release notes

## Terraform State Visualizer v1.0.1

### Downloads

**Linux:**
- [terraform-state-visualizer-linux-amd64](https://github.com/cloudvic-org/terraform-state-visualizer/releases/download/v1.0.1/terraform-state-visualizer-linux-amd64)
- [terraform-state-visualizer-linux-arm64](https://github.com/cloudvic-org/terraform-state-visualizer/releases/download/v1.0.1/terraform-state-visualizer-linux-arm64)

**macOS:**
- [terraform-state-visualizer-darwin-amd64](https://github.com/cloudvic-org/terraform-state-visualizer/releases/download/v1.0.1/terraform-state-visualizer-darwin-amd64)
- [terraform-state-visualizer-darwin-arm64](https://github.com/cloudvic-org/terraform-state-visualizer/releases/download/v1.0.1/terraform-state-visualizer-darwin-arm64)

**Windows:**
- [terraform-state-visualizer-windows-amd64.exe](https://github.com/cloudvic-org/terraform-state-visualizer/releases/download/v1.0.1/terraform-state-visualizer-windows-amd64.exe)
- [terraform-state-visualizer-windows-arm64.exe](https://github.com/cloudvic-org/terraform-state-visualizer/releases/download/v1.0.1/terraform-state-visualizer-windows-arm64.exe)

### Installation

```bash
# Download and install (Linux/macOS)
curl -L https://github.com/cloudvic-org/terraform-state-visualizer/releases/download/v1.0.1/terraform-state-visualizer-$(uname -s | tr '[:upper:]' '[:lower:]')-$(uname -m) -o terraform-state-visualizer
chmod +x terraform-state-visualizer

# Or using Go
go install github.com/cloudvic-org/terraform-state-visualizer@v1.0.1
```

### Usage

```bash
# Generate a Terraform state JSON
terraform show -json > state.json

# Generate visualization
terraform-state-visualizer -i state.json -o visualization.html
```

### Docker

```bash
docker pull ghcr.io/cloudvic-org/terraform-state-visualizer:v1.0.1
docker run --rm -v $(pwd):/workspace ghcr.io/cloudvic-org/terraform-state-visualizer:v1.0.1 -i /workspace/state.json -o /workspace/visualization.html
```

### Checksums

<details>
<summary>SHA256 Checksums</summary>

See the attached checksums.txt file for SHA256 checksums of all binaries.

</details>

