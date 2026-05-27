# Agent Guide

This repository is Shipwise — a publishing guide for agents. It does not publish by itself.

When a user asks an agent to prepare or run an open-source launch, the agent should use Shipwise as the operating manual: read the project facts, read the platform source docs, prepare platform-specific assets, publish only where appropriate, and record outcomes.

## Operating Rules

1. Source rules before platform actions.
   - Read the relevant file in `docs/platforms/`.
   - If the platform rule may have changed, verify the official source before posting.

2. No fake proof.
   - Do not invent stars, downloads, benchmarks, cost savings, productivity gains, or user quotes.
   - Use placeholders only in drafts, never in publishable copy.

3. No mass posting.
   - Reuse the core idea, not identical copy.
   - Rewrite for each platform and community.

4. No credential storage.
   - Do not store cookies, tokens, API keys, sessions, or account recovery data in this repo.

5. No unsupported automation.
   - This repository can scaffold docs.
   - It must not auto-submit posts, send DMs, ask for upvotes, or run platform automation unless a separate, explicit, platform-compliant workflow exists.

6. Markdown is the base record.
   - Memory systems are optional mirrors.
   - The canonical launch plan, links, metrics, and retro should exist under `projects/<project>/`.

## Agent Workflow

```text
1. Gather project facts
2. Classify archetype
3. Read platform source docs
4. Decide channels
5. Prepare assets
6. Draft platform-specific copy
7. Verify launch blockers
8. Publish manually or with user-approved platform tooling
9. Record links and metrics
10. Review and update docs
```

## Required Project Facts

Before drafting public copy, collect:

- Project repo and current version.
- Target user.
- Problem solved.
- Installation or access path.
- Quickstart.
- Demo/proof asset.
- Known limitations.
- License.
- Support path.
- Launch goal.

If these facts are missing, create a preflight TODO instead of publishable copy.

## Channel Decision Record

Every launch should include a short decision record:

```markdown
## Channel Decision

- Project:
- Archetype:
- Primary goal:
- Platforms selected:
- Platforms rejected:
- Official source docs checked:
- Launch blockers:
- Review date:
```

## Publishing Boundary

The agent may:

- Draft copy.
- Build checklists.
- Create project planning files.
- Summarize platform rules.
- Prepare a launch report.

The agent may publish only when:

- The user explicitly asks it to publish.
- The target platform/account/tooling is available.
- The platform source doc does not prohibit the action.
- The final copy has no fake metrics or hidden sponsorship.
- The action is logged in `projects/<project>/links.md` or `launch-plan.md`.
