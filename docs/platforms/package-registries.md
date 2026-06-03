# Package Registries Source Guide

Package registries are distribution channels, not announcement channels. Use them when users need an install command.

## Official Sources

- crates.io / Cargo publishing: https://doc.rust-lang.org/cargo/reference/publishing.html
- npm publish: https://docs.npmjs.com/cli/v10/commands/npm-publish/
- PyPI trusted publishing: https://docs.pypi.org/trusted-publishers/
- Homebrew Formula Cookbook: https://docs.brew.sh/Formula-Cookbook

## Use When

- CLI tool.
- Library or SDK.
- Binary utility.
- Tool that should be installed into a developer workflow.

## Agent Checklist

- [ ] Package name and version are final.
- [ ] Metadata is complete: description, license, repository, README.
- [ ] Dry-run or equivalent check passed.
- [ ] Package contents were inspected.
- [ ] Install command works in a clean environment.
- [ ] Secret tokens are never stored in this repo.
- [ ] Release notes and package version match.

## Registry SEO

Registry search ranks mostly on name match, description, keywords, and download
count. Metadata is a discoverability surface, not an afterthought. Fill it with
the keyword map. Full guidance: [../DISCOVERABILITY.md](../DISCOVERABILITY.md).

- Description: one sentence with the primary keyword; it shows in registry search
  results and is read by coding agents that recommend packages.
- Keywords / categories / classifiers: set the per-registry fields below.
- Repository and homepage links: set so the package points back to the source.
- Same canonical name/slug as the GitHub repo and docs.

## Registry Notes

### crates.io

Cargo warns that publishing is permanent: versions cannot be overwritten and code cannot be deleted. Run `cargo publish --dry-run` and inspect packaged files before publishing.

For discoverability, set `description`, `keywords` (up to 5), `categories` (from
the official crates.io category slugs), `repository`, and `documentation` in
`Cargo.toml`.

### npm

Run `npm pack --dry-run` and confirm package contents. Be careful with package names, scope, access, 2FA, and dist tags.

For discoverability, set `description`, `keywords`, `repository`, and `homepage`
in `package.json`. npm search ranks on these plus popularity.

### PyPI

Prefer trusted publishing when feasible. Confirm package metadata, build artifacts, and import/install behavior.

For discoverability, set `description`/`summary`, `keywords`, official
`classifiers`, and project URLs (Homepage, Source, Documentation) in project
metadata.

### Homebrew

Formulae need immutable source/archive URLs and correct SHA values. Run Homebrew audit/test commands before announcing.

## Do Not

- Do not publish a package just to reserve a name unless the project is ready.
- Do not publish with placeholder metadata.
- Do not include test fixtures, private files, credentials, or generated junk in package contents.
