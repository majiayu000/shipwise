# Template Variable Contract

Use these variables consistently across `templates/` and `projects/_template/`.
When a required value is missing, write a preflight TODO instead of inventing
publishable copy.

## Canonical Project Fields

| Variable | Source field | Required before launch? |
|---|---|---:|
| `{{project_name}}` | `project.yaml:name` | yes |
| `{{version}}` | `project.yaml:version` | yes |
| `{{archetype}}` | `project.yaml:archetype` | yes |
| `{{repo_url}}` | `project.yaml:repo` | yes |
| `{{docs_url}}` | `project.yaml:docs` | no |
| `{{website_url}}` | `project.yaml:website` | no |
| `{{target_user}}` | `project.yaml:audience.target_user` | yes |
| `{{problem}}` | `project.yaml:audience.primary_problem` | yes |
| `{{one_sentence}}` | `project.yaml:positioning.one_sentence` | yes |
| `{{proof}}` | `project.yaml:positioning.proof` and `proof.md` | yes |
| `{{limitations}}` | `project.yaml:positioning.limitations` | yes |
| `{{install_command}}` | `project.yaml:package.install_command` | yes |
| `{{quickstart_command}}` | `project.yaml:verification.quickstart_command` | yes |
| `{{expected_output}}` | `project.yaml:verification.expected_output` | yes |
| `{{verification_command}}` | `project.yaml:verification.verification_command` | yes |
| `{{verification_date}}` | `project.yaml:verification.verification_date` | yes |
| `{{license_status}}` | `project.yaml:verification.license_status` | yes |
| `{{support_path}}` | `project.yaml:verification.support_path` | yes |
| `{{proof_asset_path}}` | `project.yaml:verification.proof_asset_path` | yes |
| `{{goal_type}}` | `project.yaml:launch.goal_type` | yes |
| `{{launch_blockers}}` | `project.yaml:launch.launch_blockers` | yes when blocked |
| `{{launch_effort_hours}}` | `project.yaml:launch.launch_effort_hours` | no |
| `{{primary_cta}}` | `project.yaml:channels.primary` plus repo/package link | yes |
| `{{launch_date}}` | `project.yaml:review_dates.day_1` or launch plan | yes when scheduled |
| `{{social_image}}` | `project.yaml:assets.social_image` | no |
| `{{secondary_channels}}` | `project.yaml:channels.secondary` | no |

## Derived Copy Variables

These may be drafted from canonical fields, but they must remain truthful and
traceable.

| Variable | Derive from |
|---|---|
| `{{solution}}` | project brief or README |
| `{{proof_or_result}}` | `{{proof}}` |
| `{{problem_or_surprising_result}}` | `{{problem}}` or verified result |
| `{{pain_or_result}}` | `{{problem}}` or verified result |
| `{{one_sentence_problem}}` | `{{problem}}`, written as a local issue statement |
| `{{short_origin_story}}` | project brief |
| `{{demo_url}}` | `project.yaml:assets.demo` |
| `{{demo_url_or_gif}}` | `project.yaml:assets.demo` |
| `{{benchmark_or_real_output}}` | `proof.md` verified benchmark or output |
| `{{differentiation}}` | project brief |
| `{{feedback_request}}` | launch plan |
| `{{use_case}}` | project brief |
| `{{short_value}}` | `{{one_sentence}}`, shortened for title |
| `{{short_tagline}}` | `{{one_sentence}}`, shortened for Product Hunt |
| `{{achieve_result}}` | verified user outcome |
| `{{origin_problem}}` | project brief |
| `{{primary_use_case}}` | project brief |
| `{{title}}` | platform-specific title |
| `{{alternatives_and_gaps}}` | project brief |
| `{{technical_summary}}` | README or docs |
| `{{demo}}` | `project.yaml:assets.demo` |
| `{{quickstart}}` | `{{quickstart_command}}` |

## Distribution Variables

| Variable | Source field |
|---|---|
| `{{release_command}}` | release plan or package docs |
| `{{release_notes}}` | `templates/github/RELEASE_NOTES.md` output |
| `{{package_command}}` | `project.yaml:package.install_command` |
| `{{package_notes}}` | package registry notes |
| `{{homebrew_command}}` | distribution plan |
| `{{homebrew_notes}}` | distribution plan |
| `{{docker_command}}` | distribution plan |
| `{{docker_notes}}` | distribution plan |
| `{{source_command}}` | source install docs |
| `{{source_notes}}` | source install docs |

## Readiness Report Variables

Status variables must use one of: `verified`, `missing`, `unverified`,
`blocked`, `not applicable`.

| Variable | Meaning |
|---|---|
| `{{readiness_recommendation}}` | `launch`, `wait`, or `blocked` |
| `{{*_status}}` | status for the named readiness check |
| `{{*_evidence}}` | source, path, command, or checked fact |
| `{{*_next_action}}` | local next action |
| `{{source_docs_checked}}` | platform docs read in this launch cycle |
| `{{baseline_metrics}}` | metrics from `metrics.md` |
| `{{launch_decision}}` | `yes` or `no` |
| `{{launch_decision_reason}}` | specific reason |
| `{{next_action}}` | next local action |

Concrete readiness prefixes currently used by the report template:

```text
target_user
install
quickstart
proof
license
support
distribution
readme
limitations
source_docs
metrics
platform_copy
social_image
second_wave
```

## Platform-Only Variables

These are intentionally platform-specific and do not need a `project.yaml`
field.

| Variable | Scope |
|---|---|
| `{{subreddit}}` | Reddit |
| `{{community_specific_title}}` | Reddit |
| `{{repo_or_demo_url}}` | HN |
| `{{working_1}}`, `{{working_2}}` | HN status notes |
| `{{limitation_1}}`, `{{limitation_2}}` | short platform copy |
| `{{source_1}}`, `{{source_2}}`, `{{source_3}}` | readiness issue evidence |
| `{{comparison_1}}`, `{{comparison_2}}` | trend comparison |
| `{{retrieval_date}}` | trend workflow |
| `{{project_slug}}` | folder-safe project name |

## Chinese Template Aliases

Chinese-community templates may use localized placeholders. Map them before
publishing:

| Localized variable | Canonical variable |
|---|---|
| `{{项目名}}` | `{{project_name}}` |
| `{{一句话价值}}` | `{{one_sentence}}` |
| `{{项目类型}}` | `{{archetype}}` |
| `{{目标用户}}` | `{{target_user}}` |
| `{{具体场景}}` | project brief use case |
| `{{痛点}}` | `{{problem}}` |
| `{{真实背景和动机}}` | `{{short_origin_story}}` |
| `{{安装命令}}` | `{{install_command}}` |
| `{{quickstart}}` | `{{quickstart_command}}` |
| `{{真实输出、截图、benchmark 或案例}}` | `{{proof}}` |
| `{{限制1}}`, `{{限制2}}` | `{{limitations}}` |
| `{{反馈问题}}` | `{{feedback_request}}` |
