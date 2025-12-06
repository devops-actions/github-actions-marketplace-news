---
title: Security Scan - Docker & Terraform
date: 2025-11-18 05:13:45 +00:00
tags:
  - paulocesar-prog
  - GitHub Actions
draft: false
repo: https://github.com/paulocesar-prog/linuxtips-actions-verify
marketplace: https://github.com/marketplace/actions/security-scan-docker-terraform
version: 1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/paulocesar-prog/linuxtips-actions-verify** to version **1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/security-scan-docker-terraform) to find the latest changes.

## Release notes

# Check Lint and Scan Docker/Terraform Vulnerabilities

[![GitHub Marketplace](https://img.shields.io/badge/Marketplace-Check%20Lint%20and%20Scan-blue.svg?colorA=24292e&colorB=0366d6&style=flat&longCache=true&logo=github)](https://github.com/marketplace)

Uma GitHub Action completa para verificar vulnerabilidades de segurança e problemas de lint em projetos Docker e Terraform. Esta action automatiza a análise de segurança usando ferramentas líderes da indústria e cria issues no GitHub automaticamente quando encontra problemas.

## 🚀 Funcionalidades

- **Scan de Dockerfiles**:

  - Lint com [Hadolint](https://github.com/hadolint/hadolint) para verificar melhores práticas
  - Scan de vulnerabilidades de imagem com [Trivy](https://github.com/aquasecurity/trivy) (severidade HIGH e CRITICAL)

- **Scan de Arquivos Terraform**:

  - Análise de segurança com [Terrascan](https://github.com/tenable/terrascan) (focado em AWS)
  - Scan de configuração com Trivy para detectar misconfigurações

- **Gerenciamento Automático de Issues**:

  - Cria issues automaticamente quando encontra problemas
  - Reabre issues fechadas se o problema ainda existe
  - Organiza issues com labels (`lint`, `docker-security`, `terraform-security`)
  - Evita duplicação de issues existentes

- **Integração CI/CD**:
  - Falha o job automaticamente se encontrar vulnerabilidades
  - Suporta projetos com ou sem Docker/Terraform
  - Pula verificações automaticamente se os arquivos não existirem

## 📋 Requisitos

- Permissões do GitHub Token para criar/gerenciar issues
- Acesso à internet para baixar as ferramentas de scan

## 📥 Inputs

| Input            | Descrição                                              | Obrigatório | Padrão |
| ---------------- | ------------------------------------------------------ | ----------- | ------ |
| `docker-context` | Diretório onde está o Dockerfile dentro do repositório | Não         | `.`    |

## 🔧 Uso Básico

### Exemplo 1: Verificação completa (Docker e Terraform)

```yaml
name: Security Scan

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  security-scan:
    runs-on: ubuntu-latest
    permissions:
      issues: write
      contents: read

    steps:
      - name: Check Lint and Scan Vulnerabilities
        uses: seu-usuario/linuxtips-actions-verify@v1
```

### Exemplo 2: Especificando contexto do Dockerfile

```yaml
jobs:
  security-scan:
    runs-on: ubuntu-latest
    permissions:
      issues: write
      contents: read

    steps:
      - name: Check Lint and Scan Vulnerabilities
        uses: seu-usuario/linuxtips-actions-verify@v1
        with:
          docker-context: "./docker"
```

### Exemplo 3: Apenas em Pull Requests

```yaml
name: PR Security Check

on:
  pull_request:
    branches: [main]

jobs:
  security-check:
    runs-on: ubuntu-latest
    permissions:
      issues: write
      contents: read

    steps:
      - name: Security Scan
        uses: seu-usuario/linuxtips-actions-verify@v1
```

## 🔍 O que a Action faz?

### 1. Instalação de Ferramentas

A action instala automaticamente:

- **Hadolint**: Linter para Dockerfiles
- **Trivy**: Scanner de vulnerabilidades e misconfigurações
- **Terrascan**: Scanner de segurança para IaC (Infrastructure as Code)

### 2. Scan de Docker

- Verifica se existe um Dockerfile no diretório especificado
- Executa Hadolint para verificar melhores práticas
- Constrói a imagem Docker
- Escaneia a imagem com Trivy para vulnerabilidades HIGH e CRITICAL
- Cria issues com label `docker-security` ou `lint`

### 3. Scan de Terraform

- Verifica se existem arquivos `.tf` no repositório
- Executa Terrascan para análise de segurança (focado em AWS)
- Executa Trivy config para detectar misconfigurações
- Cria issues com label `terraform-security`

### 4. Gerenciamento de Issues

- Cria labels automaticamente se não existirem
- Verifica se já existe uma issue com o mesmo título
- Reabre issues fechadas se o problema ainda existe
- Organiza issues por tipo (lint, docker-security, terraform-security)

### 5. Controle de Falhas

- Cria um flag `issues_found.flag` quando encontra problemas
- Falha o job se o flag existir, garantindo que vulnerabilidades bloqueiem o pipeline

## 🏷️ Labels Criadas

A action cria automaticamente as seguintes labels (se não existirem):

- `lint`: Problemas de lint encontrados pelo Hadolint
- `docker-security`: Vulnerabilidades encontradas em imagens Docker
- `terraform-security`: Problemas de segurança em arquivos Terraform

## ⚙️ Permissões Necessárias

Certifique-se de que o workflow tem as seguintes permissões:

```yaml
permissions:
  issues: write # Necessário para criar/gerenciar issues
  contents: read # Necessário para fazer checkout do código
```

## 📊 Exemplo de Issue Criada

Quando a action encontra um problema, ela cria uma issue no repositório com:

- **Título**: Descritivo do problema encontrado
- **Corpo**: Detalhes completos incluindo:
  - Severidade
  - Arquivo e linha onde o problema foi encontrado
  - Recomendações de correção
  - Links para documentação (quando disponível)
- **Label**: Categorização apropriada (`lint`, `docker-security`, ou `terraform-security`)

## 🛡️ Boas Práticas

1. **Execute em Pull Requests**: Configure a action para rodar em PRs para detectar problemas antes do merge
2. **Revisão de Issues**: Revise as issues criadas regularmente e corrija os problemas
3. **Monitoramento**: Use as issues como backlog de segurança
4. **Integração Contínua**: Execute também em pushes para monitoramento contínuo

## 🔄 Comportamento

- **Se não houver Dockerfile**: A action pula automaticamente as verificações Docker
- **Se não houver arquivos Terraform**: A action pula automaticamente as verificações Terraform
- **Se não houver problemas**: O job passa sem criar issues
- **Se houver problemas**: O job falha e issues são criadas/reativadas

## 📝 Notas

- A action usa `GITHUB_TOKEN` automaticamente (não precisa configurar)
- As ferramentas são instaladas a cada execução (não são cached)
- Issues duplicadas são evitadas através da verificação de títulos
- A action funciona apenas em runners Linux (Ubuntu)

## 🤝 Contribuindo

Contribuições são bem-vindas! Por favor, abra uma issue ou pull request.

## 📄 Licença

[Especifique a licença do seu projeto]

## 🔗 Links Úteis

- [Hadolint Documentation](https://github.com/hadolint/hadolint)
- [Trivy Documentation](https://github.com/aquasecurity/trivy)
- [Terrascan Documentation](https://github.com/tenable/terrascan)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

