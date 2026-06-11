# Multi-AI Research: Open Source Publish Guide (became Shipwise)

Date: 2026-05-26
Workspace: `/Users/lifcc/Desktop/code/AI/tool/publish` (later renamed to shipwise)

## Original Question

Design a publish repository / planned guide (later named Shipwise) for repeatedly launching open source projects such as `ccstats` and `remem`: which platforms to publish to, how to design the launch package, and how to organize the repository.

## Method

- Internal sub-agents: 3 requested, all completed read-only analysis.
- External AI:
  - Grok: completed, raw output in `raw/grok.md`.
  - Gemini: completed, raw output in `raw/gemini.md`.
  - ChatGPT CLI: attempted twice, but returned only an intro sentence both times; excluded from consensus.
- Official source checks:
  - Hacker News Show HN guidelines.
  - Product Hunt Launch Guide.
  - Reddit spam policy.
  - GitHub README, Releases, and Topics docs.
  - Cargo, npm, and PyPI publishing docs.

## Strong Consensus

1. The repository should be a publishing operating system, not just a list of platforms.
   - Reason: every project needs project-specific facts, while platform rules, launch checklists, and copy structures are reusable.
   - Confidence: high.

2. GitHub is the main surface.
   - Required: README, Releases, Topics, issue/PR templates, license, changelog, contribution path.
   - Confidence: high.

3. For developer tools, the first launch should prioritize high-intent technical channels.
   - P0: GitHub, package registry, Hacker News Show HN, X, one or two relevant technical communities.
   - P1: Reddit niche communities, Dev.to/Hashnode/blog, V2EX/Juejin, Awesome lists, newsletters.
   - P2: Product Hunt, long video, broad directories, community operations.
   - Confidence: high.

4. Launch package quality matters more than broad distribution.
   - Required: one-line positioning, install command, 3-step quickstart, real demo, screenshots/GIF, real output or benchmark, FAQ, license, changelog, release notes.
   - Confidence: high.

5. Avoid mass-posting and copy-paste promotion.
   - HN Show HN requires something users can try.
   - Reddit explicitly rejects repeated or unsolicited mass engagement.
   - Product Hunt allows promotion but says not to ask directly for upvotes.
   - Confidence: high.

## Partial Consensus

1. Product Hunt should usually be second-wave for devtools.
   - Good when the project has product packaging, screenshots, maker comment, tagline, and a broader early-adopter story.
   - Not ideal as first move for a CLI-only tool with weak visual proof.
   - Confidence: medium-high.

2. Product-specific examples for `ccstats` are tentative.
   - Agents assumed `ccstats` is an AI coding / contribution statistics CLI.
   - This needs validation from the real repository before writing final copy.
   - Confidence: medium.

3. `remem` positioning is more concrete but still should be validated from the repo.
   - Draft: local searchable engineering memory for AI coding workflows.
   - Confidence: medium-high.

## Recommended Repository Shape

```text
shipwise/
  README.md
  docs/
    operating-model.md
  projects/
    ccstats/
      project.yaml
      positioning.md
      launch-plan.md
      status.md
      metrics.md
      links.md
      assets/
      copy/
      retros/
    remem/
      project.yaml
      positioning.md
      launch-plan.md
      status.md
      metrics.md
      links.md
      assets/
      copy/
      retros/
  templates/
    project.yaml
    positioning.md
    launch-plan.md
    launch-checklist.md
    metrics.md
    retro.md
    hn-showhn.md
    reddit-post.md
    x-thread.md
    producthunt.md
    release-notes.md
    readme-outline.md
    case-study.md
  platforms/
    github.md
    hacker-news.md
    reddit.md
    product-hunt.md
    x.md
    devto-hashnode.md
    juejin-v2ex.md
    package-registries.md
  playbooks/
    preflight.md
    launch-day.md
    post-launch-amplification.md
    version-release.md
    retrospective.md
  metrics/
    platform-metrics-schema.md
    weekly-review.md
    monthly-review.md
```

## MVP

Start with a manual, validated workflow before adding automation:

```text
README.md
docs/operating-model.md
projects/_template/project.yaml
templates/positioning.md
templates/launch-checklist.md
templates/metrics.md
templates/retro.md
templates/hn-showhn.md
templates/x-thread.md
templates/reddit-post.md
platforms/github.md
platforms/hacker-news.md
platforms/reddit.md
platforms/x.md
platforms/package-registries.md
projects/ccstats/project.yaml
projects/ccstats/positioning.md
projects/ccstats/launch-plan.md
projects/remem/project.yaml
projects/remem/positioning.md
projects/remem/launch-plan.md
```

## Per-Project Checklist

### Preflight

- Confirm one-line positioning, target user, problem, alternative, differentiation, and proof.
- README has install, quickstart, demo, use cases, FAQ, license, changelog, and help path.
- Clean environment install and quickstart pass.
- Prepare demo GIF/screenshot/terminal recording, OG image, and short demo script.
- Prepare platform copy for HN, X, Reddit, Product Hunt, and Chinese communities.
- Set GitHub description, topics, release notes, issue template, and PR template.
- Record baseline metrics: stars, forks, downloads, traffic, issues, install counts if available.
- Block launch if install fails, demo uses fake data without disclosure, README cannot be copied to run, or license is missing.

### Launch

- Publish GitHub Release and package registry artifacts first.
- HN: `Show HN: Project - one-line value`; first comment should include motivation, tech choices, limitations, and what feedback is wanted.
- X: pain hook, demo, proof, GitHub link.
- Reddit/V2EX/Juejin: rewrite for each community; ask for feedback, not upvotes.
- Product Hunt: only launch when screenshots, tagline, maker comment, FAQ, and broader product story are ready.
- Watch comments and issues for the first two hours.

### Follow-Up

- Day 1-3: fix blocking issues and publish "what changed from feedback".
- Day 7: update README FAQ and write first retrospective.
- Day 14/30: record channel data, traffic source, conversion, useful comments, and next roadmap.
- Every release should produce release notes, one short X post, and one concrete use case.

## Platform Matrix

| Priority | Platform | Use |
|---|---|---|
| P0 | GitHub README / Releases / Topics | Trust, discovery, release archive, contribution entry |
| P0 | Package registry: crates.io / npm / PyPI / Homebrew | Installability and credibility |
| P0 | Hacker News Show HN | Early high-intent developer feedback for runnable tools |
| P0 | X | Ongoing personal distribution and release notes |
| P1 | Reddit niche communities | Context-specific feedback when rewritten per community |
| P1 | Dev.to / Hashnode / personal blog / Juejin | SEO and deeper technical narrative |
| P1 | V2EX / Juejin / Zhihu / OSC | Chinese developer community distribution |
| P1 | Awesome lists / newsletters | Long-tail referral |
| P2 | Product Hunt | Second-wave productized launch, not default first step |
| P2 | YouTube / Bilibili long video | Tutorial and social proof after demand exists |
| P2 | Discord / Slack community ops | Only after real repeat users exist |

## Do Not Do First

- Do not mass-post the same copy across many communities.
- Do not run Show HN before the project is directly tryable.
- Do not make Product Hunt the first launch if README/install/demo are weak.
- Do not create Discord/Slack communities before there is real repeat usage.
- Do not hardcode tokens, cookies, API keys, or platform credentials in this repo.
- Do not automate launch workflows before the manual workflow has been validated once.

## Data Model

Use `project.yaml` for non-sensitive metadata only:

```yaml
name: ccstats
repo: https://github.com/owner/ccstats
category: developer-tool
status: preflight
accounts:
  github: owner
  x: "@handle"
  product_hunt: maker-profile-url
assets:
  demo_gif: projects/ccstats/assets/demo.gif
  og_image: projects/ccstats/assets/og.png
links:
  launch_hn: ""
  launch_x: ""
  launch_reddit: ""
metrics:
  baseline_date: 2026-05-26
  github_stars: 0
  github_forks: 0
```

Secrets stay in environment variables or platform secret stores, never in this repo.

## Action Items

### Strong Consensus

1. Build MVP docs and templates listed above.
2. Run the first full workflow on either `ccstats` or `remem`.
3. Use the first launch retrospective to update platform docs and templates.

### Medium Confidence

1. Treat Product Hunt as second wave unless a project has strong visuals and a product story.
2. Add Chinese-community playbooks after the English-first core is usable.
3. Add metrics scripts only after the manual metrics schema has been used once.

### Open Questions

1. What exactly is `ccstats`' current positioning, install path, and proof?
2. Is `remem` already packaged for install, or does launch need packaging work first?
3. Which identity should be the public distribution center: personal account, org, or project-specific account?

## Raw Responses

- Internal agent 1: platform/channel matrix, captured in parent conversation.
- Internal agent 2: content and narrative assets, captured in parent conversation.
- Internal agent 3: repo structure and checklist, captured in parent conversation.
- Grok: `raw/grok.md`.
- Gemini: `raw/gemini.md`.
- ChatGPT CLI first attempt: `raw/chatgpt.md` (unusable intro only).
- ChatGPT CLI rerun: `raw/chatgpt-rerun.md` (unusable intro only).
