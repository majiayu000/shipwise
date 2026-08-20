# Hacker News Draft

Status: draft only. Filled from `templates/platforms/hn_show_hn.md` after
reading `docs/platforms/hacker-news.md` on 2026-08-13.

Use Show HN only if the maintainer treats this as the first public launch and is
available to answer comments. Otherwise, skip HN or submit a non-Show link only
after approval.

Title:

```text
Show HN: ccstats - local token and cost analytics for AI coding logs
```

Post URL:

```text
https://github.com/majiayu000/ccstats
```

First comment:

```text
Hi HN, I built ccstats because my AI coding usage was spread across local
Claude Code, OpenAI Codex, Cursor, Grok, and Kimi Code data.

It is a fast CLI for token and cost usage analytics across local AI coding logs.

You can try it with:

cargo install ccstats --version 0.4.0 --locked

What is working:
- Daily, weekly, monthly, project, session, and model-level summaries
- Claude Code, OpenAI Codex, Cursor usage API, Grok, and Kimi Code sources

Known limitations:
- Cursor requires explicit credentials and does not support project aggregation
  or 5-hour billing blocks
- Grok sessions without per-turn usage fall back to estimated snapshot costs;
  Grok 5-hour billing blocks are not supported

I am especially looking for feedback on which usage breakdowns are missing from
your workflow.
```

Checklist:

- [x] Users can try it without a waitlist.
- [x] It is not just a blog post, newsletter, list, or landing page.
- [ ] The maintainer is available to answer comments.
- [x] No request for upvotes or coordinated comments.
- [ ] Final platform/account authorization is recorded.
- [ ] Final post URL is logged in `../links.md`.
