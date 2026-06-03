# Release Lifecycle Checklist

This is the execution checklist for any open-source launch. Copy it into `projects/<project>/launch-plan.md` and check items off there.

The checklist is tool-agnostic. Record outcomes in markdown first. If you use remem, Notion, a spreadsheet, or another database, mirror the same facts there.

## Phase 1: Readiness

### 1. Define Launch Intent

- [ ] Target user is named.
- [ ] One-sentence positioning is written.
- [ ] Archetype is selected from `docs/DECISION_TREE.md`.
- [ ] Launch goal is explicit: feedback, adoption, stars, downloads, contributors, customers, or credibility.

Output: `projects/<project>/positioning.md`

### 2. Verify Product State

- [ ] Tests pass for the project.
- [ ] Clean install path is verified.
- [ ] Quickstart is copied from README and run successfully.
- [ ] Known limitations are documented.
- [ ] License is present.

Block launch if install or quickstart fails.

### 3. Freeze Claims

- [ ] All numeric claims have sources.
- [ ] Benchmarks include machine/context/date.
- [ ] User quotes have permission or are paraphrased.
- [ ] Placeholder numbers are removed.

Output: `projects/<project>/proof.md`

## Phase 2: Asset Package

### 4. Prepare GitHub Surface

- [ ] README first screen has positioning, install, quickstart, demo, and limitations.
- [ ] README H1 matches name plus primary keyword.
- [ ] GitHub description (one keyword sentence), 5-20 topics, and homepage URL are set.
- [ ] Issue template or support path exists.
- [ ] Release notes are drafted.
- [ ] Distribution section is filled from `templates/github/README_DISTRIBUTION_SECTION.md`.
- [ ] Discoverability gate passed: `checklists/discoverability.md` (see `docs/DISCOVERABILITY.md`).

Use `templates/github/REPO_METADATA.md` and `templates/seo/keyword_map.md`.

### 5. Prepare Distribution

- [ ] Release artifact exists, or hosted access path is live.
- [ ] Package dry-run completed where relevant.
- [ ] Checksums or version metadata are ready where relevant.
- [ ] Install commands are tested.

Use `docs/DISTRIBUTION_TEMPLATE.md`.

### 6. Prepare Visual Proof

- [ ] Demo GIF, screenshot, terminal recording, video, or hosted demo exists.
- [ ] Demo uses real or clearly labeled sample data.
- [ ] Visual asset works in GitHub README.
- [ ] Social preview image exists if needed.

### 7. Prepare Copy

- [ ] Relevant platform source docs in `docs/platforms/` are read.
- [ ] Core announcement is filled from `templates/core/ANNOUNCEMENT.md`.
- [ ] X thread is adapted.
- [ ] HN post is adapted if Show HN is selected.
- [ ] Reddit post is adapted per subreddit.
- [ ] Product Hunt assets are prepared only if selected.
- [ ] Blog or Chinese community post is prepared if selected.

## Phase 3: Launch

### 8. Publish Primary Artifact

- [ ] GitHub release is published.
- [ ] Package registry or hosted artifact is available.
- [ ] README links resolve.
- [ ] Release notes link to docs and install commands.

Record initial metrics.

### 9. Publish First Wave

- [ ] Each selected platform has a checked source doc entry under `docs/platforms/`.
- [ ] First owned channel is posted.
- [ ] First high-intent community channel is posted.
- [ ] Comments are watched for the first two hours.
- [ ] Blocking bugs are triaged immediately.

Do not post to more channels while install or onboarding is broken.

### 10. Publish Second Wave

- [ ] Platform source docs were rechecked for any channel not used in first wave.
- [ ] Adapted posts are sent to secondary channels.
- [ ] Each post has a platform-specific title and framing.
- [ ] No request for upvotes or artificial boosting.
- [ ] Feedback links back to GitHub issues, discussions, or a chosen inbox.

## Phase 4: Response

### 11. Classify Feedback

Classify every meaningful response:

- Bug
- Install friction
- Misunderstanding
- Feature request
- Use case
- Praise / social proof
- Negative but useful critique
- Spam / irrelevant

Output: `projects/<project>/feedback.md`

### 12. Ship Fast Fixes

- [ ] Fix launch-blocking bugs.
- [ ] Update README FAQ for repeated confusion.
- [ ] Reply with specific fixes, not generic thanks.
- [ ] Avoid adding roadmap promises unless you will track them.

## Phase 5: Review

### 13. Day 1 Review

- [ ] Record traffic, stars, downloads, signups, issues, comments.
- [ ] Record top 3 surprises.
- [ ] Record top 3 copy failures.
- [ ] Decide whether to continue posting or pause.

Output: `projects/<project>/retros/day-1.md`

### 14. Day 7 Review

- [ ] Compare expected vs actual platform performance.
- [ ] Identify best-performing asset.
- [ ] Identify weakest claim or asset.
- [ ] Update one template or decision rule.

Output: `projects/<project>/retros/day-7.md`

### 15. Day 30 Review

- [ ] Measure durable impact: stars retained, downloads, contributors, issues, mentions, search traffic.
- [ ] Decide whether this project needs another launch, docs work, or product work.
- [ ] Archive the final launch report.
- [ ] Update `docs/DECISION_TREE.md` only if this launch changed the strategy.

Output: `projects/<project>/retros/day-30.md`

## Optional Memory Backends

Markdown is the source of truth. If you use remem, save summaries with supported memory types, for example:

```text
memory_type: architecture
project: shipwise
topic_key: launch-{project}-{version}-{date}
text: Launch summary, metrics, feedback classes, template changes.
```

Do not use unsupported memory types in examples. Keep launch details searchable by project, version, platform, and archetype.
