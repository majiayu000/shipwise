# Launch Plan

## Current update: 2026-10-11 — review package

- [x] Verify GitHub/crates.io `0.11.0` alignment and public prelaunch counts.
- [x] Install `0.11.0` in a new root and run the actual quickstart/replay with
  an isolated synthetic Codex fixture. See [proof](assets/2026-10-11-cli-demo.md).
- [x] Prepare and inspect labeled PNG/GIF transcript assets with no private data.
- [x] Run the discoverability subset: all 16 checks `ok` with SEO Agent Suite
  `9aba5379`; ccstats tagged source `971a146d`.
- [ ] Complete homepage/crate HTTP probes from a public-DNS environment. The
  full baseline currently exits 1 on non-public DNS resolution; no guard was bypassed.
- [x] Choose one initial channel: a manual X thread with the attached demo.
- [x] Prepare [current X text](copy/x-thread.md) and recheck official X rules.
- [ ] Approve the exact X account, final text, and demo attachment.
- [ ] After authorized posting, record its URL and actual Day 1 / 7 / 30 outcomes.

### Channel decision for this package

The project is a CLI tool. A short X thread fits the terminal demonstration
and needs no unsupported first-launch claim. Existing GitHub/crates.io releases
supply the install path. HN is deferred because eligibility and maker-authored
text need separate work; Reddit needs a selected community. Product Hunt is
outside this small launch. Proposed sender: the maintainer's chosen X account;
no handle is assumed, and no account access is needed to review these files.

The prepared asset/copy approval is the next concrete decision. The dated
checklists below are historical evidence, not additional current channel gates.

## Historical update: 2026-09-26

- [x] GitHub latest release and crates.io max version are both `0.9.0`.
- [x] The checksum-verified release binary produced a
  [fixture-backed terminal demo](assets/2026-09-26-cli-demo.md), with synthetic
  numbers clearly labeled.
- [x] Verify a clean `cargo install` of `0.9.0` in a temporary root; the
  installed binary ran against local logs and rendered a Codex Token Usage
  table. No private totals were recorded in Shipwise.
- [x] Rerun the discoverability subset gate on current ccstats metadata;
  every emitted Shipwise check is `ok` with SEO Agent Suite `9d6c626`.
- [ ] Rerun the separate homepage page probe in an environment with public
  DNS; this host's proxy DNS makes the full baseline exit `1`.
- [ ] Approve a platform-ready screenshot or GIF if the selected channel needs
  one; the README card has illustrative numbers.
- [x] Refresh X, HN, and Reddit drafts for `v0.9.0` with current source docs.
- [ ] Approve final copy for the selected platforms. Show HN eligibility and
  the selected subreddit's rules need separate decisions.
- [ ] Record explicit authorization for each platform/account, then post and
  log URLs and Day 1 / Day 7 / Day 30 outcomes.

The checklist below records the 2026-08-20 run. Its unchecked version-match
item was accurate on that date; the current check is above.

## Decision

- Archetype: CLI / local developer tool (`cli-tool`)
- Primary goal: feedback from developers who track AI coding cost and token
  usage locally.
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
- Retrieval date: 2026-08-20.
- Comparable projects: local Claude Code usage dashboards, token/cost usage
  CLIs.
- Signal type: readiness validation.
- What changed in our plan: Shipwise now has a ccstats record refreshed to
  current public facts, a green discoverability subset gate, and draft copy
  produced through the declared template flow.
- What stayed out of scope: posting to X, HN, Reddit, Product Hunt, or Chinese
  communities without platform/account authorization and final copy approval.
- Local issue: https://github.com/majiayu000/shipwise/issues/8
- Local PR: https://github.com/majiayu000/shipwise/pull/13
- Follow-up date: when GitHub/crates.io versions are aligned and external
  posting is authorized.

## Assets

- [x] README
- [x] Install/access path
- [x] Quickstart
- [ ] Terminal demo GIF
- [x] README card marketing visual (illustrative data; not proof)
- [x] GitHub social preview image
- [x] Proof
- [x] Release notes
- [x] Draft platform copy generated from templates
- [ ] Final approved platform copy

## Checklist

Copied from `docs/RELEASE_LIFECYCLE_CHECKLIST.md` and refreshed on 2026-08-20.

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
- [ ] GitHub release `v0.5.0` matches crates.io version `0.4.0`.
- [ ] A sanitized real-output proof asset exists.
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
- [x] Documented SEO Agent Suite `--project-yaml` gate passes.

### Launch And Review

- [x] GitHub release exists.
- [x] Package registry artifact exists.
- [ ] GitHub release `v0.5.0` matches crates.io version `0.4.0`.
- [ ] Explicit platform/account authorization is recorded.
- [ ] Final copy approval is recorded.
- [ ] External first-wave platform posts are published.
- [ ] Day 1 metrics are recorded after posting.
- [ ] Day 7 review is completed.
- [ ] Day 30 review is completed.

## Authorization Gate

Before the selected X thread is sent:

- Confirm the exact publishing account and approve [the text and attachment](copy/x-thread.md).
- Recheck official platform rules if publication is delayed beyond this review.
- Keep the visible synthetic-input label; these are actual CLI results from
  example data, not real-user usage or a benchmark.
- Retain the disclosed full-baseline HTTP probe limitation; the install,
  quickstart, and local discoverability subset have already passed.

After posting, log the URL and real outcomes in `links.md`, `metrics.md`, and
the existing Day 1 / Day 7 / Day 30 records. Their windows begin after posting;
no feedback is fabricated in advance.
