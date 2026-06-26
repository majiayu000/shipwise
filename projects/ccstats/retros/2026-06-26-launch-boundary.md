# ccstats Launch Boundary Review

Date: 2026-06-26

## Scope

This review refreshed the ccstats launch facts and converted the remaining
Shipwise issue #8 work into an explicit authorization gate.

No external posts were published in this review.

## Fresh Evidence

- GitHub repo: https://github.com/majiayu000/ccstats
- GitHub latest release: `v0.2.64`
- GitHub release `v0.2.65`: not found
- crates.io max version: `0.2.65`
- crates.io downloads: 282 total, 142 recent
- GitHub stars: 6
- GitHub open issues: 0
- `cargo info ccstats` reports version `0.2.65`

## Decision

Keep Shipwise issue #8 open. The repo-side dogfood record is present, but the
external launch loop is not complete until platform/account authorization,
final copy approval, publishing, and post links are recorded.

## Blockers

- No explicit platform/account authorization is recorded.
- Terminal demo GIF remains unverified.
- GitHub release `v0.2.65` does not exist while crates.io is at `0.2.65`.
- Final publishable copy is not approved.

## Follow-up

- Approve or reject X, HN, Reddit, Product Hunt, blog, and Chinese community
  channels one by one.
- Decide whether to publish a GitHub release for `v0.2.65`.
- Verify or create the terminal demo GIF, or explicitly accept the README card
  as the first-wave demo asset.
- After posting, update `links.md`, `metrics.md`, `feedback.md`, and close #8.
