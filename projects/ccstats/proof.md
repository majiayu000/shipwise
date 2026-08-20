# Proof

Do not publish claims from this file unless their status is `verified`.

## Verification Summary

- Verification date: 2026-08-13
- Verified by: Shipwise dogfood refresh for issue #8
- Result: blocked for external launch until platform/account authorization,
  final copy approval, and the documented SEO Agent Suite `--project-yaml` gate
  are resolved

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
| crates.io max version is `0.4.0` | crates.io crate API | 2026-08-13 | verified | yes |
| crates.io total downloads are 365 and recent downloads are 147 | crates.io crate API | 2026-08-13 | verified | yes, with date |
| GitHub latest release is `v0.4.0` | GitHub release metadata | 2026-08-13 | verified | yes |
| GitHub release `v0.4.0` has prebuilt assets and checksums | GitHub release metadata | 2026-08-13 | verified | yes |
| GitHub stars are 7, forks are 0, and open issues are 1 | GitHub repo metadata | 2026-08-13 | verified | yes, with date |
| GitHub social preview image is configured | GitHub repo metadata | 2026-08-13 | verified | yes |
| `cargo install ccstats --version 0.4.0 --locked` works | local temporary install root | 2026-08-13 | verified | yes |
| `ccstats codex today --no-cost` renders a Token Usage table | local temporary install root | 2026-08-13 | verified | yes, without local totals |
| SEO Agent Suite supports `--project-yaml` locally | `repo_seo_baseline.py --help` | 2026-08-13 | blocked | no |

## Numeric Claims

- 365 total crates.io downloads as of 2026-08-13.
- 147 recent crates.io downloads as of 2026-08-13.
- 7 GitHub stars as of 2026-08-13.
- 0 GitHub forks as of 2026-08-13.
- 1 open GitHub issue as of 2026-08-13.

## Limitations

- Cursor support is experimental because Cursor's local database schema is not a
  public API.
- Grok support reports local context-token snapshots, not precise provider
  billable usage or account quota.
- The local SEO Agent Suite checkout does not expose the documented
  `--project-yaml` gate, so the project-yaml subset gate cannot be marked green.
- External community posts were not authorized in this Shipwise run.

## Launch Blockers

- Explicit platform/account authorization is not recorded.
- Final copy approval is not recorded.
- A sanitized real-output terminal demo or screenshot is not recorded.
- SEO Agent Suite must be updated to a revision with `--project-yaml`, or the
  launch plan must explicitly accept proceeding with only the legacy baseline.
