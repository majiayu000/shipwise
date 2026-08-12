# Launch Plan

## Decision

- Archetype: CLI / local developer tool (`cli-tool`)
- Primary goal: feedback and adoption from developers who track AI coding cost
  and token usage locally.
- Primary platforms: GitHub release, crates.io, X thread, and HN Show HN only
  if this is treated as the first public launch and the maintainer is available
  for comments.
- Secondary platforms: niche Reddit and Chinese developer community after the
  first-wave copy is adapted and current community rules are checked.
- Not doing: Product Hunt first wave; mass posting; external publishing without
  explicit platform/account authorization and final copy approval.
- Launch date: not scheduled in this repo-side run.
- Day 7 review: blocked until external launch is authorized and published.
- Day 30 review: scheduled only if external launch is authorized before the
  review window.

## Trend Decision

- Sources checked: GitHub repo metadata, GitHub `main` README from the local
  ccstats checkout, GitHub latest release, crates.io crate API, and local SEO
  Agent Suite baseline commands.
- Retrieval date: 2026-08-13.
- Comparable projects: local Claude Code usage dashboards, token/cost usage
  CLIs.
- Signal type: readiness validation.
- What changed in our plan: Shipwise now has a ccstats record refreshed to
  v0.4.0 and draft copy produced through the declared template flow.
- What stayed out of scope: posting to X, HN, Reddit, Product Hunt, or Chinese
  communities without platform/account authorization and final copy approval.
- Local issue: https://github.com/majiayu000/shipwise/issues/8
- Local PR: https://github.com/majiayu000/shipwise/pull/13
- Follow-up date: when external posting is authorized or SEO Agent Suite gains
  the documented `--project-yaml` capability locally.

## Assets

- [x] README
- [x] Install/access path
- [x] Quickstart
- [ ] Terminal demo GIF
- [x] README card visual proof
- [x] GitHub social preview image
- [x] Proof
- [x] Release notes
- [x] Draft platform copy generated from templates
- [ ] Final approved platform copy

## Checklist

Copied from `docs/RELEASE_LIFECYCLE_CHECKLIST.md` and refreshed on 2026-08-13.

### Readiness

- [x] Target user is named.
- [x] One-sentence positioning is written.
- [x] Archetype is selected from `docs/DECISION_TREE.md`.
- [x] Launch goal is explicit.
- [ ] Upstream project tests pass in this run.
- [x] Clean install path is verified with
  `cargo install ccstats --version 0.4.0 --locked --root /tmp/shipwise-ccstats-0.4.0-1786552427 --force`.
- [x] Quickstart command is run with
  `/tmp/shipwise-ccstats-0.4.0-1786552427/bin/ccstats codex today --no-cost`.
- [x] Known limitations are documented.
- [x] License is present.
- [x] Numeric claims have sources.

### Asset Package

- [x] README first screen has positioning, install, quickstart, and limitations.
- [ ] README H1 matches name plus primary keyword.
- [x] GitHub description and topics are filled.
- [x] Issue template or support path exists.
- [x] Release notes exist for latest GitHub release.
- [x] Package access path is live on crates.io.
- [x] GitHub release matches crates.io version `0.4.0`.
- [x] Visual proof exists through the README card.
- [ ] Terminal demo GIF is verified.
- [x] Draft platform-specific copy exists under `projects/ccstats/copy/`.
- [ ] Platform-specific public copy is finalized.

### Discoverability Gate

- [x] Canonical name/slug is consistent across GitHub and crates.io.
- [x] Primary keyword is decided.
- [x] About description is filled.
- [x] 5 to 20 relevant topics are set.
- [x] Homepage URL points to crates.io.
- [x] Social preview image is set in GitHub metadata.
- [ ] README H1 matches name plus primary keyword.
- [x] README first paragraph and search keyword line are present.
- [x] Community health files are present.
- [x] A release is published.
- [x] Package registry metadata is filled.
- [ ] Documented SEO Agent Suite `--project-yaml` gate passes.
- [x] Legacy SEO Agent Suite baseline command emits JSON.

### Launch And Review

- [x] GitHub release exists.
- [x] Package registry artifact exists.
- [x] GitHub release matches crates.io version `0.4.0`.
- [ ] Explicit platform/account authorization is recorded.
- [ ] Final copy approval is recorded.
- [ ] External first-wave platform posts are published.
- [ ] Day 1 metrics are recorded after posting.
- [ ] Day 7 review is completed.
- [ ] Day 30 review is completed.

## Authorization Gate

External launch remains blocked until these facts are recorded:

- Platforms approved for posting.
- Account or tool that will publish each post.
- Final copy approved for each platform.
- Current official platform rules checked immediately before posting.
- Decision on whether the README card is sufficient proof or a terminal demo
  GIF is required.
- SEO Agent Suite `--project-yaml` gate rerun with a supporting checkout, or an
  explicit decision recorded to proceed with only the legacy baseline.
- Published URLs logged in `projects/ccstats/links.md`.
