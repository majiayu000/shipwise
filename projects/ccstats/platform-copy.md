# Platform Copy

Status: draft only. Do not publish this copy until the authorization gate in
`projects/ccstats/launch-plan.md` is satisfied.

## Shared Facts

- Project: ccstats
- Repo: https://github.com/majiayu000/ccstats
- Package: https://crates.io/crates/ccstats
- Install:

  ```bash
  cargo install ccstats --version 0.2.65 --locked
  ```

- One sentence: ccstats is a fast CLI for token and cost usage analytics across
  Claude Code, OpenAI Codex, Cursor, and Grok logs.
- Verified on 2026-06-26: crates.io max version `0.2.65`, 282 total downloads,
  142 recent downloads, GitHub latest release `v0.2.64`, no GitHub release
  `v0.2.65`, 6 GitHub stars, no open GitHub issues.
- Limitations: Cursor support is experimental; Grok support reports local
  context-token snapshots, not precise provider billable usage or account
  quota.

## X Draft

```text
I built ccstats because my AI coding usage was split across local Claude Code,
Codex, Cursor, and Grok data.

It gives daily, weekly, monthly, project, session, and model-level token/cost
summaries from local data.

Try it:
cargo install ccstats --version 0.2.65 --locked

Repo: https://github.com/majiayu000/ccstats

Known limits: Cursor support is experimental; Grok local snapshots are not exact
provider billable usage.

Feedback I want: which usage breakdown is missing from your workflow?
```

## Hacker News Draft

Title:

```text
Show HN: ccstats - local token and cost analytics for AI coding tools
```

Post URL:

```text
https://github.com/majiayu000/ccstats
```

First comment:

```text
Hi HN, I built ccstats because my AI coding usage was spread across local Claude
Code, Codex, Cursor, and Grok data.

It is a fast CLI for token and cost usage analytics across local AI coding logs.

You can try it with:

cargo install ccstats --version 0.2.65 --locked

What is working:
- Daily, weekly, monthly, project, session, and model-level summaries
- Claude Code and OpenAI Codex sources, with experimental Cursor and Grok support

Known limitations:
- Cursor support is experimental because the local database schema is not a
  public API
- Grok support reports local context-token snapshots, not exact provider
  billable usage

I am especially looking for feedback on which usage breakdowns are missing from
your workflow.
```

## Reddit Draft

Subreddit: choose one relevant community after reading its current rules.

```text
I built ccstats for developers using Claude Code, OpenAI Codex, Cursor, or Grok
who want local token and cost usage analytics.

The practical use case: run one CLI command to inspect daily, weekly, monthly,
project, session, and model-level usage from local data.

Repo:
https://github.com/majiayu000/ccstats

How to try:
cargo install ccstats --version 0.2.65 --locked

What I am looking for:
Which usage breakdown would be most useful in your workflow?

Limitations:
Cursor support is experimental. Grok support reports local context-token
snapshots, not exact provider billable usage.
```

Before posting:

- Read the selected community rules.
- Rewrite the body for that community.
- Remove any phrasing that sounds like coordinated promotion.
- Log the final post URL in `projects/ccstats/links.md`.
