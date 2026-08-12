# Project Brief

Status: draft source filled from `templates/core/PROJECT_BRIEF.md` on
2026-08-13.

## Identity

- Project: ccstats
- Version: 0.4.0
- Archetype: CLI / local developer tool (`cli-tool`)
- Repo: https://github.com/majiayu000/ccstats
- Install/access: `cargo install ccstats --version 0.4.0 --locked`

## Audience

- Target user: developers using Claude Code, OpenAI Codex, Cursor, Grok, or Kimi
  Code who need local token and cost usage analytics.
- Current pain: AI coding usage is spread across local logs and is hard to
  inspect by day, project, model, or session.
- Existing workaround: manually inspect local JSONL, SQLite, or session metadata
  and reconcile usage across tools by hand.
- Why now: v0.4.0 aligns GitHub Releases and crates.io, adds current multi-tool
  positioning, and has a verified install/quickstart path.

## Trend Signals

- Sources checked: GitHub repo metadata, GitHub README, GitHub latest release,
  crates.io crate API, and local SEO Agent Suite baseline commands.
- Comparable projects: local Claude Code usage dashboards and token/cost usage
  CLIs.
- Signal type: readiness validation.
- Local opportunity: publish a small, honest first-wave launch focused on local
  AI coding usage visibility after final authorization.
- Not guaranteed: GitHub Trending, Hacker News ranking, Reddit response, stars,
  downloads, or any external traffic outcome.

## Positioning

```text
ccstats is for developers using Claude Code, OpenAI Codex, Cursor, Grok, or Kimi
Code who need local token and cost usage analytics.
It uses local log parsing and aggregation to deliver day, project, model, and
session-level usage summaries.
```

## Proof

- Demo: README card at
  https://github.com/majiayu000/ccstats/blob/main/docs/branding/readme-card.png
- Benchmark: not used for this launch.
- Real output: `ccstats codex today --no-cost` rendered a Token Usage table from
  local Codex data in the 2026-08-13 dogfood run.
- User quote: not used for this launch.
- Comparison: not used for this launch.

## Limitations

- Cursor support is experimental because Cursor's local database schema is not a
  public API.
- Grok support reports local context-token snapshots, not precise provider
  billable usage or account quota.
- External platform posting requires explicit platform/account authorization and
  final copy approval.

## Launch Goal

Feedback.

## Selected Channels

- Primary: GitHub release, crates.io, X thread, and HN Show HN only if this is
  treated as the first public launch and the maintainer is available.
- Secondary: niche Reddit after subreddit-specific rules are checked, plus a
  localized Chinese developer community draft if approved.
- Not doing: Product Hunt first wave, mass posting, automated DMs, or any post
  without link logging.
