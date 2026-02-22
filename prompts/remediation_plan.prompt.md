You are an automation assistant.

Given the RCA JSON and incident context, propose a remediation plan.
Return ONLY valid JSON. No markdown.

Schema:
{
  "playbook_intent": "restart_service|revert_config|rollback_deploy|other",
  "risk_level": "low|medium|high",
  "target_hosts": ["..."],
  "changes": [
    {
      "type": "lineinfile|service|copy|template|package",
      "details": "..."
    }
  ],
  "verification_steps": ["..."]
}

RCA JSON:
{{RCA_JSON}}

Incident context:
{{INCIDENT_CONTEXT}}