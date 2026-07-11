# Shipwise Optimization Research - 2026-05-29

## Scope

This document summarizes a parallel research pass on how to optimize Shipwise.

Inputs used:

- Local repository review under `/Users/lifcc/Desktop/code/AI/tool/shipwise`.
- Four read-only sub-agent reviews:
  - document architecture and agent readability;
  - productization and automation boundary;
  - trend and competitor signals;
  - real workflow and metrics validation.
- Live GitHub Trending snapshot saved at
  `docs/artifacts/shipwise-optimization-research-20260529/raw/github-trending-daily.txt`.
- External AI CLI attempts saved under
  `docs/artifacts/shipwise-optimization-research-20260529/raw/`.
- Existing Shipwise audit:
  `docs/artifacts/shipwise-recent-open-source-audit-20260529.md`.

Constraint: this is a strategy document only. It does not publish, post, submit,
store credentials, or claim external growth outcomes.

## Executive Summary

Shipwise should not optimize toward "more launch copy" or "more places to
post." Its strongest next direction is:

```text
responsible open-source launch readiness system for agents
```

That means:

1. Keep the current docs-first, markdown-as-source-of-truth model.
2. Run real v0.3 validation before adding automation.
3. Convert launch guidance into readiness blockers, proof requirements,
   template contracts, and retrospectives.
4. Treat trend data as local-work input, not as a promise of GitHub Trending,
   stars, Product Hunt ranking, traffic, or community acceptance.
5. Add lightweight tools only after the manual workflow proves stable:
   validator, readiness report, intake helper, then CLI wrapper.

The recommended 30-day priority is:

1. Fix the project-template contract gaps.
2. Run three real validation scenarios.
3. Turn the existing audit rubric into a Launch Readiness Report format.
4. Add an AI/agent-tooling launch pack.
5. Only then scope a read-only checker.

## Current Repo Diagnosis

### What Is Already Strong

- The README and agent guide define the right boundary: Shipwise is not a
  posting bot, scheduler, credential store, or growth automation system.
- The workflow is coherent: gather project facts, classify archetype, read
  platform docs, prepare assets, verify blockers, publish manually only when
  allowed, record outcomes, and review feedback.
- Platform docs already cover GitHub, package registries, Hacker News, Reddit,
  Product Hunt, X, blogs/newsletters, and Chinese communities.
- `docs/TREND_SIGNAL_WORKFLOW.md` is directionally correct: live trends can
  justify local readiness work, not external-outcome promises.
- `docs/artifacts/shipwise-recent-open-source-audit-20260529.md` already
  contains a usable P0/P1 launch-surface rubric.

### Main Gaps

| Gap | Evidence | Impact |
|---|---|---|
| `proof.md` contract is inconsistent | `docs/RELEASE_LIFECYCLE_CHECKLIST.md` and `docs/FEEDBACK_LOOP.md` require it, but `projects/_template/` and `scripts/new_project.sh` do not create it | Agents can follow the docs and still produce an incomplete project folder |
| Retro templates are missing | `retros/day-1.md`, `day-7.md`, and `day-30.md` are described but not scaffolded | The learning loop is easy to skip |
| Template variables are not fully normalized | `docs/TEMPLATE_SYSTEM.md` lists core variables, while platform templates use additional names | Agents may invent or mismatch fields |
| Canonical vs reference docs are blurry | `docs/DECISION_TREE.md` overlaps with `matrix/distribution_decision_tree.md`; `docs/RELEASE_LIFECYCLE_CHECKLIST.md` overlaps with `checklists/release-lifecycle.md` | Future edits can drift |
| Artifact hygiene is weak | `docs/artifacts/` contains both research outputs and unrelated or one-off reports | Agents may cite raw or unrelated artifacts as canonical evidence |
| Source freshness is implicit | Platform docs point to sources but do not have a consistent freshness field | Agents cannot quickly tell when live verification is required |

## External Signals

### GitHub Trending Snapshot

The live daily snapshot on 2026-05-29 showed multiple agent/tooling patterns:

- agent harnesses and skills: `affaan-m/ECC`, `obra/superpowers`,
  `revfactory/harness`, `anthropics/skills`;
- anti-slop / quality tooling: `Leonxlnx/taste-skill`,
  `hardikpandya/stop-slop`;
- AI-compatible developer utilities: `microsoft/markitdown`,
  `Lum1104/Understand-Anything`, `unclecode/crawl4ai`;
- productized AI tools with visible outcomes: `harry0703/MoneyPrinterTurbo`,
  `twentyhq/twenty`.

This supports a clear Shipwise opportunity: for AI/agent tooling, launch
readiness must include runnable proof, compatibility matrix, permissions or
credential boundaries, limitations, and non-interactive usage examples. A
generic README checklist is not enough.

### Official Platform and Ecosystem Signals

- GitHub README, topics, and releases are still the main trust surface for
  open-source distribution.
- Hacker News Show HN requires something readers can actually try, which aligns
  with Shipwise's "usable before visible" rule.
- Product Hunt is useful for productized launches, but it is not the default
  first wave for CLI-only or developer-only tools.
- OpenSSF Scorecard shows that repo trust is not only marketing polish:
  security policy, branch protection, dependency update behavior, CI, and token
  hygiene matter when a project asks developers to install or run code.
- The `AGENTS.md` pattern and `llms.txt` ecosystem both point toward a future
  where repos are expected to expose machine-readable instructions for agents.
  Shipwise should lean into this, but keep Markdown canonical.

Useful source links:

- GitHub Trending: https://github.com/trending
- GitHub README docs:
  https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
- GitHub Releases docs:
  https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases
- GitHub Topics docs:
  https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics
- Hacker News Show HN: https://news.ycombinator.com/showhn.html
- Product Hunt launch guide: https://www.producthunt.com/launch
- Open Source Guides: https://opensource.guide/starting-a-project/
- OpenSSF Scorecard: https://github.com/ossf/scorecard
- AGENTS.md: https://github.com/openai/agents.md
- llms.txt: https://llmstxt.org/

## Multi-Agent Consensus

| Area | Consensus | Confidence |
|---|---|---|
| Strategic direction | Shipwise should become a launch readiness and learning-loop system, not a posting automation tool | High |
| Immediate priority | Complete v0.3 real validation before v0.5 automation | High |
| Best first automation | Read-only validator and Markdown readiness report | High |
| Trend handling | Convert trend signals into local readiness issues, never external success promises | High |
| Critical missing files | Add or reconcile `proof.md` and retro templates | High |
| Template governance | Normalize variables and canonical/reference document boundaries | Medium-high |
| AI/agent tooling specialization | Add a dedicated launch pack with compatibility, permission, failure, and proof requirements | Medium-high |

External AI CLI note:

- `grok.md` captured browsing/log-style output, not a usable full research
  answer.
- `gemini.md` returned no response within 300 seconds.
- ChatGPT CLI produced empty stdout/stderr after an extended run and was
  interrupted.

These outputs are retained as raw artifacts but are not used as strong evidence.

## Strategic Options

| Option | Description | Benefit | Cost | Risk | Recommendation |
|---|---|---|---|---|---|
| A. Docs cleanup and v0.3 validation | Tighten project template contract, run real launch workflow | Fastest path to trust; fixes current gaps | Low-medium | Can remain manual and repetitive | Do now |
| B. Launch Readiness Report | Standard report with P0 blockers, P1 polish, P2 channel fit | Turns Shipwise into an actionable evaluation tool | Medium | Report may look more verified than it is | Do after A starts |
| C. AI/agent-tooling launch pack | Specialized checklist/templates for skills, MCP, CLI agents, guardrails | Matches current devtool trend and local repos | Medium | Too much specialization if done before examples | Do as P1 |
| D. Trend intelligence workflow | Stronger signal matrix for GitHub/HN/PH/X/Reddit/package registries | Helps choose local work and launch timing | Medium | Hype chasing if wording is loose | Improve existing workflow |
| E. Full CLI/productization | `shipwise check/report/intake` style CLI | Better repeatability and adoption | Medium-high | Premature abstraction; false confidence | Defer until manual v0.3 proof |
| F. Auto-publishing/growth bot | Submit posts, DMs, votes, scheduling, credential handling | Superficial speed | High | Violates repo boundary and platform norms | Do not do |

## Recommended 30-Day Plan

### Week 1: Fix The Contract

P0 edits:

- Add `projects/_template/proof.md`, or remove `proof.md` from required outputs.
  Adding it is preferable.
- Add `projects/_template/retros/day-1.md`,
  `projects/_template/retros/day-7.md`, and
  `projects/_template/retros/day-30.md`.
- Update `scripts/new_project.sh` to scaffold those files.
- Extend `projects/_template/project.yaml` with:
  - `license_status`;
  - `support_path`;
  - `quickstart_command`;
  - `expected_output`;
  - `verification_command`;
  - `verification_date`;
  - `proof_asset_path`;
  - `goal_type`;
  - `launch_blockers`;
  - `launch_effort_hours`.
- Extend `projects/_template/feedback.md` with:
  - `url`;
  - `raw_user_text`;
  - `quality_score_0_5`;
  - `issue_or_pr`;
  - `status`;
  - `template_change_needed`.

P1 edits:

- Add `docs/artifacts/README.md` to mark canonical docs vs research artifacts
  vs raw outputs.
- Add a template variable map in `docs/TEMPLATE_SYSTEM.md` or
  `templates/VARIABLES.md`.
- Mark `matrix/distribution_decision_tree.md` and
  `checklists/release-lifecycle.md` as printable summaries of canonical docs.

### Week 2: Run Three Real Validation Scenarios

1. P0 blocker scenario: `rss-scout`.
   - Expected Shipwise behavior: block launch; output missing facts and next
     actions; do not generate publishable copy.

2. Visual/desktop product scenario: `caff` or `quotabar`.
   - Expected Shipwise behavior: require screenshot/GIF, release/download path,
     macOS permissions/privacy note, license, limitations, support path.

3. Full launch-loop scenario: `ccstats` or `remem`.
   - Expected Shipwise behavior: complete project brief, positioning, launch
     plan, platform copy, proof, baseline, links, Day 1, Day 7, and at least one
     evidence-backed template update.

### Week 3: Codify Launch Readiness Report

Create a Markdown report format that separates:

- `verified`;
- `missing`;
- `unverified`;
- `blocked`;
- `not applicable`.

Use P0/P1/P2, not fake precision:

- P0: launch blockers and trust blockers.
- P1: launch readiness gaps.
- P2: channel polish and optional amplification.

The report should always include:

- project facts;
- archetype;
- source docs checked;
- proof assets;
- install/quickstart verification command and date;
- license/support status;
- launch blockers;
- recommended next action: launch, wait, or improve.

### Week 4: Scope Read-Only Tooling

After manual reports are stable, define a small checker:

```text
shipwise check projects/<project>/
shipwise report projects/<project>/
shipwise intake <repo-url>
```

The first implementation should only read local files and produce Markdown. It
must not post, submit, DM, vote, store credentials, or claim growth outcomes.

## AI / Agent Tooling Launch Pack

Add this as a focused archetype extension rather than a separate product.

Required fields:

- supported hosts: Claude Code, Codex, Cursor, OpenCode, MCP clients, browser
  agents, or other relevant runtimes;
- installation path and removal path;
- permissions and credential boundary;
- non-interactive command examples;
- structured output example if applicable;
- failure modes and recovery;
- integration matrix;
- version compatibility;
- real demo or transcript;
- limitations and false-positive/false-negative policy for guardrails;
- security review note for auth, secrets, command execution, browser
  automation, or generated code.

This fits current trend signals without turning Shipwise into hype tracking.

## What Not To Do

- Do not make GitHub Trending, stars, Product Hunt rank, HN rank, traffic, or
  downloads an acceptance criterion.
- Do not automate posting or store platform credentials.
- Do not generate publishable copy when install, quickstart, license, proof, or
  support path is missing.
- Do not add broad platform coverage before existing platform docs are validated
  against real launches.
- Do not create a large CLI before the report format has been tested manually.
- Do not cite raw external-AI logs or empty outputs as evidence.

## Proposed File-Level Change List

High confidence:

- `projects/_template/proof.md`
- `projects/_template/retros/day-1.md`
- `projects/_template/retros/day-7.md`
- `projects/_template/retros/day-30.md`
- `scripts/new_project.sh`
- `projects/_template/project.yaml`
- `projects/_template/feedback.md`
- `docs/TEMPLATE_SYSTEM.md` or `templates/VARIABLES.md`
- `docs/artifacts/README.md`

Medium confidence:

- `docs/ROADMAP.md` to make the v0.3 -> v0.5 gate more concrete.
- `docs/TREND_SIGNAL_WORKFLOW.md` to add signal strength and source-type
  matrix.
- `docs/DECISION_TREE.md` to add AI/agent-tooling proof details.
- `templates/github/LAUNCH_READINESS_ISSUE.md` to align with the report format.

Do not prioritize yet:

- full CLI package;
- scheduler;
- auto-publisher;
- credential integration;
- growth dashboard.

## Final Recommendation

The next best move is not to expand distribution channels. It is to make
Shipwise's existing promise testable:

```text
Given a real repo, Shipwise can prove whether it is launch-ready, explain what
blocks launch, prepare only compliant assets, and preserve what was learned
after launch.
```

If Shipwise can do that across one blocked repo, one visual/desktop tool, and
one full validated launch, then v0.5 read-only tooling is justified. Until then,
more automation would mostly encode unverified assumptions.
