#!/usr/bin/env bash
set -e

PLAYBOOK=${1:-automation/remediation_playbook.template.yml}

ansible-lint -c guardrails/ansible-lint.yml "$PLAYBOOK"
yamllint "$PLAYBOOK"
conftest test "$PLAYBOOK" -p guardrails/policy

echo "Guardrails passed"