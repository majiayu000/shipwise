# Discoverability Checklist

Review the discovery surfaces selected for this launch, alongside
`checklists/release-lifecycle.md`. Full guidance: [docs/DISCOVERABILITY.md](../docs/DISCOVERABILITY.md).
This checklist is an execution run sheet; the linked doc remains the source for
rules and rationale.

Record each applicable finding in `readiness-report.md` using `verified`,
`missing`, `unverified`, `blocked` or `not applicable`, with a reason and evidence
reference to `proof.md`. An unchecked polish item does not block launch. Preserve
P0 checks for legal use, working install/access, quickstart, real proof and help.
Docs, collections and source-only projects need not publish a package or Release.

## Identity

- [ ] Project identity and any different package/source names are mapped accurately.
- [ ] Primary keyword is decided (the term a user would actually search).

## GitHub Repo

- [ ] About description explains the project naturally, with no fake claims.
- [ ] Relevant topics chosen (at most 20; GitHub has no minimum of 5).
- [ ] Homepage points to a useful real page, if one exists.
- [ ] Selected channel's default or custom share card reviewed; custom image is P2.
- [ ] README H1 names the project; a descriptive term is optional.
- [ ] README first paragraph states what and who, using natural search terms.
- [ ] Section headings are descriptive (Installation, Quickstart, Use cases).
- [ ] Applicable install/access path, quickstart and proof are easy to find.
- [ ] Actual license and usable help path verified; other community files fit
      the contribution/security processes, rather than a universal file count.
- [ ] Release/versioned artifact checked if selected; source-only access is valid.

## Search / Docs Site (if one exists)

- [ ] Unique title and meta description per page.
- [ ] Clear heading hierarchy and descriptive URLs; no exact H1-count gate.
- [ ] Crawl directives, canonical and structured data reviewed for validity;
      no accidental noindex. Record indexing separately from eligibility.
- [ ] Origin-root robots rules and any sitemap reviewed where applicable;
      missing robots.txt alone is not a block and sitemap may use a subpath.
- [ ] Important content is available in the rendered page.
- [ ] Canonical URL set on syndicated copies of the same article.

## Package Registry (if publishing)

- [ ] Exact public package name/version and declared repository association
      checked; a match does not verify publisher identity or artifact provenance.
      Private packages are not applicable to public-registry checks.
- [ ] Description accurately explains the package.
- [ ] Keywords / categories / classifiers set per registry.
- [ ] Repository and homepage links set in package metadata.

## Anti-Pattern Check

- [ ] No keyword stuffing in description, topics, or README.
- [ ] No unrelated topics added to ride popular tags.
- [ ] No fake or misleading badges.
- [ ] No purchased stars, downloads, or reviews.
- [ ] No hidden crawler-only or model-only text.
