# Docs Index

Read these in order when planning a launch. This is an agent-facing document system, not an auto-publisher.

1. [AGENT_GUIDE.md](AGENT_GUIDE.md)
   - How an agent should use this repository.
   - What must be verified before posting.
   - What not to automate.

2. [DECISION_TREE.md](DECISION_TREE.md)
   - Classify the project.
   - Pick the launch platforms.
   - Decide which assets are required.

3. [platforms/README.md](platforms/README.md)
   - Source-of-truth platform index.
   - Official rules and posting requirements.

4. [RELEASE_LIFECYCLE_CHECKLIST.md](RELEASE_LIFECYCLE_CHECKLIST.md)
   - Step-by-step workflow from readiness to 30-day review.
   - Use this as the execution checklist.

5. [DISTRIBUTION_TEMPLATE.md](DISTRIBUTION_TEMPLATE.md)
   - README distribution section.
   - Package/release channel checklist.
   - Platform asset checklist.

6. [TEMPLATE_SYSTEM.md](TEMPLATE_SYSTEM.md)
   - 70/30 reuse model.
   - Template variables.
   - How to adapt copy per platform.

7. [SUCCESS_METRICS.md](SUCCESS_METRICS.md)
   - Metrics for visibility, activation, feedback, contribution, and learning.

8. [FEEDBACK_LOOP.md](FEEDBACK_LOOP.md)
   - How to record launch outcomes.
   - Markdown-first storage, with optional remem/Notion/spreadsheet backends.

9. [ROADMAP.md](ROADMAP.md)
   - How Shipwise should evolve.

## Fast Path

For a new project, create a docs folder manually or use the optional scaffold:

```bash
./scripts/new_project.sh <project-name> <archetype>
```

Then fill:

- `projects/<project-name>/project.yaml`
- `projects/<project-name>/positioning.md`
- `projects/<project-name>/launch-plan.md`
- `projects/<project-name>/metrics.md`

## Maintenance Rule

After every real launch:

- Update the project playbook.
- Update one template if the template was wrong or incomplete.
- Update the decision tree only if the platform strategy changed.
- Record learnings in markdown and, optionally, in your memory system.
