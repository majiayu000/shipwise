# Feedback

| Source | Type | Summary | Action |
|---|---|---|---|
| Shipwise dogfood | Template defect | `templates/project.yaml` drifted from `projects/_template/project.yaml`. | Fixed by https://github.com/majiayu000/shipwise/issues/3 |
| Shipwise dogfood | Scaffold defect | `scripts/new_project.sh` silently skipped field fill without perl and hardcoded the template file list. | Fixed by https://github.com/majiayu000/shipwise/issues/4 |
| Shipwise dogfood | CI defect | The repo lacked scaffold smoke and markdownlint gates. | Fixed by https://github.com/majiayu000/shipwise/issues/5 |
| Shipwise dogfood | Source-of-truth defect | Matrix and release checklist content duplicated canonical docs. | Fixed by https://github.com/majiayu000/shipwise/issues/6 |
| Shipwise dogfood | Agent discoverability defect | Root agent entry point was missing. | Fixed by https://github.com/majiayu000/shipwise/issues/7 |
| ccstats readiness review | Launch blocker | External posting is not authorized in this task, and terminal demo GIF was not verified. | Keep launch posts unpublished until explicit authorization and demo proof exist. |
