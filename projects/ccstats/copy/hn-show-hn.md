# Hacker News Draft

Status: fact-reference draft only; not eligible for direct posting. Refreshed from `templates/platforms/hn_show_hn.md` after
checking the [current Show HN guidelines](https://news.ycombinator.com/showhn.html)
on 2026-09-26.

The [general HN guidelines](https://news.ycombinator.com/newsguidelines.html)
prohibit generated or AI-edited text and automated posting. The proposed title
and first comment below were prepared as an agent draft. The maker must write
their own final title and comment from verified facts; approving or lightly
editing this draft is insufficient.

Use Show HN only if the maker confirms this is a first public launch or a
major overhaul and is available to discuss it. A `v0.9.0` release announcement
alone does not establish Show HN eligibility. Otherwise, skip HN or consider
a regular submission only after approval.

Title:

```text
Show HN: ccstats - local token and cost analytics for AI coding agents
```

Post URL:

```text
https://github.com/majiayu000/ccstats
```

First-comment fact reference; do not paste or submit this generated draft:

```text
Hi HN, I work on ccstats. It is a local-first CLI for token and cost analytics
across 29 AI coding-agent data sources. It reads usage metadata and produces
terminal reports and JSON/CSV without requiring a ccstats account.

The GitHub release and crates.io package are both at 0.9.0. To try the CLI:

cargo install ccstats --version 0.9.0 --locked
ccstats today --source codex

The 0.9.0 install and a run against local logs passed. No private usage totals
are published here. A separate example table from the released binary uses a
synthetic Codex fixture; its token counts are sample data, not user metrics:
https://github.com/majiayu000/shipwise/blob/main/projects/ccstats/assets/2026-09-26-cli-demo.md

Current caveats: Cursor usage requires an explicit API credential. Grok
API-equivalent cost is not an actual subscription charge. Pricing refresh and
currency conversion can use the network; unknown costs remain unknown.

I would value feedback on missing data sources or breakdowns, especially for
people comparing usage across more than one coding agent.
```

Checklist:

- [x] Users can install and try the CLI without a waitlist.
- [x] The post URL is the product repo, not a landing page.
- [ ] The maker confirms this is a first public launch or major overhaul and
  can answer comments.
- [x] No request for upvotes or coordinated comments.
- [ ] The maker personally wrote the final title and comment without generated
  or AI-edited text and will post manually.
- [ ] Final account and comment approval is recorded.
- [ ] Final post URL is logged in `../links.md`.
