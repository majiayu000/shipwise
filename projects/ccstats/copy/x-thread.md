# X Thread Draft

Status: draft only. Filled from `templates/platforms/x_thread.md` after reading
`docs/platforms/x.md` on 2026-08-13.

1. Hook:

   ```text
   My AI coding usage was split across Claude Code, OpenAI Codex, Cursor, Grok,
   and Kimi Code local data.
   ```

2. What it is:

   ```text
   I built ccstats, a fast CLI for token and cost usage analytics across Claude
   Code, OpenAI Codex, Cursor, Grok, and Kimi Code logs.
   ```

3. Demo:

   ```text
   Attach a sanitized terminal capture from the verified quickstart before
   approval. The README card contains illustrative data and is not proof.
   ```

4. Proof:

   ```text
   Verified 2026-08-13: crates.io and GitHub Releases both point at v0.4.0,
   and a clean temporary cargo install plus ccstats codex today --no-cost ran.
   ```

5. How to try:

   ```bash
   cargo install ccstats --version 0.4.0 --locked
   ```

6. Why it is different:

   ```text
   It reads local usage sources and summarizes usage by day, project, session,
   and model instead of forcing a manual pass across separate tool logs.
   ```

7. Limitations:

   ```text
   Cursor support is experimental; Grok reports local context-token snapshots,
   not exact provider billable usage.
   ```

8. CTA:

   ```text
   Try it here: https://github.com/majiayu000/ccstats. Feedback I want: which
   usage breakdown is missing from your workflow?
   ```

Before posting:

- Confirm the posting account and final copy approval.
- Do not automate replies, DMs, reposts, or engagement loops.
- Log the final URL in `../links.md`.
