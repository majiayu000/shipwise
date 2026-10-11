# Discoverability and SEO

How to design a project so people and agents can find it. Discoverability is a
design decision made before launch, not a growth hack applied after.

A launch can be flawless and still fail if the repo, package, and docs are
invisible to search. Distribution puts the project in front of people once.
Discoverability keeps it findable for months after the launch traffic is gone.

This doc covers how the project itself should be designed. For where and how to
post, see [DECISION_TREE.md](DECISION_TREE.md) and `docs/platforms/`.

## Discovery Surfaces

People and agents reach a project through a small number of surfaces. Design for
the ones that match the archetype, not all of them.

These are surfaces to inspect, not a ranking formula. GitHub's repository
search documentation describes searchable fields and filters; it does not
establish Google ranking weights or a click-through effect. Treat optimization
ideas as hypotheses until measured for the project and channel.

| Surface | Useful information to verify |
|---|---|
| GitHub search and topics | Accurate repo name, description, relevant topics, README text |
| Web search (Google/Bing) | Crawl/indexing evidence, descriptive titles, useful content and links |
| Package registry search | Exact package identity, description, supported metadata fields |
| Awesome-lists and aggregators | Inclusion via PR, clear one-line value |
| Social and community | Title and first line of the post, demo asset |
| LLM / agent retrieval | Accurate package metadata, clear README structure, real descriptions |

## GitHub Repository Design

The repo page helps users find and evaluate a project. GitHub supports searches
by name, description, topics and README. Google indexing and ranking need their
own evidence; a well-filled GitHub page does not prove either.

### Repo name

- Short, lowercase, hyphen-or-no-separator, memorable.
- Prefer a name that hints at the function or is easy to remember; avoid generic
  words that collide with thousands of repos.
- Use a consistent identity across surfaces. If package and repository names
  differ, document the mapping rather than renaming or claiming an unrelated
  same-name package.

### About / description

- One sentence: what it is, for whom, and the primary keyword users search.
- Keep the description accurate wherever it is reused. Search engines may
  choose different snippet text.
- No emoji-only descriptions, no marketing adjectives without a noun.

### Topics

- Choose relevant topics for the project's purpose, domain and language.
  GitHub permits at most 20; it does not require at least 5.
- Use real, existing GitHub topics where possible; they connect the repo to
  topic pages and Explore.
- Topics provide a browse and search surface. The cited GitHub docs do not
  specify their relative ranking weight. Topic count is not a launch blocker.

### Homepage URL

- If a useful docs site, landing page or package page exists, link it from the
  repository homepage field. A source-only project need not create a site.

### README as an entry point

- Name the project in the H1; add a useful descriptive term if it reads naturally.
- Explain what it is and who it is for in the first paragraph. Put helpful search
  terms in natural language; an exact keyword match is not a readiness gate.
- Use descriptive section headings (`Installation`, `Quickstart`, `Use cases`).
  These help users navigate; no first-screen ranking weight is established here.
- Keep the install/access path and relevant proof easy to find. For a writeup or
  collection, this can be a reading link or sample query rather than an install.

### Social preview image

- GitHub provides a default card with repository information and the owner's
  avatar. Preview it on the intended channel; a custom image is optional P2 polish.
- If useful, upload a 1280x640 image (GitHub's best-display recommendation).
  Measure any click-through change; absence alone does not prove lost clicks.
- The image should carry the name and one-line value, not decoration only.

### Releases

- Use GitHub Releases when users need versioned notes or downloadable artifacts.
  Source-only docs or collections can use a verified source/access path instead.
- Release dates describe publication history. The cited release docs do not
  establish a search-ranking recency benefit. A merged commit does not prove a
  package or Release was published.

### Community health files

- `LICENSE`, `README`, `CONTRIBUTING`, `CODE_OF_CONDUCT`, `SECURITY`, and issue
  templates complete the GitHub community profile.
- Verify the actual license and a usable help path as P0 requirements. A license
  badge alone is insufficient; support can be an issue tracker, discussion or
  documented contact, without both CONTRIBUTING and issue templates.
- Add other community files for the contribution and security processes the
  project uses. Profile completeness is not a universal launch gate.

## Search Engine SEO

Public GitHub repo pages and docs sites can be indexed. Eligibility, an index
inspection and measured search traffic are separate observations.

### For the repo page

- The README first paragraph and headings are the main on-page text. Put the
  user's search terms there in natural language.
- Helpful links can let readers and crawlers discover content. The cited sources
  do not quantify a ranking gain from any launch channel; earn relevant links
  and avoid link schemes.

### For a docs site

- Unique `<title>` and meta description per page, each containing the page topic.
- Use a clear heading hierarchy and descriptive URLs (`/guide/install`).
  An exact H1 count is not an indexing requirement.
- Check accidental `noindex`, crawl restrictions, canonical targets and valid
  structured data. A tag's presence does not prove validity or indexing.
- Review robots rules at the origin root; a missing robots.txt is not itself a
  crawl block. A valid sitemap may live at a project subpath. Use a sitemap when
  useful for discovery; neither file is universally mandatory.
- Verify rendered content, including important JS-generated content, is
  available to the crawler. Pre-rendering is an option, not an indexing guarantee.
- Use internal links to help readers and crawlers find related content.
- Measure load and mobile usability. Keep Lighthouse lab tests, real-user field
  data and search outcomes separate in `metrics.md`.

### Canonical and syndication

- When the same article is posted on a blog and a syndication platform
  (DEV, Medium, Hashnode), use the canonical URL to indicate the preferred source.
  Google treats it as a signal and may choose a different canonical.

## Keyword Strategy

Pick the terms users actually search, not the project's internal vocabulary.

1. List the problem the user has, in their words. They search the problem, not
   the brand.
2. Map terms into three tiers:
   - Primary: one or two high-intent terms (used in name area, description, H1).
   - Secondary: related terms (used in topics, headings, package keywords).
   - Long-tail: specific phrases (used in docs titles, FAQ, blog posts).
3. Place each tier on the matching surface. See
   [templates/seo/keyword_map.md](../templates/seo/keyword_map.md).
4. Align the name and primary keyword across GitHub, package registry, docs, and
   social so all surfaces reinforce one identity.

## Package Registry SEO

Registry search behavior differs by service; the metadata docs below do not
establish universal ranking weights. Fill supported fields accurately. See
[platforms/package-registries.md](platforms/package-registries.md) for the
per-registry fields (npm keywords, crates.io categories and keywords, PyPI
classifiers and keywords).

## Agent and LLM Discoverability

A growing share of project discovery happens through coding agents and LLM
answers. They rely on the same metadata, parsed literally.

- Keep package metadata accurate: name, description, repository link, keywords,
  and license. Wrong or empty metadata makes agents recommend the wrong thing or
  skip the project.
- Use a clear, conventional README structure (what, install, quickstart, usage).
  Predictable structure is easier to parse and summarize correctly.
- State requirements and limitations explicitly so an agent does not infer false
  capabilities.
- Do not stuff hidden instructions or invisible text for models. That is the
  same anti-pattern as keyword stuffing and erodes trust when found.

## Do Not

- Do not keyword-stuff the description, topics, or README. It reads as spam and
  GitHub or search engines can penalize it.
- Do not add topics unrelated to the project to ride popular tags.
- Do not display fake or misleading badges (build passing when there is no CI,
  coverage numbers with no source).
- Do not buy stars, downloads, or reviews. It is detectable and reversible.
- Do not write a description that does not match what the project does.
- Do not hide text or instructions intended only for crawlers or models.

## Checklist and Templates

- Review checklist: [../checklists/discoverability.md](../checklists/discoverability.md)
- Repo metadata template: [../templates/github/REPO_METADATA.md](../templates/github/REPO_METADATA.md)
- Keyword map template: [../templates/seo/keyword_map.md](../templates/seo/keyword_map.md)

## Evidence Examples

These bounded review cases explain decisions, not current defects in every
auditor revision:

| Observation | Decision and evidence boundary |
|---|---|
| Cargo virtual workspace or `homepage.workspace = true` | Inspect member manifests and inherited `[workspace.package]` values. A root without `[package]` is not proof of an unpublished package. |
| npm `private: true` or Cargo `publish = false` | Public registry checks are `not applicable` unless a separate public member is intended. Do not query private names or recommend publishing just for SEO. |
| Registry returns a same-name package | Check the exact name/version and declared repository association. A fuzzy hit, name match or matching repository field does not verify publisher identity or artifact provenance; record those separately if checked. |
| No custom GitHub social image | Verify the default card on the selected channel; record custom artwork as P2 polish. |
| README fixed on main, old package still has old metadata | Record both revisions. npm name/version pairs and crates.io versions cannot be overwritten; a source merge does not update old artifacts. Plan a new version only with publication authorization. |
| Search Console, repo settings or a probe is inaccessible | Record the date, attempted scope and permission/network limitation as `unverified` (or `blocked` if required for this launch). Do not record zero traffic, missing publication or success. |

Use the evidence summary in [proof.md](../projects/_template/proof.md) as the
single reference from readiness and metrics. Full external launch dogfooding
remains separate work requiring authorization; it is not a prerequisite for
finishing a documentation correction.

## Optional Local Subset Review

SEO Agent Suite is a separate checkout. From any directory inside a Shipwise
checkout, point `SEO_AGENT_SUITE_ROOT` at that checkout and pass both repository
roots explicitly:

```bash
export SEO_AGENT_SUITE_ROOT=/absolute/path/to/seo-agent-suite
TARGET_REPO_ROOT=/absolute/path/to/target-repo
SHIPWISE_ROOT="$(git rev-parse --show-toplevel)"
SEO_BASELINE="$SEO_AGENT_SUITE_ROOT/scripts/repo_seo_baseline.py"

if python3 "$SEO_BASELINE" --help | grep -q -- '--project-yaml'; then
  python3 "$SEO_BASELINE" \
    --root "$TARGET_REPO_ROOT" \
    --project-yaml "$SHIPWISE_ROOT/projects/<project>/project.yaml" \
    --json
else
  printf '%s\n' \
    'This SEO Agent Suite checkout lacks --project-yaml; use a supporting revision and rerun.' >&2
  false
fi
```

Record the Suite revision and check its available options. Do not treat an
`unrecognized arguments` failure as a completed review.

The emitted `shipwise.checks` compare a subset of the project record with local
repository files. Read their details and any recommendations in the actual
output; a check is not a launch decision. The command may also emit
live GitHub, registry, and site observations; those fields are time-bound
evidence, not deterministic gate results.

This subset does not run the complete Shipwise checklist, decide launch
readiness, or prove releases, indexing, rankings, search volume, backlinks, or
live SEO performance. Shipwise remains the planning and record layer. Record
the local check results, separately sourced live evidence, decisions, links, and
remaining blockers in the Shipwise project folder. Reference one dated report
from `proof.md` with the target source revision, observed published version,
collector revision, checked targets and skipped/unavailable checks. Do not
assume a private schema or copy the report into every planning file.

## Sources

- GitHub Topics: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics
- GitHub repository search: https://docs.github.com/en/search-github/searching-on-github/searching-for-repositories
- GitHub social preview: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview
- About READMEs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
- GitHub community profile: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/about-community-profiles-for-public-repositories
- GitHub Releases: https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases
- Google Search Essentials: https://developers.google.com/search/docs/essentials
- Canonical URLs: https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls
- Robots.txt behavior: https://developers.google.com/crawling/docs/robots-txt/robots-txt-spec
- Search Console metrics: https://support.google.com/webmasters/answer/7576553?hl=en
- Lab and field data: https://web.dev/articles/lab-and-field-data-differences
- npm package.json keywords: https://docs.npmjs.com/cli/v10/configuring-npm/package-json#keywords
- crates.io categories and keywords: https://doc.rust-lang.org/cargo/reference/manifest.html#the-categories-field
- PyPI classifiers: https://pypi.org/classifiers/
- Cargo workspace inheritance: https://doc.rust-lang.org/cargo/reference/workspaces.html
- Cargo publishing: https://doc.rust-lang.org/cargo/reference/publishing.html
- npm private packages: https://docs.npmjs.com/cli/v11/configuring-npm/package-json#private
- npm version immutability: https://docs.npmjs.com/cli/v11/commands/npm-publish
