# Launch Plan

## Decision

- Archetype: CLI / local developer tool (`cli-tool`)
- Primary goal: feedback and adoption from developers who track AI coding cost
  and token usage locally.
- Primary platforms: GitHub release, crates.io, X thread, HN Show HN if the
  quickstart remains tryable.
- Secondary platforms: niche Reddit and Chinese developer community after the
  first-wave copy is adapted.
- Not doing: Product Hunt first wave; mass posting; external publishing without
  explicit user authorization.
- Launch date: not scheduled in this repo-side run.
- Day 7 review: 2026-06-19 if external launch is later authorized.
- Day 30 review: 2026-07-12 if external launch is later authorized.

## Trend Decision

- Sources checked: GitHub repo metadata, GitHub `main` README, GitHub latest
  release, crates.io crate API.
- Retrieval date: 2026-06-12.
- Comparable projects: local Claude Code usage dashboards, token/cost usage
  CLIs.
- Signal type: readiness validation.
- What changed in our plan: Shipwise now has a real ccstats project record and
  checklist state instead of a skeleton.
- What stayed out of scope: posting to X, HN, Reddit, Product Hunt, or Chinese
  communities.
- Local issue: https://github.com/majiayu000/shipwise/issues/8
- Local PR: branch `fix/issues-3-8`
- Follow-up date: 2026-06-19

## Assets

- [x] README
- [x] Install/access path
- [x] Quickstart
- [ ] Terminal demo GIF
- [x] Proof
- [x] Release notes
- [ ] Platform copy

## Checklist

Copied from `docs/RELEASE_LIFECYCLE_CHECKLIST.md` on 2026-06-12.

### Readiness

- [x] Target user is named.
- [x] One-sentence positioning is written.
- [x] Archetype is selected from `docs/DECISION_TREE.md`.
- [x] Launch goal is explicit.
- [ ] Upstream project tests pass in this run.
- [x] Clean install path is verified with
  `cargo install ccstats --version 0.2.65 --locked`.
- [x] Quickstart command is run with `ccstats codex today --no-cost`.
- [x] Known limitations are documented.
- [x] License is present.
- [x] Numeric claims have sources.

### Asset Package

- [x] README first screen has positioning, install, quickstart, and limitations.
- [x] GitHub description and topics are filled.
- [x] Issue template or support path exists.
- [x] Release notes exist for latest GitHub release.
- [x] Package access path is live on crates.io.
- [ ] Terminal demo GIF is verified.
- [ ] Platform-specific public copy is finalized.

### Launch And Review

- [x] GitHub release exists.
- [x] Package registry artifact exists.
- [ ] External first-wave platform posts are published.
- [ ] Day 1 metrics are recorded after posting.
- [ ] Day 7 review is completed.
- [ ] Day 30 review is completed.
