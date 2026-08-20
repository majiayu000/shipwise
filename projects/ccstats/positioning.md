# Positioning

## One Sentence

```text
ccstats is for developers using Claude Code, OpenAI Codex, Cursor, Grok, or
Kimi Code who need local token and cost usage analytics.
It reads local usage logs and databases to deliver daily, weekly, monthly,
project, session, and model-level usage summaries.
```

## Target User

- Developers who rely on AI coding tools and want local, scriptable usage
  visibility.
- Maintainers who need to compare token/cost patterns across projects,
  sessions, and models without sending logs to a hosted dashboard.

## Problem

- AI coding usage is fragmented across local Claude Code, Codex, Cursor, Grok,
  and Kimi Code stores.
- Native account dashboards do not provide the same local project/session
  breakdowns or cross-tool view.

## Alternatives

- Manual inspection of JSONL logs or local SQLite files.
- Provider account dashboards.
- Custom scripts around Claude Code or Codex session directories.

## Differentiation

- Local-first CLI with multiple AI coding sources.
- Supports Claude Code and OpenAI Codex logs, the Cursor usage API, Grok
  per-turn usage with a snapshot fallback, and Kimi Code session usage.
- Provides CLI and Rust SDK surfaces from the same aggregation logic.

## Proof

- GitHub README on `main` documents Homebrew, cargo-binstall, cargo install,
  shell script, and manual release download paths.
- crates.io reports max version `0.4.0`, 404 total downloads, and 184 recent
  downloads as of 2026-08-20.
- GitHub latest release `v0.5.0` includes prebuilt archives and checksums; it is
  currently ahead of crates.io.
- `cargo install ccstats --version 0.4.0 --locked` succeeded in a temporary
  root during the 2026-08-13 Shipwise dogfood refresh.

## Search Keywords

Terms the target user would actually type (the problem, not the brand).
See `docs/DISCOVERABILITY.md` and `templates/seo/keyword_map.md`.

- Primary: token/cost usage analytics
- Secondary: Claude Code usage stats, Codex usage stats, Cursor usage stats
- Long-tail: local AI coding token usage CLI, OpenAI Codex cost analytics,
  Claude Code project session usage

## Limitations

- Cursor requires an explicit API key or dashboard session token; project
  aggregation and 5-hour billing blocks are not supported for Cursor.
- Grok sessions without `turn_completed.usage` fall back to an
  `estimated_proxy` snapshot cost; Grok 5-hour billing blocks are not supported.
- This Shipwise run did not publish external community posts because explicit
  platform authorization was not provided.
