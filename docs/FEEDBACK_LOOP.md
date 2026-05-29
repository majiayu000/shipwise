# Feedback Loop

Every launch should improve the next launch.

This system is storage-neutral. Use markdown as the canonical record, then mirror the summary into whatever memory system you prefer: remem, Notion, a spreadsheet, Linear, GitHub issues, or a database.

## Files To Keep

Each project should keep:

```text
projects/<project>/
  project.yaml
  positioning.md
  launch-plan.md
  proof.md
  feedback.md
  metrics.md
  links.md
  signals.md
  copy/
  assets/
  retros/
    day-1.md
    day-7.md
    day-30.md
```

## What To Record

### Launch Log

- Project, version, archetype.
- Channels used.
- Exact links.
- What was posted.
- What was expected.
- What actually happened.

### Feedback

- Bug reports.
- Install friction.
- Misunderstandings.
- Feature requests.
- Use cases.
- Strong quotes.
- Rejections or moderation issues.

### Template Changes

For each change:

- What failed?
- Which file changed?
- What evidence justified the change?
- What future launch should use it?

### Trend Signals

- Which sources were checked.
- Retrieval date.
- Comparable projects.
- Signal type: viral, steady, cyclical, or long tail.
- Which local issue or PR was created.
- Which external outcomes were explicitly not promised.

## Optional remem Pattern

If using remem, keep the memory type supported and put launch semantics into the topic key:

```text
memory_type: architecture
project: shipwise
topic_key: launch-<project>-<version>-<date>
text:
  Summary, platforms, links, metrics, feedback classes, template changes.
```

For decisions:

```text
memory_type: decision
topic_key: launch-channel-decision-<project>-<version>
text:
  Why these platforms were chosen, what was rejected, and what evidence supports it.
```

Markdown remains the full source of truth. Memory entries should be summaries and retrieval handles.
