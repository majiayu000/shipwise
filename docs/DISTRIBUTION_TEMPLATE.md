# Distribution Template

Use this to make the project installable and understandable before posting about it.

## README Distribution Section

Copy into the project README and fill only the channels that are real.

````markdown
## Install

### Recommended

```bash
<primary install command>
```

### Other Options

| Method | Command | Notes |
|---|---|---|
| GitHub Release | `<command or link>` | `<supported platforms>` |
| Package registry | `<command>` | `<crate/npm/pypi/etc>` |
| Homebrew | `<command>` | `<tap or formula>` |
| Docker | `<command>` | `<image>` |
| Source | `<command>` | `<build requirements>` |

## Quickstart

```bash
<3-5 commands>
```

Expected output:

```text
<short real output>
```

## Limitations

- `<known limitation>`
- `<unsupported platform>`
- `<data/privacy caveat>`
````

## Release Artifact Checklist

- [ ] Version number is final.
- [ ] Changelog exists.
- [ ] Release notes explain user-visible changes.
- [ ] Binary/archive/package is attached or published.
- [ ] Install command works from a clean environment.
- [ ] Checksums are published where relevant.
- [ ] License is included.
- [ ] README links point to the release.

## Package Registry Checklist

### Rust / crates.io

- [ ] `license`, `description`, `repository`, and `readme` are set.
- [ ] `cargo publish --dry-run` passes.
- [ ] `cargo package --list` does not include large or private files.

### npm

- [ ] `name`, `version`, `description`, `repository`, `license`, and `README.md` are ready.
- [ ] `npm pack --dry-run` checked.
- [ ] Package name/version are final.

### PyPI

- [ ] `pyproject.toml` metadata is complete.
- [ ] Build artifacts created.
- [ ] TestPyPI or equivalent dry-run path used when risk is high.

### Homebrew

- [ ] Formula points to immutable release asset.
- [ ] SHA is correct.
- [ ] Install and smoke command pass.

## Platform Asset Checklist

| Platform | Required assets |
|---|---|
| GitHub | README, release notes, install command, demo, topics |
| HN Show HN | runnable project, concise title, founder comment, limitations |
| X | hook, demo asset, proof, repo link |
| Reddit | community-specific framing, no mass-post copy |
| Product Hunt | tagline, thumbnail, gallery images, maker comment, FAQ |
| Blog | story, method, code/examples, screenshots, conclusion |
| Chinese communities | localized pain point, screenshots, install guide, feedback path |
