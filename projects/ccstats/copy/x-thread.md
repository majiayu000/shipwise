# X Thread Draft

Status: draft only. Refreshed from `templates/platforms/x_thread.md` after
checking the [current X automation rules](https://help.x.com/en/rules-and-policies/x-automation)
on 2026-09-26. Post manually only after the account and final text are
approved. Each numbered text block is a separate proposed post.

1. Hook and link

   ```text
   ccstats v0.9.0 is a local-first CLI for token and cost analytics across 29 AI coding-agent data sources. It turns usage metadata into terminal reports and JSON/CSV. No ccstats account. https://github.com/majiayu000/ccstats
   ```

2. Demo

   ```text
   Demo: the released 0.9.0 binary rendered this terminal table from a synthetic Codex fixture. The token numbers are sample data, not user metrics: https://github.com/majiayu000/shipwise/blob/main/projects/ccstats/assets/2026-09-26-cli-demo.md
   ```

3. How to try

   ```text
   Try the CLI: cargo install ccstats --version 0.9.0 --locked
   Then run: ccstats today --source codex

   A clean install and real-log run passed. No private usage totals are shared in this thread.
   ```

4. Limitations

   ```text
   Cost caveats: Cursor uses its API with explicit credentials. Grok API-equivalent cost is not a subscription bill. Unknown costs remain unknown; estimates are labeled. Pricing refresh and currency conversion can use the network.
   ```

5. Feedback request

   ```text
   Which AI coding source or usage breakdown is missing from your workflow? Open an issue: https://github.com/majiayu000/ccstats/issues. Please do not attach raw session logs or credentials.
   ```

The demo link contains actual release-binary output over synthetic input. The
upstream README card has illustrative numbers and is not numeric proof.

Before posting:

- [ ] Confirm the account and final thread approval.
- [ ] Confirm that the demo link and any attached visual are labeled as sample
  data; do not attach the illustrative README card as numeric proof.
- [ ] Do not automate replies, DMs, reposts, or engagement loops.
- [ ] Log the final post URL in `../links.md`.
