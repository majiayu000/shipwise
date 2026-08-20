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
   Verified 2026-08-20: GitHub Releases points at v0.5.0 while crates.io remains
   at v0.4.0. Hold this draft until they are aligned. The v0.4.0 install and
   ccstats codex today --no-cost quickstart were verified on 2026-08-13.
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
   Cursor requires explicit credentials and lacks project aggregation and
   5-hour billing blocks. Grok can fall back to estimated snapshot costs and
   also lacks 5-hour billing blocks.
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
