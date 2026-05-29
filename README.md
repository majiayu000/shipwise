# Shipwise

Agent-facing open-source publishing guide.

`shipwise` is a documentation system that tells an agent how to plan and execute an open-source launch. It is not a posting bot, scheduler, growth hack system, or remem-specific workflow. It gives the agent the source-of-truth docs, platform rules, asset requirements, templates, and checklists needed to publish responsibly.

It applies to developer tools, CLI utilities, libraries, SDKs, AI/agent tooling, registries, frameworks, apps, and technical writeups. `ccstats` and `remem` are examples only.

## Agent Quick Start

When an agent is asked to publish or prepare a launch:

1. Read [docs/AGENT_GUIDE.md](docs/AGENT_GUIDE.md).
2. Classify the project with [docs/DECISION_TREE.md](docs/DECISION_TREE.md).
3. Open the relevant platform source docs under [docs/platforms/](docs/platforms/README.md).
4. If current community momentum affects timing or issue/PR scope, run [docs/TREND_SIGNAL_WORKFLOW.md](docs/TREND_SIGNAL_WORKFLOW.md).
5. Fill or create a project launch folder under `projects/<project>/`.
6. Follow [docs/RELEASE_LIFECYCLE_CHECKLIST.md](docs/RELEASE_LIFECYCLE_CHECKLIST.md).
7. Use templates from `templates/` only after the platform source doc says that channel is appropriate.
8. Record source links, post URLs, metrics, trend signals, and feedback.

Optional docs-only scaffold:

```bash
./scripts/new_project.sh my-project cli-tool
```

This only creates markdown/yaml planning files. It does not publish anything.

If you only have 30 minutes, do this:

- Write one-sentence positioning.
- Confirm installation works in a clean environment.
- Prepare one real demo GIF or screenshot.
- Publish GitHub release / package artifact.
- Post to one high-intent platform and one owned channel.
- Record what happened.

## What This System Solves

Open-source launches often fail for avoidable reasons:

- The repo is public, but users cannot understand or install it quickly.
- The same copy is pasted into platforms with different norms.
- Launches produce traffic but no learning.
- Feedback stays scattered across comments, DMs, issues, and memory.
- Each new project restarts from zero.

This guide turns that into a repeatable documentation workflow:

```text
Read sources -> Classify -> Check trend signals when relevant -> Prepare assets -> Publish manually -> Record links -> Review feedback -> Improve docs
```

## Repository Map

```text
shipwise/
  README.md
  docs/
    README.md
    AGENT_GUIDE.md
    DECISION_TREE.md
    TREND_SIGNAL_WORKFLOW.md
    RELEASE_LIFECYCLE_CHECKLIST.md
    DISTRIBUTION_TEMPLATE.md
    TEMPLATE_SYSTEM.md
    SUCCESS_METRICS.md
    FEEDBACK_LOOP.md
    ROADMAP.md
    platforms/
      README.md
      github.md
      package-registries.md
      hacker-news.md
      reddit.md
      product-hunt.md
      x.md
      blog-newsletter.md
      chinese-communities.md
  templates/
    project.yaml
    core/
      PROJECT_BRIEF.md
      ANNOUNCEMENT.md
    platforms/
      x_thread.md
      hn_show_hn.md
      reddit_post.md
      product_hunt.md
      blog_post.md
      chinese_community_post.md
    github/
      RELEASE_NOTES.md
      README_DISTRIBUTION_SECTION.md
      LAUNCH_READINESS_ISSUE.md
  playbooks/
    launch-project-template.md
    launch-ccstats-v0.1-skeleton.md
  projects/
    _template/
  matrix/
    distribution_decision_tree.md
  checklists/
    release-lifecycle.md
  scripts/
    new_project.sh   # docs scaffold only, not a publisher
```

## Core Principles

1. Make the project usable before making it visible.
   - A launch is blocked if installation, quickstart, license, or basic docs are missing.

2. Match the channel to the project archetype.
   - A CLI tool, SDK, framework, dataset, registry, and visual app should not launch with the same platform order or story.

3. Use proof, not adjectives.
   - Prefer demos, benchmarks, screenshots, install commands, issue links, download counts, and user quotes.

4. Reuse 70%, adapt 30%.
   - Positioning, proof, demo, and core CTA are reusable.
   - Platform tone, length, title, visuals, timing, and community framing must be adapted.

5. Source rules first.
   - Every platform page must point to the official source or the best available source.
   - If rules are stale or unclear, the agent must verify before posting.

6. Record outcomes.
   - Every launch should leave behind metrics, feedback, decisions, and template updates.
   - The backing store can be markdown files, Notion, remem, a spreadsheet, or a database. The system should not depend on one tool.

7. Treat trends as signals, not promises.
   - GitHub Trending, HN, Product Hunt, X, and Reddit can justify local readiness issues and PRs.
   - They must not become acceptance criteria or claims that external outcomes are guaranteed.

## Project Archetypes

Use [docs/DECISION_TREE.md](docs/DECISION_TREE.md) for the full table.

| Archetype | Examples | Default first platforms |
|---|---|---|
| CLI / local developer tool | `ccstats`, cleanup tools, code analyzers | GitHub, package manager, X, HN or niche Reddit |
| Library / SDK | API clients, Rust crates, npm packages | GitHub, package registry, docs, example repo, technical blog |
| AI / agent workflow tool | MCP servers, skills, browser QA, prompt tooling | GitHub, X, Reddit/Discord niche, demo video |
| Framework / safety / guardrail | linting, hooks, policy, quality gates | GitHub, technical article, X, HN if demoable |
| Registry / dataset / index | skill registry, curated catalog, benchmark set | GitHub, HN, X, docs, data/API examples |
| App / UI / SaaS-like product | hosted tool, dashboard, visual workflow | Product Hunt, X, LinkedIn, demo video, docs |
| Deep technical writeup | architecture research, benchmark report | Blog, HN regular post, Reddit niche, newsletter |

## Launch Package Minimum

Every launch needs:

- One-sentence positioning.
- README with installation, quickstart, use cases, help path, license, and limitations.
- One real demo: GIF, screenshot, terminal recording, video, or hosted demo.
- Distribution path: release asset, package registry, hosted app, docs site, or API endpoint.
- Platform-specific copy for each channel you actually use.
- Baseline metrics before launch.
- A post-launch review date.

## Do Not Do

- Do not mass-post identical content across communities.
- Do not publish a Show HN before users can try the project.
- Do not treat Product Hunt as the default first launch for developer-only tools.
- Do not invent benchmark, savings, productivity, or user numbers.
- Do not claim a local PR will guarantee GitHub Trending, stars, traffic, or launch success.
- Do not store platform credentials, cookies, tokens, or API keys in this repository.
- Do not add automation before one manual launch has proved the workflow.

## Current Status

This is a documentation-first guide:

- Core docs are generic and usable.
- Platform source docs are present under `docs/platforms/`.
- Template files are present.
- Trend signal workflow is present for converting live community evidence into local issue/PR work.
- `scripts/new_project.sh` can scaffold a project launch folder, but does not publish.
- The first real validation should be a full launch plan for `ccstats` or `remem`, using real project data.

## Source Research

- Local research artifact: `docs/artifacts/multi-ai-research-publish-guide-20260526-1841/research.md`
- GitHub Trending: https://github.com/trending
- Hacker News Show HN: https://news.ycombinator.com/showhn.html
- Product Hunt Launch Guide: https://www.producthunt.com/launch
- Reddit Spam Policy: https://support.reddithelp.com/hc/en-us/articles/360043504051-Spam
- GitHub README docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
- GitHub Releases docs: https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases
- Cargo publishing: https://doc.rust-lang.org/cargo/reference/publishing.html
- npm publish: https://docs.npmjs.com/cli/v10/commands/npm-publish/
