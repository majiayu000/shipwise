# Trend Signal Workflow

Use this workflow when a user asks whether a project should be built, polished,
launched, re-launched, or turned into GitHub issues because of market or
community momentum.

Trend data is an input signal. It is not proof of product value, and it does not
guarantee stars, ranking, traffic, Product Hunt placement, Hacker News success,
or GitHub Trending placement.

## Sources

Use live sources. Do not rely on model memory for current trend claims.

Primary sources:

- GitHub Trending: `https://github.com/trending`
- GitHub Trending by language: `https://github.com/trending/<language>`
- GitHub search API for recent high-growth repositories.
- Repository metadata: README, release history, license, topics, issues, PRs,
  commit activity, and package/download surfaces.

Secondary sources:

- Hacker News, especially Show HN and technical discussion threads.
- Product Hunt for productized tools.
- Reddit niche communities.
- X or other owned-audience channels.
- Package registries where install behavior matters.

## Operating Rules

1. Live fetch before claiming recency.
   - Record source URLs and retrieval dates.
   - If a source cannot be checked, mark it as unverified.

2. Separate static rank from movement.
   - Static list position is weak evidence.
   - New entries, repeated appearances, sudden star velocity, fresh releases, or
     recurring user complaints are stronger signals.

3. Treat trends as opportunity, not acceptance criteria.
   - A local PR can make README, install, release, demo, or support flow better.
   - A local PR cannot guarantee external ranking or community response.

4. Convert trend insight into local work.
   - Good issue: "Add release artifact and quickstart because competing CLI
     tools on GitHub Trending expose one-command install."
   - Bad issue: "Make this project trend."

5. Avoid hype-only launches.
   - If the project has no working install/access path, quickstart, license, or
     proof asset, open a readiness issue before writing launch copy.

## Workflow

1. Gather project facts.
   - Current repo, version, target user, install/access path, proof, limitations,
     license, support path.

2. Gather trend sources.
   - Check GitHub Trending for the relevant language or category.
   - Check 3-5 comparable repositories.
   - Check one community source if launch channel timing matters.

3. Classify signal type.
   - Viral: fast spike, high risk of hype.
   - Steady: consistent growth, stronger adoption signal.
   - Cyclical: tied to predictable events.
   - Long tail: small but durable utility.

4. Compare against Shipwise readiness.
   - What do comparable projects show above the fold?
   - Do they offer release assets, package install, screenshots, demos,
     limitations, support templates, or benchmarks?
   - Which gaps are local and fixable?

5. Write an issue.
   - One problem statement.
   - Evidence links.
   - Local scope.
   - Non-goals.
   - Done-when checklist.

6. Open a PR only for local artifacts.
   - Docs, templates, metadata, checks, release notes, or scaffolding.
   - Do not include external-outcome claims in PR acceptance criteria.

7. Record the result.
   - Save sources, issue links, PR links, decisions, and follow-up date in the
     project folder.

## Trend Decision Record

Add this to `projects/<project>/launch-plan.md` when trend signals influence
work scope or launch timing.

```markdown
## Trend Decision

- Sources checked:
- Retrieval date:
- Comparable projects:
- Signal type:
- What changed in our plan:
- What stayed out of scope:
- Local issue:
- Local PR:
- Follow-up date:
```

## Issue Template

Use `templates/github/LAUNCH_READINESS_ISSUE.md` when opening a GitHub issue
from trend analysis.
