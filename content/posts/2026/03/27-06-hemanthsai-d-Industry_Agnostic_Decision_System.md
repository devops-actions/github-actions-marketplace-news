---
title: AI Decision Platform — Customer Support Triage
date: 2026-03-27 06:15:57 +00:00
tags:
  - hemanthsai-d
  - GitHub Actions
draft: false
repo: https://github.com/hemanthsai-d/Industry_Agnostic_Decision_System
marketplace: https://github.com/marketplace/actions/ai-decision-platform-customer-support-triage
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/hemanthsai-d/Industry_Agnostic_Decision_System** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-decision-platform-customer-support-triage) to find the latest changes.

## Action Summary

The "Decision Platform" GitHub Action is a production-grade AI-powered decision engine designed to automate and enhance customer support triage. It streamlines tasks such as intent classification, evidence retrieval, confidence scoring, policy enforcement, and response generation, while escalating uncertain cases to human agents. This solution reduces manual workload, improves response accuracy, and continuously learns from human feedback to optimize performance.

## Release notes

# AI Decision Platform — Industry-Agnostic Customer Support Intelligence

An end-to-end AI-powered decision system that classifies customer support messages across 30 intent categories, scores confidence using 5 fused signals, and decides whether to auto-respond, abstain, or escalate — all within a single API call.

## What It Does

A customer message enters the pipeline and passes through 8 stages in about 150ms:

1. **PII Redaction** — Masks 13 sensitive data patterns such as SSNs, credit cards, emails, and phone numbers before AI processing  
2. **Prompt Injection Defense** — Uses a 3-layer shield with 18 regex rules, role marker checks, and entropy scoring  
3. **Hybrid Retrieval** — Combines semantic and lexical search over a knowledge base using pgvector  
4. **Intent Routing** — Classifies the message into 30 support intent categories using a fine-tuned model  
5. **Confidence Scoring** — Fuses 5 signals:
   - Route confidence  
   - Evidence quality  
   - Escalation risk  
   - Out-of-distribution (OOD) score  
   - Contradiction detection  
6. **Policy Gate** — Applies OPA/Rego rules for business logic, including high-risk term escalation and confidence thresholds  
7. **Response Generation** — Produces an LLM-generated answer grounded in retrieved evidence  
8. **Anti-Copy Validation** — Verifies the response is original and not a verbatim copy of the source content  

## Key Features

- **3 Decision Outcomes**
  - **Auto-respond** for confident cases  
  - **Abstain** when uncertain  
  - **Escalate** for high-risk cases  

- **5-Stage Canary Rollout**
  - SHA-256 bucketed deployment flow: `0% → 5% → 25% → 50% → 100%`
  - Automatic rollback on degradation  

- **Full Observability**
  - 25+ Prometheus metrics  
  - 14 alert rules  
  - Grafana dashboards  
  - Jaeger tracing  
  - OpenTelemetry instrumentation  

- **JWT RBAC Authentication**
  - Permission-based access control  
  - Tenant-level isolation  

- **Multi-Tenant Architecture**
  - PostgreSQL Row-Level Security (RLS)  
  - Configurable data retention policies  

- **Rate Limiting**
  - Redis-backed per-tenant and per-user rate limits  

- **Production Operations**
  - AlertManager routing across 4 severity tiers  
  - On-call escalation windows: `5 min → 15 min → 30 min`  
  - Incident response runbooks  

## Tech Stack

| Layer | Technology |
|------|------------|
| API | FastAPI, Python 3.13 |
| Database | PostgreSQL 16, pgvector |
| Cache | Redis 7 |
| Embeddings | Sentence-Transformers (`all-MiniLM-L6-v2`) |
| LLM | Ollama (`qwen2.5:7b-instruct`) |
| Policy | OPA 0.69, Rego |
| Observability | Prometheus, Grafana, AlertManager, Jaeger, OpenTelemetry |
| Infrastructure | Docker Compose, Kubernetes, Helm, Terraform |

## Performance

- **P50 Latency:** 55.5ms  
- **P95 Latency:** 101.8ms  
- **Error Rate:** 0% across 2,319 requests in load testing  
- **SLO Target:** 99.9% availability  

## Quick Start

```bash
docker compose --profile core --profile observability up -d
python scripts/seed_db.py
python scripts/generate_token.py --role agent

curl -X POST http://localhost:8000/v1/assist/decide \
  -H "Authorization: Bearer <token>" \
  -H "Content-Type: application/json" \
  -d '{"issue_text": "I was charged twice"}'
