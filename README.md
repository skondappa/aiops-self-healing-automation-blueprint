# aiops-self-healing-automation-blueprint
From Alert → RCA → Remediation: Building an AI-Assisted Automation Loop (Safely)
├─ README.md
├─ docs/
│  ├─ architecture.md
│  ├─ guardrails.md
│  ├─ prompt-contract.md
├─ prompts/
│  ├─ rca_to_json.prompt.md
│  ├─ remediation_plan.prompt.md
├─ eda/
│  ├─ rulebook.yml
│  ├─ webhook_example_event.json
├─ automation/
│  ├─ enrichment_playbook.yml
│  ├─ remediation_playbook.template.yml
│  ├─ verify_playbook.yml
├─ guardrails/
│  ├─ ansible-lint.yml
│  ├─ policy/
│  │  ├─ playbook.rego
│  │  ├─ README.md
│  ├─ validate.sh
├─ .github/workflows/
│  ├─ validate.yml
└─ LICENSE
