---
title: QuorumCI Run
date: 2026-01-20 05:36:59 +00:00
tags:
  - quorumci
  - GitHub Actions
draft: false
repo: https://github.com/quorumci/action
marketplace: https://github.com/marketplace/actions/quorumci-run
version: v0.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/quorumci/action** to version **v0.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quorumci-run) to find the latest changes.

## Action Summary

The QuorumCI GitHub Action provides a quorum-based verification mechanism for CI pipelines by executing checks across multiple nodes and determining success or failure based on consensus. It automates tasks such as HTTP health checks, webhook verification, script execution, DNS record validation, and TLS certificate validation, ensuring reliability through majority agreement. This action enhances the robustness of CI workflows by reducing false positives and improving fault tolerance.

## Release notes

# QuorumCI Action

Quorum-based verification for CI pipelines. Run checks independently across multiple nodes and fail only when a quorum agrees.

> Run the same check independently. Fail only when most executions agree.

## Usage

### HTTP Health Check

```yaml
- name: Verify API Health
  uses: quorumci/action@v1
  id: health
  with:
    type: http
    url: https://api.example.com/health
    executions: '3'
    quorum: '2'

- name: Check Result
  run: echo "Verdict: ${{ steps.health.outputs.verdict }}"
```

### Webhook Verification

```yaml
- name: Test Webhook
  uses: quorumci/action@v1
  with:
    type: webhook
    endpoint: https://hooks.example.com/deploy
    payload: '{"environment": "staging"}'
    headers: '{"Authorization": "Bearer ${{ secrets.WEBHOOK_TOKEN }}"}'
```

### Script Execution

```yaml
- name: Run Verification Script
  uses: quorumci/action@v1
  with:
    type: script
    script-file: ./scripts/verify.js
    runtime: node
    script-env: '{"API_KEY": "${{ secrets.API_KEY }}"}'
```

### DNS Verification

```yaml
- name: Verify DNS Records
  uses: quorumci/action@v1
  with:
    type: dns
    hostname: example.com
    record-type: A
    expected-values: '93.184.216.34'
```

### TLS Certificate Validation

```yaml
- name: Check Certificate Expiry
  uses: quorumci/action@v1
  with:
    type: tls
    hostname: example.com
    port: '443'
    min-days-valid: '30'
    expected-issuer: "Let's Encrypt"
```

## Inputs

### Required

| Input  | Description                                            |
| ------ | ------------------------------------------------------ |
| `type` | Job type: `http`, `webhook`, `script`, `dns`, or `tls` |

### HTTP Job Inputs

| Input    | Default | Description                                                   |
| -------- | ------- | ------------------------------------------------------------- |
| `url`    | -       | Target URL (required for `http` type)                         |
| `method` | `GET`   | HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `PATCH`) |
| `body`   | -       | Request body                                                  |

### Webhook Job Inputs

| Input      | Default | Description                                        |
| ---------- | ------- | -------------------------------------------------- |
| `endpoint` | -       | Webhook endpoint URL (required for `webhook` type) |
| `payload`  | -       | JSON payload (required for `webhook` type)         |

### Script Job Inputs

| Input         | Default | Description                         |
| ------------- | ------- | ----------------------------------- |
| `script`      | -       | Inline script code                  |
| `script-file` | -       | Path to script file                 |
| `runtime`     | `node`  | Script runtime (`node` or `bash`)   |
| `script-args` | -       | Script arguments (comma-separated)  |
| `script-env`  | -       | Environment variables (JSON format) |

Either `script` or `script-file` is required for script jobs.

### DNS Job Inputs

| Input             | Default | Description                                                             |
| ----------------- | ------- | ----------------------------------------------------------------------- |
| `hostname`        | -       | Hostname to resolve (required for `dns` type)                           |
| `record-type`     | `A`     | DNS record type (`A`, `AAAA`, `CNAME`, `MX`, `TXT`, `NS`, `SOA`, `PTR`) |
| `expected-values` | -       | Expected DNS values (comma-separated, partial match)                    |
| `nameserver`      | -       | Custom DNS server (e.g., `8.8.8.8`)                                     |

### TLS Job Inputs

| Input             | Default | Description                                    |
| ----------------- | ------- | ---------------------------------------------- |
| `hostname`        | -       | Hostname to check (required for `tls` type)    |
| `port`            | `443`   | TLS port                                       |
| `min-days-valid`  | -       | Minimum days until certificate expiry          |
| `expected-issuer` | -       | Expected certificate issuer (partial match)    |

### Common Inputs

| Input             | Default | Description                                   |
| ----------------- | ------- | --------------------------------------------- |
| `headers`         | -       | Request headers (JSON format)                 |
| `expected-status` | `200`   | Expected HTTP status code(s), comma-separated |
| `executions`      | `3`     | Number of executions (N)                      |
| `quorum`          | `2`     | Required agreement (M)                        |
| `timeout-ms`      | `30000` | Timeout in milliseconds                       |

## Outputs

| Output            | Description                                       |
| ----------------- | ------------------------------------------------- |
| `verdict`         | Quorum verdict: `pass`, `fail`, or `inconclusive` |
| `quorum-met`      | Whether quorum was achieved (`true` or `false`)   |
| `agreement-count` | Number of agreeing executions                     |
| `result-json`     | Full `QuorumResult` as JSON                       |

## How It Works

QuorumCI executes your check independently across multiple nodes. The check only fails when M of N executions agree on failure, reducing false positives from:

- Transient network issues
- Regional outages
- Flaky dependencies
- Single-point-of-failure runners

```
┌─────────────────────────────────────────┐
│           QuorumCI Action               │
├─────────────────────────────────────────┤
│  Execution 1 ──┐                        │
│  Execution 2 ──┼──► Quorum ──► Verdict  │
│  Execution 3 ──┘    (M of N)            │
└─────────────────────────────────────────┘
```

## Step Summary

The action writes a detailed summary to the GitHub Step Summary, including:

- Overall verdict with visual indicator
- Agreement statistics
- Execution breakdown with individual results
- Timing information

## Examples

### Multi-Endpoint Verification

```yaml
name: API Health Check

on:
  schedule:
    - cron: '*/15 * * * *' # Every 15 minutes

jobs:
  verify:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        endpoint:
          - https://api.example.com/health
          - https://api.example.com/status
          - https://api.example.com/ready
    steps:
      - name: Check ${{ matrix.endpoint }}
        uses: quorumci/action@v1
        with:
          type: http
          url: ${{ matrix.endpoint }}
          executions: '3'
          quorum: '2'
```

### POST Request with Body

```yaml
- name: Verify Create Endpoint
  uses: quorumci/action@v1
  with:
    type: http
    url: https://api.example.com/test
    method: POST
    headers: '{"Content-Type": "application/json"}'
    body: '{"test": true}'
    expected-status: '201'
```

### Multiple Expected Status Codes

```yaml
- name: Verify Resource
  uses: quorumci/action@v1
  with:
    type: http
    url: https://api.example.com/resource
    expected-status: '200,201,204'
```

### High-Confidence Verification

```yaml
- name: Critical Check
  uses: quorumci/action@v1
  with:
    type: http
    url: https://api.example.com/critical
    executions: '5'
    quorum: '4'
    timeout-ms: '60000'
```

### Conditional Deployment

```yaml
- name: Verify Production Ready
  uses: quorumci/action@v1
  id: verify
  with:
    type: http
    url: https://staging.example.com/health

- name: Deploy to Production
  if: steps.verify.outputs.verdict == 'pass'
  run: ./deploy.sh production
```

### Script with Environment Variables

```yaml
- name: Run Verification Script
  uses: quorumci/action@v1
  with:
    type: script
    script: |
      const response = await fetch(process.env.API_URL);
      if (!response.ok) process.exit(1);
      console.log('OK');
    runtime: node
    script-env: '{"API_URL": "https://api.example.com/health"}'
```

### Bash Script Verification

```yaml
- name: Run Bash Check
  uses: quorumci/action@v1
  with:
    type: script
    script: |
      curl -sf https://api.example.com/health > /dev/null
      exit $?
    runtime: bash
```

### Using Outputs in Subsequent Steps

```yaml
- name: Verify API
  uses: quorumci/action@v1
  id: check
  with:
    type: http
    url: https://api.example.com/health

- name: Process Results
  run: |
    echo "Verdict: ${{ steps.check.outputs.verdict }}"
    echo "Agreement: ${{ steps.check.outputs.agreement-count }}"

    # Parse full result
    RESULT='${{ steps.check.outputs.result-json }}'
    echo "Duration: $(echo $RESULT | jq -r '.durationMs')ms"
```

## Troubleshooting

### Action Fails with "url is required"

Ensure you've set `type: http` and provided the `url` input:

```yaml
with:
  type: http
  url: https://api.example.com/health # Don't forget this!
```

### Quorum Never Passes

- Check if your endpoint is returning the expected status code
- Increase `timeout-ms` if requests are timing out
- Use `expected-status` to accept multiple valid status codes
- Check the Step Summary for individual execution details

### Script Jobs Not Working

- Ensure you provide either `script` (inline) or `script-file` (path)
- Check that `runtime` is either `node` or `bash`
- For file scripts, ensure the file exists in your repository

### Timeouts

Increase the timeout for slow endpoints:

```yaml
with:
  timeout-ms: '60000' # 60 seconds
```

## License

MIT
