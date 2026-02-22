# AI-Ops Self-Healing Automation Blueprint (with Guardrails)

This repo is a vendor-neutral blueprint for an AI-assisted AIOps workflow:

**Event → Enrichment → AI RCA → Remediation Plan → Guardrails → Execute → Verify**

The goal is NOT "AI executes changes blindly".
The goal is:

> **AI proposes. Guardrails decide. Automation executes.**

## Repository layout

- `eda/` : Event-driven trigger examples (rulebook + sample event)
- `automation/` : Ansible playbooks (enrich, remediate template, verify)
- `prompts/` : Prompt templates for AI (JSON contract)
- `guardrails/` : lint + policy-as-code validation gates
- `docs/` : architecture + guardrails + prompt contract

## Quick Start (local)

### 1) Install tools (example)
- Python + pip
- `ansible-core`
- `ansible-lint`
- `yamllint`
- `conftest` (OPA policy runner)

### 2) Validate playbook template with guardrails
```bash
chmod +x guardrails/validate.sh
./guardrails/validate.sh automation/remediation_playbook.template.yml