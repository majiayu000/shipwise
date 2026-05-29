# Launch Decision Tree

Use this document before writing any launch copy.

The purpose is to answer four questions:

1. What type of project is this?
2. What must be true before launch?
3. Which platforms should be used first?
4. What assets are required?

If current community momentum is part of the request, first run
[TREND_SIGNAL_WORKFLOW.md](TREND_SIGNAL_WORKFLOW.md). Trend signals help decide
which local issues or PRs are worth doing now, but they do not override launch
blockers.

## Step 1: Classify The Project

Pick the closest archetype. If a project fits multiple rows, choose the row that matches the user's first action after seeing the project.

| Archetype | User's first action | Typical projects | Primary platforms | Required proof |
|---|---|---|---|---|
| CLI / local developer tool | Install and run a command | stats tools, cleanup tools, code analyzers | GitHub, package registry, X, HN or niche Reddit | terminal demo, install command, benchmark or real output |
| Library / SDK | Add dependency or copy code | crates, npm packages, API clients | Package registry, GitHub, docs, example repo, technical blog | quickstart, API example, compatibility matrix |
| AI / agent workflow tool | Try workflow with their existing tools | MCP servers, skills, browser QA, prompt tooling | GitHub, X, Reddit/Discord niche, demo video | end-to-end workflow demo, integration matrix, limitations |
| Framework / guardrail / quality system | Adopt a rule or policy | hooks, linters, guardrails, security checks | GitHub, technical article, X, HN if runnable | before/after, false-positive policy, config examples |
| Registry / dataset / index | Search or query the collection | registries, catalogs, benchmarks, datasets | GitHub, HN, X, docs, API/data examples | coverage stats, schema, sample query, update policy |
| App / visual product | Open a site and complete a task | dashboards, SaaS-like tools, editors | Product Hunt, X, LinkedIn, demo video, docs | live demo, screenshots, onboarding path |
| Deep technical writeup | Read and evaluate an argument | architecture notes, benchmarks, reports | Blog, HN regular post, Reddit niche, newsletter | methodology, reproducible data, caveats |

## Step 2: Check Readiness

Do not launch if any blocker is true.

| Blocker | Why it blocks launch |
|---|---|
| No clear target user | Copy becomes generic and untestable |
| No install or access path | Users cannot try it |
| Quickstart fails in a clean environment | First impressions are wasted |
| Demo uses fake data without disclosure | Trust loss |
| Claims have no proof | Community feedback will focus on credibility |
| License missing for open source | Blocks adoption |
| No help path | Feedback disappears into DMs |
| Trend claim has no live source | Turns launch copy into speculation |

## Step 3: Choose Platform Order

Use a small launch surface first. Three to five well-matched channels beat ten weak posts.

| Project condition | Recommended first wave |
|---|---|
| CLI or library with strong technical proof | GitHub release, package registry, X, HN Show HN or niche Reddit |
| AI workflow tool with a visual demo | GitHub, X thread, Reddit/Discord niche, short video |
| Productized app with usable onboarding | Product Hunt, X, LinkedIn, demo video, blog |
| Research or benchmark report | Blog, HN regular post, X, Reddit niche, newsletter |
| Chinese-first audience | WeChat article, Juejin, V2EX, Bilibili if visual, then English channels |
| Existing English technical audience | X, HN, GitHub, Reddit niche, then translated Chinese summary |

No global rule says Chinese must come before international or the reverse. Pick based on existing audience, project type, and proof quality.

## Step 4: Prepare Assets

| Asset | CLI/tool | Library/SDK | AI workflow | App | Writeup |
|---|---:|---:|---:|---:|---:|
| One-sentence positioning | required | required | required | required | required |
| README quickstart | required | required | required | required | optional |
| Demo GIF/video | required | optional | required | required | optional |
| Benchmark/real output | required | optional | recommended | optional | required |
| Package/release artifact | required | required | recommended | optional | optional |
| API/schema docs | optional | required | recommended | optional | optional |
| Screenshots | recommended | optional | recommended | required | optional |
| FAQ/limitations | required | required | required | required | required |
| Platform copy | required | required | required | required | required |

## Step 5: Select Copy Angle

| Archetype | Best angle | Avoid |
|---|---|---|
| CLI/tool | "Before this, I had to do X manually; now one command gives Y." | Abstract productivity claims |
| Library/SDK | "Add this in N lines; here is the exact API." | Over-selling roadmap |
| AI workflow | "Here is the full workflow running end to end." | Magic-agent language without proof |
| Guardrail/framework | "This catches concrete failures and shows how to tune false positives." | Moralizing about quality |
| Registry/dataset | "Here is the coverage, schema, and query path." | Vague "largest/best" claims |
| App | "Open it, complete this task, get this output." | Screenshot-only launch |
| Writeup | "Here is the method, data, and conclusion." | Hot take without reproducibility |

## Platform Notes

- Hacker News Show HN: only when people can try the thing. Do not post landing pages or unreadable-only material as Show HN.
- Reddit: do not mass-post repeated content. Rewrite for each community and respect local rules.
- Product Hunt: useful for productized launches; do not directly request upvotes.
- X: best for repeated progress, release notes, demos, and personal distribution.
- GitHub: always the source of trust for open-source projects.
- Package registries: publish only after dry-run/package verification.

## Decision Output

After using this file, write the launch decision into `projects/<project>/launch-plan.md`:

```markdown
## Launch Decision

- Archetype:
- Target user:
- Primary platforms:
- Secondary platforms:
- Blockers:
- Required assets:
- Launch date:
- Review date:
```

If trend signals influenced the decision, also write the trend decision from
`docs/TREND_SIGNAL_WORKFLOW.md` and link the local issue or PR.
