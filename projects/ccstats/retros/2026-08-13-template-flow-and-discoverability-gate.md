# ccstats Template Flow And Discoverability Gate Review

Date: 2026-08-13

## Scope

This review refreshed the ccstats dogfood record after the June launch-boundary
pass became stale. No external posts were published.

## Fresh Evidence

- GitHub repo: https://github.com/majiayu000/ccstats
- GitHub latest release: `v0.4.0`
- crates.io max version: `0.4.0`
- crates.io downloads: 365 total, 147 recent
- GitHub stars: 7
- GitHub forks: 0
- GitHub open issues: 1
- GitHub social preview image: configured
- Temporary install: `cargo install ccstats --version 0.4.0 --locked` passed
- Quickstart: `ccstats codex today --no-cost` rendered a Token Usage table

## Defects Found

| Defect | Evidence | Follow-up |
|---|---|---|
| Template flow was bypassed | The real draft copy lived in `projects/ccstats/platform-copy.md`, while `projects/ccstats/copy/` only pointed back to the aggregate file. | Fixed by https://github.com/majiayu000/shipwise/pull/13 |
| Launch record was stale | The active project files still described the June `0.2.65` crates.io state and `v0.2.64` GitHub release mismatch. | Fixed by https://github.com/majiayu000/shipwise/pull/13 |
| Discoverability gate could not run as documented | Local SEO Agent Suite `repo_seo_baseline.py --help` did not expose `--project-yaml`. | Recorded by https://github.com/majiayu000/shipwise/pull/13; rerun after updating SEO Agent Suite. |
| README H1 does not include the primary keyword | The ccstats README starts with `# ccstats`, while Shipwise's discoverability checklist asks for name plus primary keyword. | Record as a ccstats repo follow-up before broad external posting. |

## Decision

Keep external launch posting blocked. Repo-side records are refreshed, template
drafts exist, and the release/package mismatch is resolved, but platform/account
authorization and final copy approval are still required.

## Next Actions

- Update SEO Agent Suite to a revision that supports `--project-yaml`.
- Rerun the documented project-yaml subset gate and record the result in
  `projects/ccstats/signals.md`.
- Decide in the ccstats repo whether to update the README H1 to include the
  primary keyword.
- Approve or reject X, HN, Reddit, Product Hunt, blog, and Chinese community
  channels one by one before any external post.
