# Contributing to Shipwise

Shipwise is a documentation system that tells an agent how to plan and execute
an open-source launch. Contributions are docs, templates, checklists, and the
small scaffold script. There is no application to build.

## Principles

Keep changes aligned with the core principles in the [README](README.md):

- Source rules first. Every platform claim must point to an official or best
  available source. If a rule may be stale, verify before documenting it.
- No fake proof. Do not add invented stars, downloads, benchmarks, or quotes,
  even as examples. Use clearly marked placeholders only.
- No credentials. Never commit cookies, tokens, API keys, or sessions.
- Concise and concrete. Prefer short, declarative guidance over long prose.

## What to Contribute

- Fix or clarify existing docs, templates, or checklists.
- Update a platform source doc when an official rule changes (cite the source).
- Add a missing archetype, template, or checklist that fills a real gap.
- Improve cross-references between docs.

## How to Propose a Change

1. Open an issue describing the gap or stale rule, with a source link if it is a
   platform rule update.
2. Make the change in a branch.
3. Verify links resolve and the docs still cross-reference correctly.
4. Open a pull request using the PR template.

## Repository Conventions

- Markdown is the base record; keep files focused and under ~400 lines.
- Template variables use double braces: `{{project_name}}`.
- New platform docs follow the existing shape: Official Sources, Use When,
  Agent Checklist, Do Not, Template.
- New project-planning files live under `projects/_template/` and are copied by
  `scripts/new_project.sh`.

## Sign Your Commits (DCO)

This project uses the Developer Certificate of Origin. Sign off every commit:

```bash
git commit -s -m "docs: clarify discoverability gate"
```

The sign-off adds a `Signed-off-by` line. Do not add AI-generated or
co-author markers.

## Maintainer: Repository Setup

These GitHub settings are not files and must be applied in the repo UI or via
`gh`. They are the Shipwise repo dogfooding its own
[discoverability guide](docs/DISCOVERABILITY.md).

```text
Description: Agent-facing guide for planning and running open-source launches:
             repo design, discoverability/SEO, platform rules, templates, checklists.
Homepage:    (set when a docs site or landing page exists)
Topics:      open-source, launch, developer-tools, documentation,
             agent, devrel, distribution, seo, readme, github
```

- Upload a 1280x640 social preview image carrying the name and one-line value.
- Keep the community health files complete: LICENSE, CONTRIBUTING,
  CODE_OF_CONDUCT, SECURITY, issue templates, PR template.
