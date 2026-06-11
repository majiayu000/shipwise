# Template System

The template system follows a 70/30 rule:

- 70% reusable core: positioning, proof, install path, demo, limitations, CTA.
- 30% platform adaptation: title, tone, length, visuals, timing, and community framing.

## Template Flow

```text
PROJECT_BRIEF.md
  -> ANNOUNCEMENT.md
  -> platform templates
  -> launch-plan.md
  -> retros update templates
```

## Core Variables

Use these names consistently:

```text
{{project_name}}
{{one_sentence}}
{{target_user}}
{{problem}}
{{solution}}
{{proof}}
{{demo_url}}
{{repo_url}}
{{install_command}}
{{quickstart_command}}
{{limitations}}
{{primary_cta}}
{{launch_date}}
```

## Template Files

- `projects/_template/project.yaml`
- `templates/core/PROJECT_BRIEF.md`
- `templates/core/ANNOUNCEMENT.md`
- `templates/github/RELEASE_NOTES.md`
- `templates/github/README_DISTRIBUTION_SECTION.md`
- `templates/platforms/x_thread.md`
- `templates/platforms/hn_show_hn.md`
- `templates/platforms/reddit_post.md`
- `templates/platforms/product_hunt.md`
- `templates/platforms/blog_post.md`
- `templates/platforms/chinese_community_post.md`

## Adaptation Rules

| Platform | Adaptation rule |
|---|---|
| GitHub README | Explain fast. Install and quickstart above deep details. |
| GitHub Release | Focus on changes, upgrade/install path, known limitations. |
| X | Lead with pain or surprising result. Show demo/proof quickly. |
| HN | Be direct, technical, humble, and available for comments. |
| Reddit | Match the subreddit. Ask for feedback, not votes. |
| Product Hunt | Productize the story. Use visuals, tagline, and maker comment. |
| Blog | Explain why it exists, how it works, and what was learned. |
| Chinese communities | Localize examples and show practical installation steps. |

## Template Update Rule

After each launch, update a template only when there is evidence:

- A repeated question means README/FAQ template is missing something.
- A repeated install error means distribution checklist is missing a verification step.
- A platform rejection or poor response means platform copy needs adjustment.
- A strong response to one asset means that asset should become a default requirement.
