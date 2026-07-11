# Launch Readiness Report

## Summary

- Project: ccstats
- Version: 0.2.65
- Archetype: cli-tool
- Review date: 2026-06-26
- Recommendation: blocked

## Status Legend

- `verified`: directly checked in this launch cycle.
- `missing`: required information or artifact is absent.
- `unverified`: present but not checked.
- `blocked`: prevents launch.
- `not applicable`: not needed for this archetype or channel.

## P0 Launch Blockers

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Target user named | verified | `project.yaml` and `positioning.md` name developers using Claude Code, OpenAI Codex, Cursor, or Grok. | Keep. |
| Install/access path works | verified | `cargo install ccstats --version 0.2.65 --locked` recorded in launch plan. | Rerun before external posting. |
| Quickstart works | verified | `ccstats codex today --no-cost` recorded in launch plan. | Rerun before external posting. |
| Proof asset exists | blocked | README card exists, terminal demo GIF is not verified. | Verify demo GIF or explicitly approve README card as the proof asset. |
| License is present | verified | GitHub repository metadata and launch plan record license presence. | Keep. |
| Support path exists | verified | GitHub issues/support path exists; 0 open issues recorded. | Keep. |

## P1 Readiness Gaps

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Release or package path | blocked | crates.io is `0.2.65`; latest GitHub release is `v0.2.64`. | Publish or defer `v0.2.65` release before external launch copy. |
| README first screen | verified | `positioning.md` records README install, quickstart, and limitations. | Rerun a final visual/readme check. |
| Limitations documented | verified | Cursor and Grok limitations are recorded. | Keep in every platform draft. |
| Platform source docs checked | unverified | Platform copy is draft only. | Recheck selected platform docs before posting. |
| Baseline metrics recorded | verified | `metrics.md` records stars, downloads, issues, and date. | Refresh metrics on launch day. |

## P2 Channel Polish

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Platform-specific copy | unverified | `platform-copy.md` is draft only. | Move approved drafts under `copy/` or update the existing draft after source-doc checks. |
| Social image or preview | unverified | README card exists; GitHub custom social preview was not verified. | Verify repository social preview before posting links. |
| Second-wave channels | not applicable | External posting is blocked. | Revisit after first-wave authorization. |

## Verification Commands

```bash
Public GitHub and crates.io metadata checks from the 2026-06-26 dogfood run.
```

## Decision

- Launch: no
- Reason: external platform/account authorization, final copy approval, proof
  asset verification, and release version alignment are still blocked.
- Next action: resolve blockers in `launch-plan.md`, then refresh this report.
