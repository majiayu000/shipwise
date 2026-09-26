# Core Announcement

Status: draft only. Refreshed from `templates/core/ANNOUNCEMENT.md` on
2026-09-26. This is source copy for platform-specific drafts, not a post.

## Hook

AI coding usage is scattered across agent logs and services. Comparing token
and cost usage by day, project, model, or session can mean checking each one
separately.

## What It Is

ccstats is a local-first CLI, with a desktop build, for token and cost analytics
across 29 AI coding-agent data sources. It renders terminal reports and
JSON/CSV from usage metadata. Unknown costs remain unknown, and estimates are
labeled.

## Why It Exists

It gives developers a single local view of usage without a ccstats account.

## Demo

[This terminal table](../assets/2026-09-26-cli-demo.md) is actual `v0.9.0`
release-binary output from a synthetic Codex fixture. Its token counts are
sample data, not user metrics. The upstream README card is an illustration,
not numeric proof.

## Proof

The [GitHub release](https://github.com/majiayu000/ccstats/releases/tag/v0.9.0)
and [crates.io package](https://crates.io/crates/ccstats) both report `0.9.0`.
The release archive passed its published SHA-256 checksum, and its binary
rendered the linked fixture-backed table on 2026-09-26. A separate clean
`cargo install` and real-log CLI run passed; private usage totals were not
recorded in Shipwise. See the [readiness report](../readiness-report.md).

## Install / Try

```bash
cargo install ccstats --version 0.9.0 --locked
ccstats today --source codex
```

## Known Limitations

Cursor usage uses its API and requires an explicit credential; offline mode
does not turn it into a local source. Grok API-equivalent costs are not actual
subscription charges. Pricing refresh and currency conversion can use the
network. See [upstream privacy details](https://github.com/majiayu000/ccstats/blob/main/docs/PRIVACY.md).

## CTA

Try it from [GitHub](https://github.com/majiayu000/ccstats) or
[crates.io](https://crates.io/crates/ccstats), then open an issue with the
source or usage breakdown missing from your workflow. Do not attach raw session
logs or credentials to a public issue.
