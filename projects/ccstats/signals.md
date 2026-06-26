# Signals

## Trend Decision

- Sources checked: GitHub repo metadata, GitHub `main` README, GitHub latest
  release, crates.io crate API.
- Retrieval date: 2026-06-26.
- Comparable projects: local AI coding usage dashboards, token/cost usage CLIs.
- Signal type: readiness validation.
- What changed in our plan: the first real Shipwise project record now uses
  verified ccstats facts instead of placeholders.
- What stayed out of scope: claiming launch outcomes or publishing to external
  platforms without platform/account authorization and final copy approval.
- Local issue: https://github.com/majiayu000/shipwise/issues/8
- Local PR: https://github.com/majiayu000/shipwise/pull/9
- Follow-up date: when external posting is authorized.

## Evidence

| Source | URL | What it showed | Verified date |
|---|---|---|---|
| GitHub repository | https://github.com/majiayu000/ccstats | Description, topics, 6 stars, MIT license, homepage to crates.io, no open issues. | 2026-06-26 |
| GitHub README on `main` | https://github.com/majiayu000/ccstats/blob/main/README.md | Install paths, quickstart commands, supported Claude Code/Codex/Cursor/Grok sources, SDK positioning, limitations. | 2026-06-26 |
| GitHub latest release | https://github.com/majiayu000/ccstats/releases/tag/v0.2.64 | Latest GitHub release has prebuilt archives/checksums; release tag trails crates.io max version; release `v0.2.65` does not exist. | 2026-06-26 |
| crates.io | https://crates.io/crates/ccstats | max_version 0.2.65, 282 total downloads, 142 recent downloads, keywords and category set. | 2026-06-26 |

## Notes

Trend signals are opportunity inputs, not acceptance criteria. Do not claim that
any local work guarantees external ranking, stars, traffic, or launch success.

The key launch-readiness signal is positive but incomplete: install and
quickstart are verifiable, while the missing terminal demo GIF and the GitHub
release/crates.io version mismatch should be resolved before broad external
posting.
