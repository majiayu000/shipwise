# Launch Readiness Report: {{project_name}}

Use this before writing publishable launch copy. If any P0 check is `missing`,
`unverified`, or `blocked`, the output is a preflight TODO, not a launch draft.

## Summary

- Project: {{project_name}}
- Version: {{version}}
- Archetype: {{archetype}}
- Goal type: {{goal_type}}
- Repo: {{repo_url}}
- Review date: {{verification_date}}
- Recommendation: {{readiness_recommendation}}

## Status Legend

- `verified`: directly checked in this launch cycle.
- `missing`: required information or artifact is absent.
- `unverified`: present but not checked.
- `blocked`: prevents launch.
- `not applicable`: not needed for this archetype or channel.

## P0 Launch Blockers

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Target user named | {{target_user_status}} | {{target_user}} | {{target_user_next_action}} |
| Install/access path works | {{install_status}} | {{install_command}} | {{install_next_action}} |
| Quickstart works | {{quickstart_status}} | {{quickstart_command}} | {{quickstart_next_action}} |
| Real proof asset exists | {{proof_status}} | {{proof}} | {{proof_next_action}} |
| License is present | {{license_status}} | {{license_evidence}} | {{license_next_action}} |
| Support path exists | {{support_status}} | {{support_path}} | {{support_next_action}} |

## P1 Readiness Gaps

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Release or package path | {{distribution_status}} | {{distribution_evidence}} | {{distribution_next_action}} |
| README first screen | {{readme_status}} | {{readme_evidence}} | {{readme_next_action}} |
| Limitations documented | {{limitations_status}} | {{limitations}} | {{limitations_next_action}} |
| Platform source docs checked | {{source_docs_status}} | {{source_docs_checked}} | {{source_docs_next_action}} |
| Baseline metrics recorded | {{metrics_status}} | {{baseline_metrics}} | {{metrics_next_action}} |

## P2 Channel Polish

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Platform-specific copy | {{platform_copy_status}} | {{platform_copy_evidence}} | {{platform_copy_next_action}} |
| Social image or preview | {{social_image_status}} | {{social_image}} | {{social_image_next_action}} |
| Second-wave channels | {{second_wave_status}} | {{secondary_channels}} | {{second_wave_next_action}} |

## Verification Commands

```bash
{{verification_command}}
```

Expected output:

```text
{{expected_output}}
```

## Decision

- Launch: {{launch_decision}}
- Reason: {{launch_decision_reason}}
- Next action: {{next_action}}

## Non-Goals

- Do not guarantee GitHub Trending, Product Hunt placement, Hacker News success,
  stars, downloads, traffic, or external community response.
- Do not write publishable copy until install/access, quickstart, license,
  proof, and support path are ready.
- Do not store platform credentials or session data in this repository.
