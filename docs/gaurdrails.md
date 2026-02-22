# Guardrails

Guardrails are mandatory when using AI to produce remediation artifacts.

## What we enforce in this repo

1. **Linting**
   - `ansible-lint`
   - `yamllint`

2. **Policy-as-code**
   - Example OPA policy: block `shell`/`command` tasks by default
   - Require explicit allowlisting for risky operations
   - Prevent touching restricted files

3. **Blast-radius defaults**
   - Encourage `--limit` usage (especially in prod)
   - Prefer idempotent modules over shell commands
   - Optional serial/canary behavior

## Recommended guardrails for production
- Human approval gates for medium/high risk
- Pull Request workflow for AI-generated playbooks
- Secure secret handling (never embed tokens in prompts)
- Change window awareness (especially for prod)
- Rollback patterns where possible