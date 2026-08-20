# Feedback

| Source | Type | Summary | Action |
|---|---|---|---|
| Shipwise dogfood | Template defect | `templates/project.yaml` drifted from `projects/_template/project.yaml`. | Fixed by https://github.com/majiayu000/shipwise/issues/3 |
| Shipwise dogfood | Scaffold defect | `scripts/new_project.sh` silently skipped field fill without perl and hardcoded the template file list. | Fixed by https://github.com/majiayu000/shipwise/issues/4 |
| Shipwise dogfood | CI defect | The repo lacked scaffold smoke and markdownlint gates. | Fixed by https://github.com/majiayu000/shipwise/issues/5 |
| Shipwise dogfood | Source-of-truth defect | Matrix and release checklist content duplicated canonical docs. | Fixed by https://github.com/majiayu000/shipwise/issues/6 |
| Shipwise dogfood | Agent discoverability defect | Root agent entry point was missing. | Fixed by https://github.com/majiayu000/shipwise/issues/7 |
| ccstats readiness review | Launch blocker | External posting is not authorized in this task, and terminal demo GIF was not verified. | Keep launch posts unpublished until explicit authorization and demo proof exist. |
| ccstats launch boundary review | Launch blocker | GitHub release `v0.2.65` did not exist while crates.io was at `0.2.65`; no platform/account authorization or final copy approval was recorded. | The old mismatch was resolved at `0.4.0`; a new mismatch exists on 2026-08-20 because GitHub is at `v0.5.0` while crates.io is at `0.4.0`. |
| ccstats template-flow refresh | Template defect | Real platform copy lived in one hand-written aggregate file instead of exercising `PROJECT_BRIEF -> ANNOUNCEMENT -> platform templates`. | Fixed by https://github.com/majiayu000/shipwise/pull/13 |
| ccstats discoverability refresh | Gate blocker | The 2026-08-13 local SEO Agent Suite checkout did not expose `repo_seo_baseline.py --project-yaml`. | Resolved in https://github.com/majiayu000/shipwise/pull/13: rerun with SEO Agent Suite `bb83ab7` passed every Shipwise subset check on 2026-08-20. |
