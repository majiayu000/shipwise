# Success Metrics

A launch should be judged by its goal, not by one universal metric.

## Goal Types

| Goal | Primary metrics | Secondary metrics |
|---|---|---|
| Feedback | useful comments, issues, bug reports | comment quality, repeated confusion |
| Adoption | installs, downloads, active users | stars, forks, package dependents |
| Credibility | mentions, newsletter inclusion, HN/PH discussion | high-quality replies, inbound DMs |
| Contributors | PRs, issues, discussions | first-time contributor count |
| SEO / long-tail | query/page impressions, clicks and CTR | search referrals, docs traffic, relevant links |
| Sales / leads | qualified leads, trials, calls | Product Hunt or LinkedIn traffic |

## Baseline

Use [the project metrics template](../projects/_template/metrics.md) before
launch and for each review. It records query/page, impressions, clicks, CTR,
window, source, filters and retrieval time; keep comparisons on the same scope.
Reference the dated report in `proof.md` rather than copying evidence payloads.
Uncollected/inaccessible values are `unverified`, unused channels are
`not applicable`, and 0 requires an actual observation. Lighthouse lab runs,
real-user field measurements and search traffic are separate evidence.

## Day 1

- Posts published.
- Traffic by source.
- Stars/forks/downloads.
- Issues and bug reports.
- Repeated questions.
- Blocking problems.

## Day 7

- Best platform.
- Worst platform.
- Best asset.
- Most repeated confusion.
- Fixes shipped.
- Template updates needed.

## Day 30

- Durable traffic.
- Downloads or installs retained.
- Contributors gained.
- Search/referral sources.
- Whether a second launch is justified.

## Feedback Quality Scale

| Score | Meaning |
|---|---|
| 0 | Spam, off-topic, or vanity only |
| 1 | Generic praise or complaint |
| 2 | Specific reaction but no action |
| 3 | Install/use attempt, bug, or concrete question |
| 4 | Detailed feedback, comparison, or use case |
| 5 | Contribution, integration, case study, or strong adoption signal |

## ROI Note

Use a simple launch ROI note:

```text
Launch value = useful feedback + durable adoption + credibility + learnings - launch effort
```

Do not force false precision. The point is to compare channels across launches.
