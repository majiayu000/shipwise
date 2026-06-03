# GitHub Source Guide

GitHub is the source of trust for open-source projects.

## Official Sources

- Releases: https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases
- README docs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
- Topics: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics
- Social preview: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview
- Community profile: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/about-community-profiles-for-public-repositories

## Use When

Every open-source launch should prepare GitHub first.

## Discoverability

The repo page is a ranking surface, not only a landing page. GitHub search and
Google both index it. Design it before posting anywhere. Full guidance:
[../DISCOVERABILITY.md](../DISCOVERABILITY.md).

- About description: one sentence with the primary keyword; it is reused in
  GitHub search, Google snippets, and social cards.
- Topics: set 5 to 20 relevant topics; empty topics is a discoverability bug.
- README first paragraph and headings are the main indexed text; put the user's
  search terms there in natural language.
- Social preview image (1280x640) so shared links do not render as a generic card.
- Community health files (LICENSE, CONTRIBUTING, CODE_OF_CONDUCT, SECURITY,
  issue templates) complete the community profile and act as trust signals.

## Agent Checklist

- [ ] README first screen explains what it is, who it is for, and how to start.
- [ ] README H1 matches name plus primary keyword.
- [ ] License is present.
- [ ] Release notes exist for the launch version.
- [ ] GitHub description (one keyword sentence) and 5-20 topics are set.
- [ ] Homepage URL field points to docs, landing page, or package.
- [ ] Social preview image is set.
- [ ] Issue/support path exists.
- [ ] Demo/proof asset is visible from README.
- [ ] Distribution section links to packages, binaries, docs, or hosted app.

Run the full gate: [../../checklists/discoverability.md](../../checklists/discoverability.md).

## Do Not

- Do not launch public channels before README and install/access path work.
- Do not attach private data, large unnecessary assets, or credentials to releases.
- Do not claim support for package managers or platforms that are not published.

## Template

- `templates/github/RELEASE_NOTES.md`
- `templates/github/README_DISTRIBUTION_SECTION.md`
- `templates/github/REPO_METADATA.md`
