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

Choose relevant topics for purpose, domain and language. GitHub allows at most
20 and has no minimum of 5. Use only applicable terms from the candidates below;
topic count is not a launch blocker.

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

- Optional P2 polish: upload under Settings -> Social preview if useful.
  Otherwise GitHub supplies a card with repo information and the owner's avatar.
  Preview the selected channel; do not assume missing artwork reduces clicks.

## Community Health Files

Verify the actual license and a usable help path as P0 checks. Review the other
files against the project's contribution/security process; this is not a
universal completeness gate. A support path need not require both CONTRIBUTING
and issue templates. Record `not applicable` with a reason where appropriate.

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
