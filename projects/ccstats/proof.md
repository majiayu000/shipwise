# Proof

Do not publish claims from this file unless their status is `verified`.

## Verification Summary

- Verification date: 2026-08-20 for live metadata and the discoverability gate;
  2026-08-13 for the install and quickstart
- Verified by: Shipwise dogfood refresh for issue #8
- Result: the discoverability subset gate passed; external launch remains
  blocked on version alignment, real-output proof, platform/account
  authorization, and final copy approval

## Install And Quickstart

```bash
cargo install ccstats --version 0.4.0 --locked --root /tmp/shipwise-ccstats-0.4.0-1786552427 --force
/tmp/shipwise-ccstats-0.4.0-1786552427/bin/ccstats codex today --no-cost
```

Expected output:

```text
A Token Usage table for local Codex data.
```

Status: verified in this dogfood refresh. The command rendered local usage
totals, but those private local totals are not copied into public launch docs.

## Proof Assets

| Asset | Path or URL | Real data? | Status |
|---|---|---:|---|
| README card | https://github.com/majiayu000/ccstats/blob/main/docs/branding/readme-card.png | no — imagegen-generated illustrative dashboard data | marketing visual only; not proof |
| GitHub social preview | https://repository-images.githubusercontent.com/1148135944/8a73d2be-8357-4c18-b705-08f54d9383ac | unverified | preview configured; not proof |
| Terminal demo GIF | not recorded | not applicable | missing |
| Benchmark | not recorded | not applicable | not applicable |
| User quote | not recorded | not applicable | not applicable |

The README card contains illustrative token, cost, request, and log values that
are not tied to a recorded ccstats run. It must not be cited as real output or
published as numeric proof. External launch remains blocked until a sanitized
terminal capture from the verified quickstart is recorded.

## Claim Inventory

| Claim | Source or command | Date | Status | Publishable? |
|---|---|---:|---|---:|
| crates.io max version is `0.4.0` | crates.io crate API | 2026-08-20 | verified | yes |
| crates.io total downloads are 404 and recent downloads are 184 | crates.io crate API | 2026-08-20 | verified | yes, with date |
| GitHub latest release is `v0.5.0` | GitHub release metadata | 2026-08-20 | verified | yes |
| GitHub release `v0.5.0` has prebuilt assets and checksums | GitHub release metadata | 2026-08-20 | verified | yes |
| GitHub stars are 11, forks are 0, and open issues are 0 | GitHub repo metadata | 2026-08-20 | verified | yes, with date |
| GitHub social preview image is configured | GitHub metadata and subset gate input | 2026-08-20 | verified | yes |
| `cargo install ccstats --version 0.4.0 --locked` works | local temporary install root | 2026-08-13 | verified | yes |
| `ccstats codex today --no-cost` renders a Token Usage table | local temporary install root | 2026-08-13 | verified | yes, without local totals |
| Shipwise discoverability subset checks pass | `repo_seo_baseline.py --project-yaml ... --json` | 2026-08-20 | verified | yes, as a local subset only |

## Numeric Claims

- 404 total crates.io downloads as of 2026-08-20.
- 184 recent crates.io downloads as of 2026-08-20.
- 11 GitHub stars as of 2026-08-20.
- 0 GitHub forks as of 2026-08-20.
- 0 open GitHub issues as of 2026-08-20.

## Limitations

- Cursor requires an explicit API key or dashboard session token; project
  aggregation and 5-hour billing blocks are not supported for Cursor.
- Grok sessions without `turn_completed.usage` fall back to an
  `estimated_proxy` snapshot cost; Grok 5-hour billing blocks are not supported.
- GitHub release `v0.5.0` is newer than crates.io max version `0.4.0`; the
  package install command therefore still installs `0.4.0`.
- External community posts were not authorized in this Shipwise run.

## Launch Blockers

- Explicit platform/account authorization is not recorded.
- Final copy approval is not recorded.
- A sanitized real-output terminal demo or screenshot is not recorded.
- GitHub release and crates.io package versions must be aligned, or the launch
  plan must explicitly choose which version is being launched.
