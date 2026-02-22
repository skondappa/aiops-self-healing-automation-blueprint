# Prompt Contract (AI Output)

AI output MUST be strict JSON only.

Required schema (example):

```json
{
  "summary": "string",
  "root_cause": "string",
  "confidence": 0.0,
  "risk_level": "low|medium|high",
  "files_to_change": ["string"],
  "services_to_restart": ["string"],
  "recommended_fix_steps": ["string"]
}