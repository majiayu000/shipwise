# Discoverability Gate Checklist

Minimum design-for-discovery gate. Run before launch, alongside
`checklists/release-lifecycle.md`. Full guidance: [docs/DISCOVERABILITY.md](../docs/DISCOVERABILITY.md).
This checklist is an execution run sheet; the linked doc remains the source for
rules and rationale.

## Identity

- [ ] Canonical name/slug is the same across GitHub, package, docs, and social.
- [ ] Primary keyword is decided (the term a user would actually search).

## GitHub Repo

- [ ] About description is one sentence with the primary keyword, no fake claims.
- [ ] 5 to 20 topics set, broad plus specific, all relevant.
- [ ] Homepage URL field points to docs, landing page, or package page.
- [ ] Social preview image (1280x640) set, carrying name and one-line value.
- [ ] README H1 matches name plus primary keyword.
- [ ] README first paragraph states what, who, and the search term.
- [ ] Section headings are descriptive (Installation, Quickstart, Use cases).
- [ ] Install command and a real demo are above the fold.
- [ ] Community health files present: LICENSE, CONTRIBUTING, CODE_OF_CONDUCT,
      SECURITY, issue template.
- [ ] A release is published (recency signal).

## Search / Docs Site (if one exists)

- [ ] Unique title and meta description per page.
- [ ] One H1 per page; descriptive, slugified URLs.
- [ ] sitemap.xml and robots.txt present; pages are indexable (no stray noindex).
- [ ] Content renders without client-side-only JS, or is pre-rendered.
- [ ] Canonical URL set on syndicated copies of the same article.

## Package Registry (if publishing)

- [ ] Description filled with the primary keyword.
- [ ] Keywords / categories / classifiers set per registry.
- [ ] Repository and homepage links set in package metadata.

## Anti-Pattern Check

- [ ] No keyword stuffing in description, topics, or README.
- [ ] No unrelated topics added to ride popular tags.
- [ ] No fake or misleading badges.
- [ ] No purchased stars, downloads, or reviews.
- [ ] No hidden crawler-only or model-only text.
