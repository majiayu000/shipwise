# Launch Readiness Report

## Summary

- Project: ccstats
- Version: 0.4.0
- Archetype: cli-tool
- Goal type: feedback
- Repo: https://github.com/majiayu000/ccstats
- Review date: 2026-08-13
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
| Release or package path | verified | crates.io max version is `0.4.0`; GitHub latest release is `v0.4.0` with prebuilt assets and checksums. | Keep release, package, and install command aligned. |
| README first screen | verified | README has badges, visual card, positioning, search keywords, installation, and quickstarts near the top. | Consider changing H1 from `# ccstats` to a name-plus-keyword heading in the ccstats repo. |
| Limitations documented | verified | Cursor and Grok limitations are recorded in README, `project.yaml`, and draft copy. | Keep in every platform draft. |
| Platform source docs checked | verified | `docs/platforms/github.md`, `package-registries.md`, `x.md`, `hacker-news.md`, and `reddit.md` were read before drafting copy. | Recheck official platform sources immediately before posting. |
| Baseline metrics recorded | verified | `metrics.md` records stars, forks, open issues, crates.io downloads, and retrieval date. | Refresh on launch day. |
| SEO Agent Suite project-yaml gate | blocked | Local `repo_seo_baseline.py --help` supports `--root`, `--homepage`, `--npm`, `--crate`, and `--json`, but not `--project-yaml`. | Update SEO Agent Suite to a revision with `--project-yaml`, then rerun the documented gate. |

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
python3 /Users/apple/Desktop/code/AI/tool/seo-agent-suite/scripts/repo_seo_baseline.py --help
python3 /Users/apple/Desktop/code/AI/tool/seo-agent-suite/scripts/repo_seo_baseline.py --root /Users/apple/Desktop/code/AI/tool/ccstats --crate ccstats --json
```

Expected output:

```text
Install succeeds, quickstart renders a Token Usage table, the legacy SEO
baseline emits JSON, and the project-yaml capability check remains blocked
because --project-yaml is absent from --help.
```

## Decision

- Launch: no
- Reason: a real-output proof asset, external platform/account authorization,
  final copy approval, and the documented SEO Agent Suite `--project-yaml`
  gate are still blocked.
- Next action: update SEO Agent Suite to a supporting revision, rerun the
  project-yaml gate, then approve platform/account/final copy before posting.
