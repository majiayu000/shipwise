# ccstats Discoverability Gate Rerun

Date: 2026-08-20

## Scope

Rerun the deterministic Shipwise discoverability subset gate against clean
ccstats and SEO Agent Suite checkouts. No external posts or repository metadata
changes were made.

## Evidence

- SEO Agent Suite revision: `bb83ab7930ba4c901df1997041c13ad096791f3c`
- ccstats revision: `aefae5dfbcce76a26a1557e0b6427cfa6f270603`
- Command:

  ```bash
  python3 <seo-agent-suite>/scripts/repo_seo_baseline.py \
    --root <ccstats> \
    --crate ccstats \
    --project-yaml <shipwise>/projects/ccstats/project.yaml \
    --json
  ```

## Result

The first current run failed only
`primary_keyword_in_description`: `AI token cost tracker` was not present in
the recorded GitHub description. The project record now uses the exact,
factual phrase `token/cost usage analytics`; the rerun exits zero and every
emitted Shipwise subset check returns `ok`.

The gate is deliberately narrow. It does not prove rankings, traffic, release
alignment, install behavior, or launch readiness.

## New Blocker Found

GitHub latest release is `v0.5.0`, while crates.io max version is `0.4.0`.
External launch remains blocked until the versions are aligned or the launch
version is explicitly chosen. This is recorded in the readiness report and
launch plan; publishing either artifact is outside this Shipwise PR.
