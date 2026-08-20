# Signals

## Trend Decision

- Sources checked: GitHub repo metadata, GitHub `main` README from the local
  ccstats checkout, GitHub latest release, crates.io crate API, and local SEO
  Agent Suite baseline commands.
- Retrieval date: 2026-08-20.
- Comparable projects: local AI coding usage dashboards, token/cost usage CLIs.
- Signal type: readiness validation.
- What changed in our plan: the Shipwise ccstats project record now uses
  current public facts, a reproducible green subset gate, and the copy files
  under `projects/ccstats/copy/` exercise the declared template flow.
- What stayed out of scope: claiming launch outcomes or publishing to external
  platforms without platform/account authorization and final copy approval.
- Local issue: https://github.com/majiayu000/shipwise/issues/8
- Local PR: https://github.com/majiayu000/shipwise/pull/13
- Follow-up date: when GitHub/crates.io versions are aligned and external
  posting is authorized.

## Evidence

| Source | URL or command | What it showed | Verified date |
|---|---|---|---|
| GitHub repository | https://github.com/majiayu000/ccstats | Description, 17 topics, 11 stars, 0 forks, MIT license, homepage to crates.io, 0 open issues, and a configured social preview image. | 2026-08-20 |
| GitHub README on `main` | Clean checkout at `aefae5d` | Install paths, quickstart commands, supported Claude Code/Codex/Cursor/Grok/Kimi Code sources, SDK positioning, limitations, and README card. | 2026-08-20 |
| GitHub latest release | https://github.com/majiayu000/ccstats/releases/tag/v0.5.0 | Latest GitHub release is `v0.5.0` and includes prebuilt archives plus SHA-256 checksum assets. | 2026-08-20 |
| crates.io | https://crates.io/crates/ccstats | max_version `0.4.0`, 404 total downloads, 184 recent downloads, keywords and category set. | 2026-08-20 |
| Temporary install | `cargo install ccstats --version 0.4.0 --locked --root /tmp/shipwise-ccstats-0.4.0-1786552427 --force` | Package installed successfully without changing the global Cargo bin. | 2026-08-13 |
| Quickstart | `/tmp/shipwise-ccstats-0.4.0-1786552427/bin/ccstats codex today --no-cost` | Command rendered a Token Usage table for local Codex data; local totals are private and not copied into public docs. | 2026-08-13 |
| SEO Agent Suite subset gate | `repo_seo_baseline.py --root <ccstats> --crate ccstats --project-yaml <shipwise>/projects/ccstats/project.yaml --json` | SEO Agent Suite `bb83ab7` exposed `--project-yaml`; all emitted Shipwise checks returned `ok`. | 2026-08-20 |

## Discoverability Gate State

- Pass: canonical slug is consistent across GitHub and crates.io.
- Pass: GitHub topics count is within the 5 to 20 topic rule.
- Pass: GitHub homepage points to crates.io.
- Pass: GitHub social preview image is configured.
- Pass: community files and issue templates exist in the local ccstats checkout.
- Blocked: GitHub latest release is `v0.5.0`, while crates.io remains `0.4.0`.
- Needs follow-up: README H1 is `# ccstats`, not a name-plus-primary-keyword
  heading.
- Pass: the documented SEO Agent Suite `--project-yaml` subset gate ran against
  clean checkouts and every emitted Shipwise check returned `ok`.

## Notes

Trend signals are opportunity inputs, not acceptance criteria. Do not claim that
any local work guarantees external ranking, stars, traffic, or launch success.

The local discoverability signal is now reproducible and green. The README card
is an illustrative marketing visual, not proof; external posting remains
blocked on release/package alignment, a sanitized real-output asset,
authorization, and final copy approval.
