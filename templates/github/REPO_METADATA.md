# Repository Metadata

GitHub repository settings that are not files but are primary discoverability
surfaces. Fill these, then apply them in the repo settings UI or via `gh`.
Guidance: [docs/DISCOVERABILITY.md](../../docs/DISCOVERABILITY.md).

## About

```text
Name:        {{project_name}}
Description: {{one_sentence_with_primary_keyword}}
Homepage:    {{docs_or_landing_or_package_url}}
```

- Description is one sentence: what it is, for whom, primary keyword. No fake
  claims, no adjectives without a noun.

## Topics

5 to 20 topics, broad plus specific, all relevant. Use existing GitHub topics
where possible.

```text
{{primary_keyword}}, {{archetype_term}}, {{language_or_runtime}},
{{domain_term_1}}, {{domain_term_2}}, {{specific_feature_term}}
```

- Do not add unrelated popular tags.

## Social Preview

```text
Size:     1280x640 px
Carries:  project name + one-line value
File:     {{path_to_social_preview_image}}
```

- Upload under Settings -> Social preview. Without it, shared links render as a
  generic card.

## Community Health Files

Confirm each exists in the repo (completes the GitHub community profile and acts
as a trust signal):

- [ ] README.md
- [ ] LICENSE
- [ ] CONTRIBUTING.md
- [ ] CODE_OF_CONDUCT.md
- [ ] SECURITY.md
- [ ] .github/ISSUE_TEMPLATE/
- [ ] .github/PULL_REQUEST_TEMPLATE.md

## Apply via gh (optional)

```bash
gh repo edit {{owner}}/{{repo}} \
  --description "{{one_sentence_with_primary_keyword}}" \
  --homepage "{{docs_or_landing_or_package_url}}" \
  --add-topic "{{primary_keyword}}" \
  --add-topic "{{archetype_term}}"
```

- The social preview image cannot be set via `gh`; upload it in Settings.
