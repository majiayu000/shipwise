# Keyword Map

Map candidate user search terms to relevant project surfaces. Pick
terms in the user's words (the problem), not the project's internal vocabulary.
Guidance: [docs/DISCOVERABILITY.md](../../docs/DISCOVERABILITY.md).

## Tiers

| Tier | Count | Where it goes |
|---|---|---|
| Primary | 1-2 | About description, README introduction, descriptive heading if natural, package description if applicable |
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

- [ ] Primary terms used naturally in the description/introduction; exact H1
      placement is optional advice, not an indexing or readiness requirement.
- [ ] Secondary terms in topics and section headings.
- [ ] Long-tail phrases in docs titles or FAQ.
- [ ] Consistent project identity; different package/repo names are explicitly mapped.
- [ ] No keyword stuffing; every term reads naturally in context.

These counts and placements are planning suggestions, not platform minimums or
ranking guarantees. Record search effects with a source and window in `metrics.md`.
