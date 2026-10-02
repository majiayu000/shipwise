# Dogfood follow-up: HN authorship boundary

- Date: 2026-10-02
- Tracking: [Shipwise #8](https://github.com/majiayu000/shipwise/issues/8)
- Fix: [PR #22](https://github.com/majiayu000/shipwise/pull/22)
- Result: repository-side defect fixed; external launch loop remains incomplete.

## Defect and correction

The HN source guide linked only Show HN eligibility rules. Its template and
ccstats draft could be interpreted as copy an agent should fill and submit.
The [current general HN guidelines](https://news.ycombinator.com/newsguidelines.html)
prohibit generated or AI-edited text and automated posting. Approving an agent
draft does not satisfy human authorship.

Corrections in this follow-up:

- `docs/platforms/hacker-news.md`: link the general rules and distinguish fact
  gathering from the maker's final writing and manual submission.
- `templates/platforms/hn_show_hn.md`: mark the template as a factual outline
  and require human-written final copy.
- `projects/ccstats/copy/hn-show-hn.md`: mark the existing generated draft as
  unsuitable for direct posting and retain the maker/eligibility checks.

## Checks and remaining work

The scaffold CLI passed creation, duplicate, invalid-name, invalid-archetype,
and missing-argument controls in a temporary fixture. The variable contract,
all Markdown lint checks and whitespace checks passed. No public post was sent.

Current public GitHub and crates.io facts both point to ccstats `0.9.1`.
The checksum-verified macOS arm64 release binary printed `ccstats 0.9.1` and
CLI help. No private usage records were read. The existing `0.9.0` synthetic
terminal demo remains historical evidence, not a new real-user launch.

Issue #8 stays open pending explicit platform/account instructions, final
eligible copy, actual post URLs, authentic feedback and post-launch reviews.
Day 7 cannot be completed before an external launch takes place.
