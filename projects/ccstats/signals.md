# Signals

## Trend Decision

- Sources checked: GitHub repo metadata, GitHub `main` README from the local
  ccstats checkout, GitHub latest release, crates.io crate API, and local SEO
  Agent Suite baseline commands.
- Retrieval date: 2026-08-13.
- Comparable projects: local AI coding usage dashboards, token/cost usage CLIs.
- Signal type: readiness validation.
- What changed in our plan: the Shipwise ccstats project record now uses
  current v0.4.0 facts, and the copy files under `projects/ccstats/copy/`
  exercise the declared template flow.
- What stayed out of scope: claiming launch outcomes or publishing to external
  platforms without platform/account authorization and final copy approval.
- Local issue: https://github.com/majiayu000/shipwise/issues/8
- Local PR: https://github.com/majiayu000/shipwise/pull/13
- Follow-up date: when external posting is authorized or the documented
  `--project-yaml` gate can run locally.

## Evidence

| Source | URL or command | What it showed | Verified date |
|---|---|---|---|
| GitHub repository | https://github.com/majiayu000/ccstats | Description, 17 topics, 7 stars, 0 forks, MIT license, homepage to crates.io, 1 open issue, and a configured social preview image. | 2026-08-13 |
| GitHub README on `main` | `/Users/apple/Desktop/code/AI/tool/ccstats/README.md` | Install paths, quickstart commands, supported Claude Code/Codex/Cursor/Grok/Kimi Code sources, SDK positioning, limitations, and README card. | 2026-08-13 |
| GitHub latest release | https://github.com/majiayu000/ccstats/releases/tag/v0.4.0 | Latest GitHub release is `v0.4.0` and includes prebuilt archives plus SHA-256 checksum assets. | 2026-08-13 |
| crates.io | https://crates.io/crates/ccstats | max_version `0.4.0`, 365 total downloads, 147 recent downloads, keywords and category set. | 2026-08-13 |
| Temporary install | `cargo install ccstats --version 0.4.0 --locked --root /tmp/shipwise-ccstats-0.4.0-1786552427 --force` | Package installed successfully without changing the global Cargo bin. | 2026-08-13 |
| Quickstart | `/tmp/shipwise-ccstats-0.4.0-1786552427/bin/ccstats codex today --no-cost` | Command rendered a Token Usage table for local Codex data; local totals are private and not copied into public docs. | 2026-08-13 |
| SEO Agent Suite capability check | `python3 /Users/apple/Desktop/code/AI/tool/seo-agent-suite/scripts/repo_seo_baseline.py --help` | Local script exposes `--root`, `--homepage`, `--npm`, `--crate`, and `--json`, but not `--project-yaml`. | 2026-08-13 |
| SEO Agent Suite legacy baseline | `python3 /Users/apple/Desktop/code/AI/tool/seo-agent-suite/scripts/repo_seo_baseline.py --root /Users/apple/Desktop/code/AI/tool/ccstats --crate ccstats --json` | Legacy JSON baseline completed for local repo, GitHub metadata, Cargo manifest, README, and crates.io search. | 2026-08-13 |

## Discoverability Gate State

- Pass: canonical slug is consistent across GitHub and crates.io.
- Pass: GitHub topics count is within the 5 to 20 topic rule.
- Pass: GitHub homepage points to crates.io.
- Pass: GitHub social preview image is configured.
- Pass: community files and issue templates exist in the local ccstats checkout.
- Pass: release and crates.io version are aligned at `0.4.0`.
- Needs follow-up: README H1 is `# ccstats`, not a name-plus-primary-keyword
  heading.
- Blocked: the documented SEO Agent Suite `--project-yaml` subset gate cannot
  run until the local SEO Agent Suite checkout is updated.

## Notes

Trend signals are opportunity inputs, not acceptance criteria. Do not claim that
any local work guarantees external ranking, stars, traffic, or launch success.

The launch-readiness signal is stronger than the June dogfood record because the
release/package version mismatch is gone and visual proof exists. External
posting is still blocked by authorization and final copy approval.
