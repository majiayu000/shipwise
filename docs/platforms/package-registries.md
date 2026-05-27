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

## Registry Notes

### crates.io

Cargo warns that publishing is permanent: versions cannot be overwritten and code cannot be deleted. Run `cargo publish --dry-run` and inspect packaged files before publishing.

### npm

Run `npm pack --dry-run` and confirm package contents. Be careful with package names, scope, access, 2FA, and dist tags.

### PyPI

Prefer trusted publishing when feasible. Confirm package metadata, build artifacts, and import/install behavior.

### Homebrew

Formulae need immutable source/archive URLs and correct SHA values. Run Homebrew audit/test commands before announcing.

## Do Not

- Do not publish a package just to reserve a name unless the project is ready.
- Do not publish with placeholder metadata.
- Do not include test fixtures, private files, credentials, or generated junk in package contents.
