# GitHub Source Guide

GitHub is the source of trust for open-source projects.

## Official Sources

- Releases: https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases
- README docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
- Topics: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics
- Social preview: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview
- Community profile: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/about-community-profiles-for-public-repositories
- Repository search: https://docs.github.com/en/search-github/searching-on-github/searching-for-repositories

## Use When

Every open-source launch should prepare GitHub first.

## Discoverability

The repo page is a discovery and evaluation surface. GitHub documents searchable
fields, not their relative weight or Google ranking/CTR effects. Full guidance:
[../DISCOVERABILITY.md](../DISCOVERABILITY.md).

- About description: explain the project accurately using natural search terms.
- Topics: choose relevant terms, at most 20; no minimum count is required.
- README: explain what, who and how to start; exact keyword placement is advice.
- Preview the default card (repo information and owner's avatar). A custom
  1280x640 image is optional P2 polish; no click-loss estimate is assumed.
- Verify the actual license and usable support path. Other community files
  depend on the project's contribution/security process.

## Agent Checklist

- [ ] README first screen explains what it is, who it is for, and how to start.
- [ ] README H1 names the project; descriptive terms read naturally.
- [ ] License is present.
- [ ] Release notes exist if a GitHub Release is a selected distribution channel.
- [ ] GitHub description is accurate and topics are relevant (no minimum count).
- [ ] Homepage points to a useful docs/landing/package page if one exists.
- [ ] Default or custom preview checked on the selected social channel (P2 polish).
- [ ] Issue/support path exists.
- [ ] Demo/proof asset is visible from README.
- [ ] Distribution section links to packages, binaries, docs, or hosted app.

Review applicable items: [../../checklists/discoverability.md](../../checklists/discoverability.md).
Use the existing readiness statuses and record reasons for `not applicable`.

## Hard Rules

- Topics: GitHub allows no more than 20 topics; topic names must use lowercase
  letters, numbers, and hyphens, and must be 50 characters or less.
- Do not add unrelated topics or require five topics as a platform rule.
- Release/version: verify each selected artifact and its install instructions
  against the intended version. Record source revision, published package,
  Release, live site and indexing independently in `proof.md`; a source merge
  does not publish the others. Block a claimed install path that resolves to an
  unintended version. Docs/source-only projects need no package or Release.

## Do Not

- Do not launch public channels before README and install/access path work.
- Do not attach private data, large unnecessary assets, or credentials to releases.
- Do not claim support for package managers or platforms that are not published.

## Template

- `templates/github/RELEASE_NOTES.md`
- `templates/github/README_DISTRIBUTION_SECTION.md`
- `templates/github/REPO_METADATA.md`
