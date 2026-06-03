# Security Policy

Shipwise is a documentation system: markdown, templates, checklists, and one
bash scaffold script (`scripts/new_project.sh`). It does not run a service,
store credentials, or publish on its own.

## Reporting

If you find a security-relevant problem, report it privately:

- Open a GitHub private security advisory on this repository, or
- Email the maintainer at felix.ma@atlascloud.ai.

Please do not open a public issue for a security report. Include what you found,
where, and how to reproduce it.

## In Scope

- The scaffold script `scripts/new_project.sh` (for example, unsafe handling of
  a project name argument).
- Guidance in the docs that would lead an agent to leak credentials, publish
  without consent, or take an unsafe action.

## Out of Scope

- Third-party platform behavior (GitHub, npm, Hacker News, etc.). Use their own
  security channels.

## Project Rules That Reduce Risk

- Never commit credentials: cookies, tokens, API keys, sessions, or recovery
  data. See the [Agent Guide](docs/AGENT_GUIDE.md).
- The repository must not auto-submit posts or run platform automation.
- Discoverability metadata must not contain hidden crawler-only or model-only
  instructions. See [docs/DISCOVERABILITY.md](docs/DISCOVERABILITY.md).
