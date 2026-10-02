# Hacker News Source Guide

Hacker News is useful for technical feedback and discovery, but it has a strong culture against low-effort promotion.

## Official Source

- Show HN guidelines: https://news.ycombinator.com/showhn.html
- General submission and comment rules: https://news.ycombinator.com/newsguidelines.html

## Use When

Use Show HN when the project is something people can try:

- CLI/tool users can install and run.
- App users can open and use.
- Hardware has a video or detailed article.
- The creator is available to discuss.

Use a regular HN submission, not Show HN, for:

- Blog posts.
- Newsletters.
- Lists.
- Pure reading material.
- Benchmark reports or technical essays.

## Human Authorship Boundary

HN requires human-written submissions and comments; its general guidelines
prohibit generated or AI-edited text and automated posting. An agent may gather
verified facts, check eligibility, and list the points the maker should cover.
The maker must write the final title and comment personally and post manually.
Approval of an AI draft does not make that draft eligible for direct posting.

## Agent Checklist

- [ ] The project can be tried without unnecessary barriers.
- [ ] It is non-trivial.
- [ ] The maker worked on it personally.
- [ ] Title starts with `Show HN:` only if it qualifies.
- [ ] The maker personally wrote the final title and first comment; no generated
  or AI-edited text is submitted.
- [ ] First comment explains why it exists, how to try it, limitations, and what feedback is wanted.
- [ ] No request for upvotes or coordinated comments.

## Hard Rules

- Use `Show HN:` only for a tryable thing. Blog posts, lists, newsletters, and
  pure reading material use regular HN submission instead.
- New features and minor version bumps are generally not enough for Show HN; use
  it only for first launches or major overhauls.
- Do not ask friends, users, or communities to upvote or comment.
- Prepare the first comment before submission, including: why it exists, install
  or access path, current limitations, and the specific feedback wanted.

## Do Not

- Do not submit landing pages as Show HN.
- Do not submit unreadable-only material as Show HN.
- Do not post a minor version bump as Show HN unless it is a major overhaul.
- Do not ask friends to upvote or comment.

## Template

- `templates/platforms/hn_show_hn.md`
