# Project Brief

Status: draft source filled from `templates/core/PROJECT_BRIEF.md` on
2026-08-13. Live evidence last refreshed 2026-08-20.

## Identity

- Project: ccstats
- Version: GitHub release 0.5.0; crates.io package 0.4.0
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
- Why now: the multi-tool positioning and 0.4.0 install/quickstart path are
  verified, but external posting must wait for GitHub `v0.5.0` and crates.io
  `0.4.0` to be aligned.

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

- Demo: blocked until a sanitized real-output terminal capture is recorded.
  The README card is imagegen-generated marketing art with illustrative data,
  not proof.
- Benchmark: not used for this launch.
- Real output: `ccstats codex today --no-cost` rendered a Token Usage table from
  local Codex data in the 2026-08-13 dogfood run.
- User quote: not used for this launch.
- Comparison: not used for this launch.

## Limitations

- Cursor requires an explicit API key or dashboard session token; project
  aggregation and 5-hour billing blocks are not supported for Cursor.
- Grok sessions without per-turn usage fall back to an estimated snapshot cost;
  Grok 5-hour billing blocks are not supported.
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
