# Core Announcement

Status: draft only. Filled from `templates/core/ANNOUNCEMENT.md` on
2026-08-13.

## Hook

AI coding usage is split across local Claude Code, OpenAI Codex, Cursor, Grok,
and Kimi Code data, which makes day-by-day cost and token review awkward.

## What It Is

ccstats is a fast CLI for token and cost usage analytics across Claude Code,
OpenAI Codex, Cursor, Grok, and Kimi Code logs.

## Why It Exists

I wanted one local command that could summarize AI coding usage by day, project,
model, and session instead of checking each tool's local data separately.

## Demo

Blocked until a sanitized terminal capture from the verified quickstart is
recorded. The README card contains illustrative data and is not proof.

## Proof

Verified on 2026-08-13: crates.io max version `0.4.0`, 365 total downloads, 147
recent downloads, GitHub latest release `v0.4.0`, 7 GitHub stars, and a
successful temporary install plus `ccstats codex today --no-cost` quickstart
run.

## Install / Try

```bash
cargo install ccstats --version 0.4.0 --locked
```

## Known Limitations

Cursor support is experimental because Cursor's local database schema is not a
public API. Grok support reports local context-token snapshots, not precise
provider billable usage or account quota.

## CTA

Try it from the repo or crates.io, then open an issue with the usage breakdown
that is missing from your workflow:

- https://github.com/majiayu000/ccstats
- https://crates.io/crates/ccstats
