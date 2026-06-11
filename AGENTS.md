# Agent Instructions

This repository is Shipwise: a documentation system that tells an agent how to
plan and execute an open-source launch. It contains no publishing code.

If you were asked to publish or prepare a launch:

1. Read `docs/AGENT_GUIDE.md` for operating rules and publishing boundary.
2. Classify the project with `docs/DECISION_TREE.md`.
3. Follow the workflow in `README.md` "Agent Quick Start".

Hard rules:

- No fake metrics, mass posting, or credential storage in this repo.
- Publish only with explicit user instruction.
- Log every post in `projects/<project>/links.md`.
