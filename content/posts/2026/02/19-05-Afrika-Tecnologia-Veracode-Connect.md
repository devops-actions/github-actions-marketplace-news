---
title: Veracode Connect
date: 2026-02-19 05:59:19 +00:00
tags:
  - Afrika-Tecnologia
  - GitHub Actions
draft: false
repo: https://github.com/Afrika-Tecnologia/Veracode-Connect
marketplace: https://github.com/marketplace/actions/veracode-connect
version: v1.1.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Afrika-Tecnologia/Veracode-Connect** to version **v1.1.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veracode-connect) to find the latest changes.

## Action Summary

The **Veracode Connect** GitHub Action integrates Veracode security tools into your repository, automating processes such as Software Composition Analysis (SCA), Infrastructure as Code (IaC) scanning, static code analysis, and baseline assessments with optional Bantuu support. It simplifies security scanning by automating tasks like packaging files for scanning, conducting pipeline and static scans, and associating applications with business units, helping developers streamline their security workflows. Additionally, it provides detailed logs, outputs, and artifacts for comprehensive reporting and analysis.

## Release notes

# Veracode Connect

GitHub Action facilitadora para implementar o Veracode no seu repositorio, com suporte opcional ao baseline via Bantuu.

Uso (exemplo rapido):

```yml
- uses: Afrika-Tecnologia/Veracode-Connect@v1
```

## Fluxo (ordem dos steps)

1) (Opcional) Veracode SCA (`enable_sca: 'true'`)
2) (Opcional) Veracode IaC/Secrets (`enable_iac: 'true'`)
3) Define o `.zip` do scan:
   - `enable_auto_packager: 'true'` -> tenta Auto Packager (com fallback para `app.zip`)
   - `enable_auto_packager: 'false'` -> usa o `scan_file` que voce fornecer
4) (Opcional) Pipeline Scan (`enable_pipelinescan: 'true'`) com ou sem baseline Bantuu (`enable_baseline`)
5) (Opcional) Upload & Scan (static) por ultimo (`enable_upload_scan: 'true'`)
6) (Opcional) Set Business Unit via REST (rodando somente apos Upload & Scan) (`enable_Business_unit: 'true'`)

Os logs ficam agrupados no console (`::group::/::endgroup::`).

## Inputs

Todos os booleanos devem ser passados como string: `'true'` / `'false'`.

| Input | Obrigatorio | Default | Notas |
|---|---:|---:|---|
| `veracode_api_id` | sim | - | VID do Veracode. |
| `veracode_api_key` | sim | - | VKEY do Veracode. |
| `enable_auto_packager` | nao | `'false'` | Se `'true'`, tenta gerar `app.zip` automaticamente; senao usa `scan_file`. |
| `scan_file` | nao* | - | Obrigatorio na pratica quando `enable_auto_packager: 'false'`. |
| `enable_pipelinescan` | nao | `'true'` | Desative para rodar so Upload & Scan. |
| `enable_baseline` | nao | `'true'` | Usa baseline Bantuu (somente com Pipeline Scan ativo). |
| `bantuu_api_key` | nao* | - | Obrigatorio na pratica quando `enable_baseline: 'true'`. |
| `policy_fail` | nao | `'false'` | Controla `fail_build` do Pipeline Scan. |
| `fail_on_severity` | nao | - | Aplicado apenas quando existir baseline (ex.: `Very High, High`). |
| `enable_upload_scan` | nao | `'false'` | Upload & Scan (static) roda por ultimo. |
| `veracode_sandbox` | nao | `'true'` | Se `'true'`, cria/usa sandbox; senao usa o app principal. |
| `enable_sca` | nao | `'false'` | Ativa SCA. |
| `veracode_sca_token` | nao* | - | Obrigatorio na pratica quando `enable_sca: 'true'`. |
| `enable_iac` | nao | `'false'` | Ativa IaC/Secrets (directory scan). |
| `enable_Business_unit` | nao | `'false'` | Se `'true'`, vincula o app a UMA Business Unit via REST (apos Upload & Scan). |
| `veracode_business_unit` | nao | `''` | Nome da BU (ex.: `BU TI`). Se contiver virgula, a action falha. |

## Outputs

| Output | Descricao |
|---|---|
| `has_baseline` | `'true'/'false'` indicando se existe baseline para o repo. |
| `pipeline_status` | Um de: `scan_completed_with_baseline`, `scan_completed_without_baseline_and_uploaded`, `scan_completed_without_bantuu`, `pipeline_scan_disabled`. |
| `repository_full_name` | `org/repo` (a partir de `github.repository`). |
| `business_unit_name` | Nome da BU aplicada. |
| `business_unit_guid` | GUID da BU aplicada. |
| `set_business_unit_status` | `skipped` \| `success` \| `failed`. |

## Artefatos (sempre publicados quando o modulo roda)

- `sca-results`: `veracode_sca.log`
- `iac-results`: pasta `iac-results/` com `results.json`, `results.txt` e SBOMs (se gerados)
- `pipescan-results`: `results.json` e `filtered_results.json` (se existir)

## Upload & Scan (static) - comportamento fixo

- `appname = org/repo`
- `createprofile: true`
- nao espera o scan finalizar (`scantimeout: 0`)
- sempre ativa: `scanallnonfataltoplevelmodules`, `includenewmodules`, `deleteincompletescan: 2`
- `sandboxname` (quando `veracode_sandbox: 'true'`): `{branch}-{org-repo}`
- `version`: `Scan from Veracode Connect: <repo_url> - <run_id>-<run_number>-<run_attempt>`

## Exemplos

Escolha um exemplo e copie para `.github/workflows/`.

### Mais completo (para testar tudo)

- SCA + IaC + Auto Packager + Baseline + Upload & Scan -> [abrir](examples/autopackager-with-baseline-sca-iac-upload.yml)
- SCA + IaC + Auto Packager + Baseline + Upload & Scan + Business Unit -> [abrir](examples/autopackager-with-baseline-sca-iac-upload-bu.yml)

### Autopackager (gera o `.zip` automaticamente)

- Auto Packager + Baseline -> [abrir](examples/autopackager-with-baseline.yml)
- Auto Packager + Pipeline Scan -> [abrir](examples/autopackager-without-baseline.yml)
- Auto Packager + Baseline + Upload & Scan -> [abrir](examples/autopackager-with-baseline-and-upload-scan.yml)
- Auto Packager + Pipeline Scan + Upload & Scan -> [abrir](examples/autopackager-without-baseline-and-upload-scan.yml)
- Auto Packager + Baseline + SCA -> [abrir](examples/autopackager-with-baseline-sca.yml)
- Auto Packager + Baseline + IaC -> [abrir](examples/autopackager-with-baseline-iac.yml)
- Auto Packager + Baseline + SCA + IaC -> [abrir](examples/autopackager-with-baseline-sca-iac.yml)
- Auto Packager + Baseline + SCA + Upload & Scan -> [abrir](examples/autopackager-with-baseline-sca-upload.yml)
- Auto Packager + Baseline + IaC + Upload & Scan -> [abrir](examples/autopackager-with-baseline-iac-upload.yml)
- Auto Packager + Pipeline Scan + SCA -> [abrir](examples/autopackager-without-baseline-sca.yml)
- Auto Packager + Pipeline Scan + SCA + Upload & Scan -> [abrir](examples/autopackager-without-baseline-sca-upload.yml)
- Auto Packager + Pipeline Scan + IaC + Upload & Scan -> [abrir](examples/autopackager-without-baseline-iac-upload.yml)
- Auto Packager + Pipeline Scan + SCA + IaC + Upload & Scan -> [abrir](examples/autopackager-without-baseline-sca-iac-upload.yml)

### scan_file (consome o artefato do seu build)

- scan_file + Baseline -> [abrir](examples/artifact-with-baseline.yml)
- scan_file + Pipeline Scan -> [abrir](examples/artifact-without-baseline.yml)
- scan_file + Baseline + Upload & Scan -> [abrir](examples/artifact-with-baseline-and-upload-scan.yml)
- scan_file + Baseline + Upload & Scan (app principal) -> [abrir](examples/artifact-with-baseline-and-upload-scan-no-sandbox.yml)
- scan_file + Baseline + fail_on_severity -> [abrir](examples/artifact-with-baseline-fail-on-severity.yml)
- scan_file + Pipeline Scan + Upload & Scan -> [abrir](examples/artifact-without-baseline-and-upload-scan.yml)
- scan_file + Baseline + SCA -> [abrir](examples/artifact-with-baseline-sca.yml)
- scan_file + Baseline + IaC -> [abrir](examples/artifact-with-baseline-iac.yml)
- scan_file + Baseline + SCA + IaC -> [abrir](examples/artifact-with-baseline-sca-iac.yml)
- scan_file + Baseline + SCA + Upload & Scan -> [abrir](examples/artifact-with-baseline-sca-upload.yml)
- scan_file + Baseline + IaC + Upload & Scan -> [abrir](examples/artifact-with-baseline-iac-upload.yml)
- scan_file + Baseline + SCA + IaC + Upload & Scan -> [abrir](examples/artifact-with-baseline-sca-iac-upload.yml)
- scan_file + Pipeline Scan + SCA -> [abrir](examples/artifact-without-baseline-sca.yml)
- scan_file + Pipeline Scan + IaC -> [abrir](examples/artifact-without-baseline-iac.yml)
- scan_file + Pipeline Scan + SCA + IaC -> [abrir](examples/artifact-without-baseline-sca-iac.yml)
- scan_file + Pipeline Scan + SCA + Upload & Scan -> [abrir](examples/artifact-without-baseline-sca-upload.yml)
- scan_file + Pipeline Scan + IaC + Upload & Scan -> [abrir](examples/artifact-without-baseline-iac-upload.yml)
- scan_file + Pipeline Scan + SCA + IaC + Upload & Scan -> [abrir](examples/artifact-without-baseline-sca-iac-upload.yml)

### Pipeline Scan desativado (so Upload & Scan)

- Upload & Scan only (scan_file) -> [abrir](examples/pipeline-disabled-upload-scan-only-artifact.yml)
- Upload & Scan only (auto packager) -> [abrir](examples/pipeline-disabled-upload-scan-only-autopackager.yml)
- Upload & Scan only + SCA (scan_file) -> [abrir](examples/pipeline-disabled-upload-scan-only-artifact-sca.yml)
- Upload & Scan only + IaC (scan_file) -> [abrir](examples/pipeline-disabled-upload-scan-only-artifact-iac.yml)
- Upload & Scan only + SCA (auto packager) -> [abrir](examples/pipeline-disabled-upload-scan-only-autopackager-sca.yml)
- Upload & Scan only + IaC (auto packager) -> [abrir](examples/pipeline-disabled-upload-scan-only-autopackager-iac.yml)

### Pipeline Scan (sem baseline) - enxuto

- Pipeline Scan + SCA (auto packager) -> [abrir](examples/pipeline-only-with-sca.yml)
- Pipeline Scan + IaC (auto packager) -> [abrir](examples/pipeline-only-with-iac.yml)
- Pipeline Scan + SCA + IaC (auto packager) -> [abrir](examples/pipeline-only-with-sca-iac.yml)

