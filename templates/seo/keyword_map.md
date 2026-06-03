# Keyword Map

Map the terms users actually search to the surfaces that rank for them. Pick
terms in the user's words (the problem), not the project's internal vocabulary.
Guidance: [docs/DISCOVERABILITY.md](../../docs/DISCOVERABILITY.md).

## Tiers

| Tier | Count | Where it goes |
|---|---|---|
| Primary | 1-2 | Repo name area, About description, README H1, package name/description |
| Secondary | 3-6 | GitHub topics, README headings, package keywords/categories |
| Long-tail | as many as real | Docs page titles, FAQ entries, blog post titles |

## Fill

```text
Primary:
- {{high_intent_term_1}}
- {{high_intent_term_2}}

Secondary:
- {{related_term_1}}
- {{related_term_2}}
- {{related_term_3}}

Long-tail:
- {{specific_phrase_1}}
- {{specific_phrase_2}}
```

## Placement Check

- [ ] Primary keyword in About description and README H1/first paragraph.
- [ ] Secondary terms in topics and section headings.
- [ ] Long-tail phrases in docs titles or FAQ.
- [ ] Same canonical name/slug across GitHub, package, docs, social.
- [ ] No keyword stuffing; every term reads naturally in context.
