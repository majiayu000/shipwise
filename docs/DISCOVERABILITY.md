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

| Surface | Ranking signal that matters most |
|---|---|
| GitHub search and topics | Repo name, description, topics, README text, stars, recency |
| Web search (Google/Bing) | README headings and first paragraph, docs titles, backlinks |
| Package registry search | Package name match, description, keywords, download count |
| Awesome-lists and aggregators | Inclusion via PR, clear one-line value |
| Social and community | Title and first line of the post, demo asset |
| LLM / agent retrieval | Accurate package metadata, clear README structure, real descriptions |

## GitHub Repository Design

The repo page is both a ranking surface and a conversion surface. Google indexes
it, GitHub search ranks it, and a human or agent decides in seconds.

### Repo name

- Short, lowercase, hyphen-or-no-separator, memorable.
- Prefer a name that hints at the function or is easy to remember; avoid generic
  words that collide with thousands of repos.
- Keep the same canonical slug across GitHub, package registry, docs, and social.

### About / description

- One sentence: what it is, for whom, and the primary keyword users search.
- This is the single most reused string. It appears in GitHub search results,
  Google snippets, social cards, and the repo sidebar.
- No emoji-only descriptions, no marketing adjectives without a noun.

### Topics

- Set 5 to 20 topics. Mix one or two broad terms with several specific ones.
- Use real, existing GitHub topics where possible; they connect the repo to
  topic pages and Explore.
- Topics are a primary GitHub search signal. An empty topics list is a
  self-inflicted discoverability bug.

### Homepage URL

- Set the repository homepage field to the docs site, landing page, or package
  page. It adds a link surface and a click target.

### README as ranking and conversion surface

- The H1 should match the project name plus its primary keyword.
- The first paragraph must state what it is, who it is for, and the search term a
  user would type. Search engines weight the first screen heavily.
- Use descriptive section headings (`Installation`, `Quickstart`, `Use cases`).
  GitHub and Google index headings; vague headings waste the signal.
- Keep the install command and a real demo above the fold.

### Social preview image

- Set a 1280x640 social preview image in repository settings. Without it, shared
  links render as a generic card and lose clicks.
- The image should carry the name and one-line value, not decoration only.

### Releases

- Published releases are indexed and give a recency signal. A repo with recent
  releases reads as alive; a stale repo reads as abandoned.

### Community health files

- `LICENSE`, `README`, `CONTRIBUTING`, `CODE_OF_CONDUCT`, `SECURITY`, and issue
  templates complete the GitHub community profile.
- These are trust signals to humans and a completeness signal to GitHub. A
  missing license also blocks adoption by anyone with a compliance process.

## Search Engine SEO

GitHub repo pages and docs sites are both indexable. Design for the crawler.

### For the repo page

- The README first paragraph and headings are the main on-page text. Put the
  user's search terms there in natural language.
- Backlinks are the real ranking lever: links from Hacker News, Reddit, blog
  posts, newsletters, and awesome-lists move the repo up far more than on-page
  tweaks. Earn them through launches, not link schemes.

### For a docs site

- Unique `<title>` and meta description per page, each containing the page topic.
- One H1 per page; descriptive, slugified URLs (`/guide/install`, not `/p?id=3`).
- Generate `sitemap.xml` and a sane `robots.txt`. Confirm pages are indexable
  (no accidental `noindex`).
- Content must render without client-side JS where possible, or be
  pre-rendered; JS-only content indexes poorly.
- Internal links between pages spread ranking and help crawlers find content.
- Fast load and mobile layout are ranking factors.

### Canonical and syndication

- When the same article is posted on a blog and a syndication platform
  (DEV, Medium, Hashnode), set the canonical URL to one source so duplicate
  copies do not dilute each other.

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

Registry search ranks mostly on name match, description, keywords, and download
count. Fill metadata as a discoverability surface, not an afterthought. See
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

- Gate checklist: [../checklists/discoverability.md](../checklists/discoverability.md)
- Repo metadata template: [../templates/github/REPO_METADATA.md](../templates/github/REPO_METADATA.md)
- Keyword map template: [../templates/seo/keyword_map.md](../templates/seo/keyword_map.md)

## Sources

- GitHub Topics: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics
- GitHub About / repo metadata: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-repository-languages
- GitHub social preview: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/customizing-your-repositorys-social-media-preview
- About READMEs: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
- GitHub community profile: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/about-community-profiles-for-public-repositories
- Google Search Essentials: https://developers.google.com/search/docs/essentials
- Canonical URLs: https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls
- npm package.json keywords: https://docs.npmjs.com/cli/v10/configuring-npm/package-json#keywords
- crates.io categories and keywords: https://doc.rust-lang.org/cargo/reference/manifest.html#the-categories-field
- PyPI classifiers: https://pypi.org/classifiers/
