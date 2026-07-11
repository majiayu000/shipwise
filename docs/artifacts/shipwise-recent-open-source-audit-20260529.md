# Shipwise Recent Open Source Audit - 2026-05-29

## Scope

This report audits recent public, non-fork, non-archived repositories under
`majiayu000` against the Shipwise launch standard.

Snapshot time: 2026-05-29 Asia/Shanghai. GitHub timestamps in this report are
UTC.

Excluded from the primary scoring:

- `shipwise`: the reference system being used as the standard.
- `homebrew-*`: distribution support repositories, not standalone products.
- `majiayu000`: GitHub profile configuration.
- `claude-skill-registry-data`: raw data archive, support repo.

Evidence sources used:

- `gh repo list majiayu000 --visibility=public --limit 80 ...`
- Shallow remote clones of the current default branch with
  `git clone --depth=1 --filter=blob:none --no-checkout`.
- `git ls-tree -r --name-only HEAD` and `git show HEAD:README.md`.
- `gh repo view <repo> --json licenseInfo,repositoryTopics,latestRelease,issueTemplates,pullRequestTemplates,...`

This is a launch-surface audit. It does not replace the Shipwise clean install,
quickstart, build, or runtime verification step for each repository.

## What Shipwise Is

Shipwise is an agent-facing open-source launch operating manual. It is not a
posting bot or growth automation system.

The core workflow is:

1. Make the project usable before making it visible.
2. Classify the project type.
3. Verify README, install/access path, quickstart, real proof, license, support
   path, and limitations.
4. Prepare platform-specific launch assets.
5. Publish only to appropriate channels.
6. Record metrics, feedback, links, and post-launch learnings.

The practical minimum for a launch is:

- One-sentence positioning.
- README first screen with install/access path, quickstart, use cases, help path,
  license, and limitations.
- One real proof asset: GIF, screenshot, terminal recording, video, hosted demo,
  expected output, benchmark, or reproducible API/data example.
- Distribution path: GitHub release, package registry, hosted app, docs site,
  API endpoint, or source install path.
- Baseline metrics and review date.

## Rubric

P0 means launch blocker or trust blocker:

- README exists and is substantial.
- Positioning is clear.
- Install or access path exists.
- Quickstart or first-use path exists.
- Demo/proof exists.
- Limitations/caveats are documented.
- License is present for open-source distribution.

P1 means launch readiness gap:

- GitHub release or equivalent artifact.
- Package/project manifest.
- Changelog or release history.
- Issue template or support intake.
- PR template where contribution is expected.
- GitHub topics.
- CI workflow.

## Executive Summary

Strong examples already aligned with Shipwise:

- `remem`
- `litellm-rs`
- `vibeguard`
- `ccstats`

Mostly aligned, but missing launch polish:

- `argus`: strong new security CLI; missing release, changelog, issue template.
- `loom`: strong README/release; missing changelog, issue template, topics.
- `claude-arsenal`: good public surface; missing release and changelog.
- `harness`: good public surface; missing release and changelog.
- `rclean`: README/license/changelog exist; missing release, issue template,
  topics.
- `rnk`: release exists; missing limitations and changelog.
- `refine`: strong repo surface; missing public release and explicit limitations.
- `sage`: release exists; missing explicit limitations.
- `caude-skill-manager`: good CLI surface; missing release, changelog, and
  explicit limitations.

Not Shipwise-ready without fixes:

- `rss-scout`: no root README on the default branch.
- `stash`: README explicitly says "No license file = no permission to
  redistribute."
- `caff`: release exists, but no license file, no visible demo/screenshot, no
  topics, no templates, no CI workflow.
- `auto-contributor`: no license file, no demo/proof, no limitations, no release,
  no changelog, no templates, no topics.
- `claude-hub`: README has a MIT badge/link but the repo has no license file and
  GitHub license detection is null; also missing topics and templates.
- `quotabar`: README/license exist, but no demo/screenshot, no limitations, no
  release, no changelog, no templates, no CI workflow.

Special case:

- `claude-skill-registry` is a generated publish mirror with a usable README,
  web/API paths, license, and changelog. It should not be judged like a normal
  source repo, but it still needs topics plus clear issue/PR routing to the core
  repo.

## Repo Findings

| Repo | Pushed UTC | Status | Main gaps | Recommended action |
|---|---:|---|---|---|
| `argus` | 2026-05-28 | Mostly aligned | No release, changelog, issue template | Cut v0.1 release, add changelog, add issue intake before launch. |
| `caff` | 2026-05-28 | Not ready | No license file, no demo/screenshot, no topics/templates/CI/changelog | Add LICENSE, screenshot/GIF, topics, CI, changelog, issue template. |
| `loom` | 2026-05-28 | Mostly aligned | No changelog, issue template, topics | Add release history and GitHub surface polish. |
| `claude-arsenal` | 2026-05-28 | Mostly aligned | No release, no changelog | Add release tags and a changelog. |
| `remem` | 2026-05-28 | Aligned | None found in launch-surface audit | Use as a local reference template. |
| `claude-skill-registry` | 2026-05-28 | Special case | No topics, no release, no templates; generated mirror ownership is easy to miss | Add topics and explicit "issues/PRs go to core" routing. |
| `claude-skill-registry-core` | 2026-05-28 | Mostly aligned | No release, no issue template, no topics, weak visual proof | Add release, templates, topics, and web-search screenshot/GIF. |
| `rui` | 2026-05-28 | Mostly aligned | No limitations, release, changelog, issue template, topics | Add limitations first, then release/changelog/topics. |
| `litellm-rs` | 2026-05-27 | Aligned | None found in launch-surface audit | Use as a mature reference. |
| `refine` | 2026-05-27 | Mostly aligned | No release, no explicit limitations | Add limitations and public release. |
| `rclean` | 2026-05-27 | Mostly aligned | No release, issue template, topics | Add release and support intake before public push. |
| `stash` | 2026-05-26 | Not ready | No OSS license; README says personal use only | Decide: keep private/personal, or add a real license and launch package. |
| `awesome-goal-prompts` | 2026-05-26 | Mostly aligned | README is catalog-first; no short quickstart path | Add "Try this in 60 seconds" and first workflow example. |
| `vibeguard` | 2026-05-26 | Aligned | None found in launch-surface audit | Use as a reference for guardrail projects. |
| `ccstats` | 2026-05-26 | Aligned | None found in launch-surface audit | Use as a reference for CLI analytics projects. |
| `harness` | 2026-05-26 | Mostly aligned | No release, no changelog | Add release/changelog before broad distribution. |
| `sage` | 2026-05-25 | Mostly aligned | No explicit limitations | Add limitations/caveats to README. |
| `caude-skill-manager` | 2026-05-24 | Mostly aligned | No release, changelog, explicit limitations | Add limitations plus release/changelog. |
| `rss-scout` | 2026-05-22 | Not ready | No root README; no install/quickstart/proof/limitations/release/changelog/templates/CI | Create README from Shipwise CLI template before any launch. |
| `claude-hub` | 2026-05-22 | Not ready | No license file despite MIT badge; no topics/templates | Add LICENSE or remove MIT claim; add topics/templates. |
| `auto-contributor` | 2026-05-22 | Not ready | No license file, no demo/proof, no limitations, no release/changelog/templates/topics | Fix license and proof before any public launch. |
| `rnk` | 2026-05-22 | Mostly aligned | No limitations, no changelog | Add limitations and changelog. |
| `quotabar` | 2026-05-20 | Not ready | No demo/screenshot, no limitations, no release/changelog/templates/CI | Add visual proof, limitations, release, changelog, intake. |
| `crypto-coin-ticker` | 2026-05-07 | Mostly aligned but old | No limitations, release, changelog, templates, topics, CI | Treat as low priority unless relaunching. |

## Priority Fix Plan

### P0: Fix Trust Blockers First

1. License decisions:
   - Add `LICENSE` to `caff`, `auto-contributor`, and `claude-hub` if they are
     meant to be open source.
   - For `stash`, decide whether it is actually open source. Current README says
     it is personal-use only and not redistributable.

2. README absence:
   - `rss-scout` needs a root README before any public distribution.
   - Minimum README: positioning, install, 3-command quickstart, expected output,
     limitations, license, support path.

3. Proof assets:
   - `caff`: add a menubar screenshot and a short GIF showing timeout/manual
     keep-awake and agent activity mode.
   - `quotabar`: add a screenshot/GIF of provider indicators and quota window.
   - `auto-contributor`: add terminal demo or recorded workflow showing issue
     selection to PR creation.
   - `claude-skill-registry-core`: add a web-search screenshot or short GIF.

4. Limitations:
   - Add explicit limitations/caveats to `rui`, `refine`, `sage`,
     `caude-skill-manager`, `rnk`, `quotabar`, `auto-contributor`, and
     `crypto-coin-ticker`.

### P1: Make Launch Surfaces Consistent

1. Add releases and changelogs:
   - `argus`, `claude-arsenal`, `harness`, `rclean`, `rui`, `refine`,
     `caude-skill-manager`, `rss-scout`, `auto-contributor`, `quotabar`.

2. Add GitHub topics:
   - `caff`, `loom`, `rclean`, `rui`, `stash` if public, `claude-hub`,
     `auto-contributor`, `crypto-coin-ticker`.

3. Add issue/PR templates:
   - Use one bug report, one feature request, and one PR template with a test
     plan.
   - For generated mirrors like `claude-skill-registry`, either add templates
     that redirect to `claude-skill-registry-core`, or disable contribution
     expectations in README.

4. Add CI workflows:
   - `caff`: Swift build/package smoke check.
   - `stash`: Bun typecheck/test/build.
   - `rss-scout`: `cargo check` and tests if present.
   - `quotabar`: Tauri build or at least JS/Rust checks.

## Per-Archetype Templates To Apply

### CLI / Rust Tool

Apply to `argus`, `rclean`, `rss-scout`, `ccstats`, `sage`.

README first screen:

````markdown
# <project>

One sentence: <who> uses <project> to <do what> without <old pain>.

## Install

```bash
<cargo install / brew / release download / source build>
```

## Quickstart

```bash
<command 1>
<command 2>
<command 3>
```

Expected output:

```text
<real short output>
```

## Limitations

- <unsupported platform or data source>
- <known false positive / false negative / performance caveat>
- <privacy or file access note>
````

### macOS App / Menubar Tool

Apply to `caff`, `quotabar`, `claude-hub`.

Required first-screen assets:

- Screenshot or GIF.
- Latest release download link.
- Homebrew or installer command if available.
- macOS version requirement.
- Security/privacy note.
- Troubleshooting section for macOS Gatekeeper or permissions.
- License file matching the README badge.

### Registry / Dataset / Catalog

Apply to `claude-skill-registry`, `claude-skill-registry-core`,
`awesome-goal-prompts`.

Required first-screen assets:

- Search or query path.
- One copyable example.
- Schema or data contract link.
- Coverage/update policy.
- Generated vs source-of-truth ownership statement.
- Feedback path.

### App / Workflow Product

Apply to `stash`, `refine`, `harness`, `loom`.

Required first-screen assets:

- Install/access path.
- One workflow demo.
- Data/privacy model.
- Known limitations.
- Release channel or "not launched yet" status.
- Support path.

## Suggested Execution Order

1. `rss-scout`: fastest high-impact fix because root README is missing.
1. `caff`: high recent activity and has a release; license + visual proof would
   make it launchable quickly.
1. `argus`: strong new security CLI; cut release/changelog and add intake before
   external posts.
1. `quotabar`: needs visual proof and release before any product-style launch.
1. `auto-contributor`: fix license/proof/limitations before visibility.
1. `stash`: either make it private/personal, or convert to a real OSS launch
   package.
1. `claude-hub`: fix the license mismatch before further promotion.

## Concrete Shipwise Workflow For Each Repo

For a repo selected for launch:

1. Create the Shipwise planning folder:

```bash
./scripts/new_project.sh <repo-name> <archetype>
```

1. Fill these facts before writing public copy:

```markdown
- Project repo and version:
- Target user:
- Problem solved:
- Install/access path:
- Quickstart:
- Demo/proof:
- Known limitations:
- License:
- Support path:
- Launch goal:
```

1. Block launch until:

```text
README first screen is complete.
Install/access path works in a clean environment.
Quickstart copied from README works.
License is present.
Demo/proof is real.
Numeric claims have sources.
Release/package/hosted artifact exists where relevant.
```

1. After launch, record:

```markdown
- GitHub release URL:
- Package/download URL:
- X/HN/Reddit/blog/community links:
- Baseline stars/forks/downloads/issues:
- Day 1 notes:
- Day 7 notes:
- Repeated confusion:
- README/FAQ updates:
```

## Main Conclusion

The best-maintained open-source surfaces already match Shipwise: `remem`,
`ccstats`, `vibeguard`, and `litellm-rs`.

The common failure pattern is not weak code. It is incomplete public packaging:
missing license files, missing proof assets, missing limitations, missing release
history, missing issue intake, and empty GitHub topics.

The immediate rule should be:

> Do not promote a public repo until README, license, install/quickstart, proof,
> limitations, and support path are all present and freshly verified.
