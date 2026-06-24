# Shipwise

Agent-facing open-source publishing guide.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![CI](https://github.com/majiayu000/shipwise/actions/workflows/links.yml/badge.svg)](https://github.com/majiayu000/shipwise/actions/workflows/links.yml)
[![Release](https://img.shields.io/github/v/release/majiayu000/shipwise)](https://github.com/majiayu000/shipwise/releases/latest)

`shipwise` is a documentation system that tells an agent how to plan and execute an open-source launch. It is not a posting bot, scheduler, growth hack system, or remem-specific workflow. It gives the agent the source-of-truth docs, platform rules, asset requirements, templates, and checklists needed to publish responsibly.

It applies to developer tools, CLI utilities, libraries, SDKs, AI/agent tooling, registries, frameworks, apps, and technical writeups. `ccstats` and `remem` are examples only.

## Agent Quick Start

When an agent is asked to publish or prepare a launch:

1. Read [docs/AGENT_GUIDE.md](docs/AGENT_GUIDE.md).
2. Classify the project with [docs/DECISION_TREE.md](docs/DECISION_TREE.md).
3. Design the repo and metadata for discovery with [docs/DISCOVERABILITY.md](docs/DISCOVERABILITY.md).
4. Open the relevant platform source docs under [docs/platforms/](docs/platforms/README.md).
5. If current community momentum affects timing or issue/PR scope, run [docs/TREND_SIGNAL_WORKFLOW.md](docs/TREND_SIGNAL_WORKFLOW.md).
6. Fill or create a project launch folder under `projects/<project>/`.
7. Follow [docs/RELEASE_LIFECYCLE_CHECKLIST.md](docs/RELEASE_LIFECYCLE_CHECKLIST.md).
8. Use templates from `templates/` only after the platform source doc says that channel is appropriate.
9. Record source links, post URLs, metrics, trend signals, and feedback.

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
  .github/      # issue/PR templates and CI
  AGENTS.md     # pointer-only entry point for agent runtimes
  README.md
  docs/         # canonical operating docs and platform source guides
  templates/    # reusable copy, GitHub, platform, and SEO templates
  playbooks/    # worked examples and launch skeletons
  projects/     # project launch records; _template is the scaffold source
  checklists/   # stable pointers or run sheets derived from canonical docs
  scripts/      # docs scaffold only, not a publisher
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

8. Design for discovery, not just distribution.
   - Repo name, description, topics, README first screen, social preview, and
     package metadata decide whether the project is findable after launch day.
   - See [docs/DISCOVERABILITY.md](docs/DISCOVERABILITY.md). Discoverability is a
     design decision made before launch, never keyword stuffing or fake badges.

## Project Archetypes

Use [docs/DECISION_TREE.md](docs/DECISION_TREE.md) for the full table.

| Archetype | Examples |
|---|---|
| CLI / local developer tool | `ccstats`, cleanup tools, code analyzers |
| Library / SDK | API clients, Rust crates, npm packages |
| AI / agent workflow tool | MCP servers, skills, browser QA, prompt tooling |
| Framework / safety / guardrail | linting, hooks, policy, quality gates |
| Registry / dataset / index | skill registry, curated catalog, benchmark set |
| App / UI / SaaS-like product | hosted tool, dashboard, visual workflow |
| Deep technical writeup | architecture research, benchmark report |

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
- `projects/ccstats/` records the first real repo-side dogfood validation,
  using live GitHub/crates.io data and a verified install/quickstart path.
- External platform posting still requires explicit user authorization.

## Release Notes

See [CHANGELOG.md](CHANGELOG.md).

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
