# Reddit Post Draft

Status: draft only. Refreshed from `templates/platforms/reddit_post.md` after
checking the [current Reddit spam policy](https://support.reddithelp.com/hc/en-us/articles/360043504051-Spam)
on 2026-09-26. A specific subreddit and its current rules are still required.

Subreddit: not selected. This body is a source draft to adapt for one relevant
community, not text to post unchanged across subreddits.

Proposed title:

```text
How do you review token and cost usage across AI coding agents?
```

Proposed body, for the maker's account only:

```text
I work on ccstats, a local-first CLI for token and cost analytics across 29 AI
coding-agent data sources. It summarizes usage metadata by day, project, model,
and session and can export JSON/CSV.

The practical use case is checking usage across tools without manually
reconciling each agent's logs. The GitHub release and crates.io package are
both at 0.9.0. A clean cargo install and run against local logs passed:

cargo install ccstats --version 0.9.0 --locked
ccstats today --source codex

Example output from the released binary is here:
https://github.com/majiayu000/shipwise/blob/main/projects/ccstats/assets/2026-09-26-cli-demo.md
It uses a synthetic Codex fixture. The token counts are sample data, not my
private usage or anyone else's measured result. The README card is an
illustration, not numeric proof.

Limitations: Cursor usage comes from its API and needs explicit credentials.
Grok API-equivalent cost is not an actual subscription charge. Pricing refresh
and currency conversion can use the network.

Which source or breakdown would help you most? Please don't post raw session
logs or credentials in a public reply. I am involved in the project and am
asking for feedback, not votes.

Repo: https://github.com/majiayu000/ccstats
```

Before posting:

- [ ] Choose one relevant subreddit and account.
- [ ] Read and record that subreddit's current self-promotion, flair, title,
  karma, and weekly-thread rules in `../launch-plan.md`.
- [ ] Rewrite the title and body for that community; do not reuse identical
  copy in another subreddit.
- [ ] Confirm final copy and account authorization.
- [ ] Log the final post URL and moderation outcome in `../links.md`.
