# Project Brief

Status: draft source refreshed from `templates/core/PROJECT_BRIEF.md` on
2026-09-26. No external post is authorized by this file.

## Identity

- Project: ccstats
- Version: GitHub release `v0.9.0`; crates.io package `0.9.0`
- Archetype: CLI / local developer tool (`cli-tool`)
- Repo: https://github.com/majiayu000/ccstats
- Install/access: `cargo install ccstats --version 0.9.0 --locked`

## Audience

- Target user: developers using AI coding agents who want local, scriptable
  token and cost usage reports.
- Current pain: usage metadata is scattered across agent logs and services,
  making a day, project, model, or session breakdown hard to inspect.
- Existing workaround: inspect separate agent logs and provider dashboards or
  maintain custom parsing scripts.
- Why now: GitHub and crates.io both publish `0.9.0`; the current README
  documents 29 registered sources and a no-account CLI quickstart.

## Trend Signals

- Sources checked: ccstats GitHub README, release metadata, crates.io API,
  current source and privacy docs, and the dated Shipwise readiness report.
- Comparable projects: local AI coding usage dashboards and token/cost CLIs.
- Signal type: readiness validation, not a promise of launch traffic.
- Local opportunity: seek feedback on source coverage and useful breakdowns
  after the per-platform copy and account are approved.
- Not guaranteed: GitHub Trending, HN ranking, Reddit response, stars,
  downloads, or traffic.

## Positioning

```text
ccstats gives developers a local-first view of token and cost usage across 29
AI coding-agent data sources. It renders terminal reports and JSON/CSV from
usage metadata without requiring a ccstats account.
```

## Proof

- Demo: [actual 0.9.0 CLI output over a synthetic Codex fixture](../assets/2026-09-26-cli-demo.md).
  The numbers are sample data, not a user's usage or a benchmark.
- Benchmark: not used for this launch.
- Real output: the checksum-verified `v0.9.0` release binary rendered a Token
  Usage table from the isolated fixture on 2026-09-26. A separate clean
  `cargo install` and real-log run also passed without publishing usage values.
- User quote: not used for this launch.
- Comparison: not used for this launch.
- Marketing visual: the upstream README card has illustrative values and must
  not be presented as measured output.

## Limitations

- Cursor usage comes from its API and needs an explicit credential. `--offline`
  does not make this source local; an offline replay file is a separate path.
- Grok API-equivalent cost is not a user's actual subscription charge; missing
  request coverage can leave a range or unknown value.
- Pricing refresh and currency conversion can use the network. No ccstats
  account is required; see the upstream privacy document for the full scope.
- External platform posting requires explicit account authorization and final
  per-platform copy approval.

## Launch Goal

Feedback on missing data sources and breakdowns.

## Selected Channels

- Primary: GitHub release and crates.io as existing distribution paths; an X
  thread after account/copy approval. Show HN only if the maker treats this as
  a first public launch or major overhaul and can answer comments.
- Secondary: one relevant subreddit after its specific rules and posting
  account are checked, plus a localized community draft only if approved.
- Not doing: Product Hunt first wave, mass posting, automated DMs, or posts
  without URL logging.
