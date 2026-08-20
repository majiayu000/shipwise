# Reddit Post Draft

Status: draft only. Filled from `templates/platforms/reddit_post.md` after
reading `docs/platforms/reddit.md` on 2026-08-13.

Subreddit:

```text
Choose one relevant subreddit after checking its current rules, flair policy,
self-promotion policy, and weekly-thread requirements.
```

Title:

```text
I built a local token and cost usage CLI for AI coding tools
```

Body:

```text
I built ccstats for developers using Claude Code, OpenAI Codex, Cursor, Grok, or
Kimi Code because local AI coding usage is hard to inspect across tools.

The practical use case:
Run one local CLI to summarize token and cost usage by day, project, session,
and model.

Demo:
Blocked until a sanitized real-output terminal capture is recorded. The README
card is an illustrative marketing visual, not proof.

How to try:
cargo install ccstats --version 0.4.0 --locked

What I am looking for:
Which usage breakdown would be most useful in your workflow?

Limitations:
Cursor requires explicit credentials and does not support project aggregation
or 5-hour billing blocks. Grok sessions without per-turn usage fall back to
estimated snapshot costs; Grok 5-hour billing blocks are not supported.

Disclosure:
I built the project.
```

Before posting:

- [ ] Choose the subreddit.
- [ ] Read that subreddit's current rules.
- [ ] Rewrite the title and body for that community.
- [ ] Remove any phrasing that reads as broadcast promotion.
- [ ] Replace the blocked demo text with a sanitized real-output capture.
- [ ] Confirm the posting account and final copy approval.
- [ ] Log the final post URL in `../links.md`.
