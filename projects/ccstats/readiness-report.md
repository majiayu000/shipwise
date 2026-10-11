# Launch Readiness Report

## Current update: 2026-10-11 — isolated install and review package

- Recommendation: **ready for final review of one X thread**; external posting
  remains blocked until the user approves the account and concrete materials.
- Release alignment: **verified**. GitHub release and crates.io are both
  `0.11.0` (released 2026-10-08).
- Install and quickstart: **verified** on macOS arm64 with Rust/Cargo 1.97.0.
  A new-root `cargo install ccstats --version 0.11.0 --locked --jobs 2`
  completed, version output was `ccstats 0.11.0`, and the actual CLI rendered
  130 tokens from one synthetic Codex fixture. Fixed-date replay also passed.
  Existing dependency caches were available; this was not a cold-cache test.
- Proof asset: **verified for the controlled fixture**. The [reproduction and
  output](assets/2026-10-11-cli-demo.md), [PNG](assets/2026-10-11-cli-demo.png),
  and [GIF](assets/2026-10-11-cli-demo.gif) contain actual output and visible
  synthetic-data labels. No real sessions or credentials were read. The visual
  is a rendered transcript, not a real-user screenshot or latency recording.
- License/support: **verified**. The tagged source contains an MIT license and
  issue templates; the public issue endpoint exists.
- Discoverability subset: **verified**. All 16 emitted Shipwise checks were
  `ok` using SEO Agent Suite `9aba5379` and ccstats tag commit `971a146d`.
  The **full baseline exits 1**: homepage and crate HTTP probes reject this
  host's non-public DNS resolution. Those probes remain unverified. GitHub
  metadata and crate version were separately retrieved successfully with
  `gh`/`curl`; that does not make the failed baseline green.
- Channel/copy: **prepared**. [X thread](copy/x-thread.md) is the chosen small
  first wave, using the current demo and a concrete install command. Official
  X automation/authenticity rules were checked on 2026-10-11. HN and Reddit
  drafts remain deferred; their extra eligibility/community work is not a
  prerequisite for reviewing this X package.
- Public baseline: 13 stars, 2 forks, 0 open issues; 1,135 total and 835 recent
  crates.io downloads at this refresh. These are prelaunch snapshots, not
  results attributed to Shipwise.
- Remaining: final X account/text/asset approval, actual authorized publication,
  logged URL, and real Day 1 / Day 7 / Day 30 outcomes. No posts were sent.

Sources: [release](https://github.com/majiayu000/ccstats/releases/tag/v0.11.0),
[crate API](https://crates.io/api/v1/crates/ccstats),
[repo API](https://api.github.com/repos/majiayu000/ccstats),
[license at the tag](https://github.com/majiayu000/ccstats/blob/v0.11.0/LICENSE),
[X automation](https://help.x.com/en/rules-and-policies/x-automation), and
[X authenticity](https://help.x.com/en/rules-and-policies/authenticity).

## Historical update: 2026-09-26

- Recommendation: **blocked** for external platform posts.
- Release alignment: **verified**. [GitHub latest release](https://github.com/majiayu000/ccstats/releases/tag/v0.9.0)
  and [crates.io](https://crates.io/crates/ccstats) both report `0.9.0`.
- Release binary and terminal output: **verified**. The checksum-verified
  macOS arm64 binary reported `ccstats 0.9.0` and rendered the
  [fixture-backed CLI demo](assets/2026-09-26-cli-demo.md). Its numbers are
  synthetic, not user metrics.
- `cargo install` and a real-log CLI run for `0.9.0`: **verified** in an
  isolated temporary install root on 2026-09-26. The installed binary
  reported `ccstats 0.9.0` and rendered a Codex Token Usage table. Private
  usage totals and log paths were not copied into Shipwise. The `0.4.0`
  checks below are historical.
- Discoverability subset gate: **verified** for the current project YAML and
  clean ccstats checkout. All emitted Shipwise checks are `ok` with SEO Agent
  Suite `9d6c626`. The full command
  still exits `1` because this host resolves `github.com` to a non-public
  proxy address, which the script's site URL guard rejects; its page probe
  therefore remains **unverified**.
- Platform-ready screenshot or GIF: **missing**. The README card remains an
  illustrative marketing visual. The terminal transcript needs approval for
  any external use.
- Platform copy: **drafted** for `v0.9.0` in `copy/`; X, HN, and Reddit
  source rules were checked on 2026-09-26. Final text approval is pending.
  Show HN eligibility and a specific subreddit's rules remain unresolved.
- Platform/account authorization: **blocked**; no post URLs or post-launch
  metrics are recorded.

The report below is the 2026-08-20 snapshot. Its version mismatch and
readiness states describe that date, not the current release.

## Summary

- Project: ccstats
- Version: GitHub release 0.5.0; crates.io package 0.4.0
- Archetype: cli-tool
- Goal type: feedback
- Repo: https://github.com/majiayu000/ccstats
- Review date: 2026-08-20
- Recommendation: blocked

## Status Legend

- `verified`: directly checked in this launch cycle.
- `missing`: required information or artifact is absent.
- `unverified`: present but not checked.
- `blocked`: prevents launch.
- `not applicable`: not needed for this archetype or channel.

## P0 Launch Blockers

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Target user named | verified | `project.yaml` and `positioning.md` name developers using Claude Code, OpenAI Codex, Cursor, Grok, or Kimi Code. | Keep. |
| Install/access path works | verified | `cargo install ccstats --version 0.4.0 --locked --root /tmp/shipwise-ccstats-0.4.0-1786552427 --force` completed. | Rerun before external posting. |
| Quickstart works | verified | `/tmp/shipwise-ccstats-0.4.0-1786552427/bin/ccstats codex today --no-cost` rendered a Token Usage table for local Codex data. | Rerun before external posting; do not publish local usage totals without approval. |
| Real proof asset exists | missing | The README card is imagegen-generated and contains illustrative dashboard values not tied to a recorded run. | Capture sanitized real output from the verified quickstart; do not use the card as numeric proof. |
| License is present | verified | GitHub metadata and `Cargo.toml` report MIT. | Keep. |
| Support path exists | verified | GitHub issue templates exist and the support path is https://github.com/majiayu000/ccstats/issues. | Keep. |

## P1 Readiness Gaps

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Release or package path | blocked | GitHub latest release is `v0.5.0`, while crates.io max version remains `0.4.0`. | Publish `0.5.0` to crates.io or explicitly choose `0.4.0` as the launch version before posting. |
| README first screen | verified | README has badges, visual card, positioning, search keywords, installation, and quickstarts near the top. | Consider changing H1 from `# ccstats` to a name-plus-keyword heading in the ccstats repo. |
| Limitations documented | verified | Cursor and Grok limitations are recorded in README, `project.yaml`, and draft copy. | Keep in every platform draft. |
| Platform source docs checked | verified | `docs/platforms/github.md`, `package-registries.md`, `x.md`, `hacker-news.md`, and `reddit.md` were read before drafting copy. | Recheck official platform sources immediately before posting. |
| Baseline metrics recorded | verified | `metrics.md` records stars, forks, open issues, crates.io downloads, and retrieval date. | Refresh on launch day. |
| SEO Agent Suite project-yaml gate | verified | SEO Agent Suite `bb83ab7` exposed `--project-yaml`; all Shipwise subset checks returned `ok` on 2026-08-20. | Rerun against clean current checkouts before external posting. |

## P2 Channel Polish

| Check | Status | Evidence | Next action |
|---|---|---|---|
| Platform-specific copy | verified | `projects/ccstats/copy/announcement.md`, `x-thread.md`, `hn-show-hn.md`, and `reddit-post.md` are filled from the declared template flow. | Approve final copy per platform before posting. |
| Social image or preview | verified | GitHub metadata reports a social preview image URL and the imagegen-generated README card exists. | Treat it as a marketing visual only, disclose that its dashboard data is illustrative, and use a separate real-output proof asset. |
| Second-wave channels | blocked | Reddit and Chinese community drafts require community-specific rule checks and localization. | Do not post until the specific community and account are approved. |

## Verification Commands

```bash
cargo install ccstats --version 0.4.0 --locked --root /tmp/shipwise-ccstats-0.4.0-1786552427 --force
/tmp/shipwise-ccstats-0.4.0-1786552427/bin/ccstats codex today --no-cost
python3 <seo-agent-suite>/scripts/repo_seo_baseline.py --help
python3 <seo-agent-suite>/scripts/repo_seo_baseline.py \
  --root <ccstats> \
  --crate ccstats \
  --project-yaml <shipwise>/projects/ccstats/project.yaml \
  --json
```

Expected output:

```text
The 0.4.0 install succeeds, the quickstart renders a Token Usage table, and the
project-yaml command exits zero with every emitted shipwise check at `ok`.
```

## Decision

- Launch: no
- Reason: a real-output proof asset, release/package version alignment,
  external platform/account authorization, and final copy approval are still
  blocked. The local discoverability subset gate is green.
- Next action: align the GitHub and crates.io versions, capture real-output
  proof, then approve platform/account/final copy before posting.
