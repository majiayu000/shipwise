# Proof

Do not publish claims from this file unless their status is `verified`.

## Verification Summary

- Verification date: 2026-06-26
- Verification command: public GitHub repo metadata, GitHub latest release, and
  crates.io crate API checks recorded in `project.yaml`, `positioning.md`, and
  `metrics.md`
- Verified by: Shipwise dogfood run
- Result: blocked for external launch until final authorization and asset
  approval are recorded

## Install And Quickstart

```bash
cargo install ccstats --version 0.2.65 --locked
ccstats codex today --no-cost
```

Expected output:

```text
Daily Codex usage summary for local data, without cost calculation.
```

Status: verified in the dogfood record; rerun before external posting.

## Proof Assets

| Asset | Path or URL | Real data? | Status |
|---|---|---:|---|
| Demo |  |  | missing |
| Screenshot | https://github.com/majiayu000/ccstats/blob/main/docs/branding/readme-card.png | yes | unverified |
| Benchmark |  |  | not applicable |
| User quote |  |  | not applicable |

## Claim Inventory

| Claim | Source or command | Date | Status | Publishable? |
|---|---|---:|---|---:|
| crates.io max version is `0.2.65` | crates.io crate API | 2026-06-26 | verified | yes |
| crates.io total downloads are 282 and recent downloads are 142 | crates.io crate API | 2026-06-26 | verified | yes, with date |
| GitHub latest release is `v0.2.64` | GitHub release metadata | 2026-06-26 | verified | yes, with date |
| GitHub release `v0.2.65` does not exist | GitHub release metadata | 2026-06-26 | verified | yes, as blocker |
| GitHub stars are 6 and open issues are 0 | GitHub repo metadata | 2026-06-26 | verified | yes, with date |

## Numeric Claims

- 282 total crates.io downloads as of 2026-06-26.
- 142 recent crates.io downloads as of 2026-06-26.
- 6 GitHub stars as of 2026-06-26.
- 0 open GitHub issues as of 2026-06-26.

## Limitations

- Cursor support is experimental because Cursor's local database schema is not a
  public API.
- Grok support reports local context-token snapshots, not precise provider
  billable usage or account quota.
- External community posts were not authorized in this Shipwise run.

## Launch Blockers

- Explicit platform/account authorization is not recorded.
- Final copy approval is not recorded.
- Terminal demo GIF is missing or unverified.
- GitHub release `v0.2.65` does not exist, while crates.io is at `0.2.65`.
