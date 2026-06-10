---
title: Runner Telemetry Action
date: 2026-06-10 23:12:52 +00:00
tags:
  - tsviz
  - GitHub Actions
draft: false
repo: https://github.com/tsviz/actions-runner-telemetry
marketplace: https://github.com/marketplace/actions/runner-telemetry-action
version: v1.7.3
dependentsNumber: "5"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/tsviz/actions-runner-telemetry** to version **v1.7.3**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-telemetry-action) to find the latest changes.

## What's Changed

# Runner Telemetry Action v1.7.3

Comprehensive GitHub Actions runner telemetry collection and analysis with cost optimization insights.

## 🎯 Key Features

### 📊 Resource Monitoring
- Real-time CPU, Memory, I/O, and Network metrics
- Per-step performance tracking and analysis
- Interactive HTML dashboards with Chart.js visualizations
- Time-series data collection with configurable intervals

### 💰 Cost Optimization Analysis
- **Utilization Scoring** - Weighted score (CPU 60%, Memory 40%) from 0-100%
- **Overutilization Detection** - Identifies jobs exceeding runner capacity (Grade D for 90%+ peaks)
- **Right-Sizing Recommendations** - Suggests more cost-effective runners based on usage patterns
- **Monthly Cost Projections** - Estimates per-run and projected monthly costs
- **GitHub Pricing Integration** - Links to official GitHub Actions runner pricing documentation

### 🔍 Detailed Analysis
- Idle time detection (CPU <5% for extended periods)
- I/O wait and CPU steal metrics
- Disk and network throughput tracking
- Process-level statistics (top processes by CPU/memory)
- Step-level resource breakdown

### 📈 Reporting & Dashboards
- **Markdown Reports** - Step Summary integration with Mermaid diagrams
- **Interactive HTML Dashboard** - Shareable, self-contained visualization
- **CSV Export** - Raw telemetry data export
- **JSON Data** - Machine-readable format for custom analysis
- **Summary JSON** - High-level metrics overview

## 🚀 Usage

```yaml
- name: Start Telemetry
  uses: tsviz/actions-runner-telemetry@v1

# Your build steps here...

- name: Stop & Generate Report
  uses: tsviz/actions-runner-telemetry@v1
  with:
    mode: stop
  if: always()
```

## 📋 Modes

- **start** - Begin collecting metrics in background
- **stop** - Stop collection and generate report (markdown + HTML + JSON)
- **step** - Mark step boundaries for per-step analysis
- **snapshot** - Quick single-point capture

## 💡 Example Workflows

See [`.github/workflows/example-usage.yml`](https://github.com/tsviz/actions-runner-telemetry/blob/main/.github/workflows/example-usage.yml) for:
- Basic telemetry (start/stop)
- Per-step tracking workflow
- Quick resource snapshot
- Heavy workload with overutilization demo

## 🔧 Configuration

| Input | Description | Default |
|-------|-------------|---------|
| `enabled` | Enable/disable telemetry | `true` |
| `mode` | Operation mode (start/stop/step/snapshot) | `start` |
| `interval` | Metric sampling interval (seconds) | `2` |
| `step-name` | Step name for tracking | `` |

## 📊 Report Contents

### Markdown Report
- Quick overview gauges (CPU, Memory, Load)
- Resource usage over time charts
- Cost analysis with GitHub pricing
- Right-sizing recommendations
- Per-step performance breakdown
- Top process information

### HTML Dashboard
- Interactive Chart.js visualizations
- Synchronized multi-metric charts
- Drill-down capability on data points
- Professional styling for sharing
- Mobile-responsive design

## 🎯 Use Cases

1. **Cost Optimization** - Understand if you're paying for capacity you don't use
2. **Performance Troubleshooting** - Identify bottlenecks and resource constraints
3. **Right-Sizing** - Find the most cost-effective runner for your workload
4. **Capacity Planning** - Track trends over time to predict growth
5. **CI/CD Analysis** - Understand how your build affects runner resources

## 📝 Release Notes

### What's New in v1.7.3

- ✅ Cost optimization analysis with overutilization detection
- ✅ Improved scoring logic (Grade D for jobs exceeding runner capacity)
- ✅ GitHub pricing documentation integration
- ✅ Robust JSON parsing with error recovery
- ✅ Enhanced optimization strategy recommendations
- ✅ Action version field in action.yml
- ✅ Moving v1 tag for automatic updates

### Previous Versions

See [releases](https://github.com/tsviz/actions-runner-telemetry/releases) for earlier versions and migration guides.

## 📖 Documentation

- [GitHub Actions Runner Pricing](https://docs.github.com/en/enterprise-cloud@latest/billing/reference/actions-runner-pricing)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

## 📄 License

See LICENSE file in repository.

---

**Need help?** [Open an issue](https://github.com/tsviz/actions-runner-telemetry/issues) on GitHub.

