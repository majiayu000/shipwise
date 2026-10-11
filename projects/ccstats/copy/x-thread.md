# X Thread Draft

Status: concrete review draft for one manual thread, prepared 2026-10-11 from
`templates/platforms/x_thread.md`. No account access, upload, or post was made.
The user still chooses the exact sending account and approves the text/asset.

Official [automation](https://help.x.com/en/rules-and-policies/x-automation)
and [authenticity](https://help.x.com/en/rules-and-policies/authenticity) rules
were checked on 2026-10-11. Keep this a single relevant announcement; do not
mass-post copies, automate unsolicited replies, or run engagement loops.

## Post 1 — attach the demo

```text
ccstats v0.11.0 turns AI coding-agent usage metadata into local token reports. I verified a fresh Cargo install and an isolated Codex replay. The demo uses synthetic input, not a user's usage or bill.
https://github.com/majiayu000/ccstats
```

Attach [2026-10-11-cli-demo.gif](../assets/2026-10-11-cli-demo.gif), or use the
[PNG](../assets/2026-10-11-cli-demo.png) for a static post. Both show actual
recorded output with a synthetic-input label; their presentation is rendered,
not a screen recording. Use the [provided alt text](../assets/2026-10-11-cli-demo.md).

## Post 2 — try it

```text
Try the pinned CLI:
cargo install ccstats --version 0.11.0 --locked
ccstats today --source codex --no-cost --offline --timezone UTC

This reads your local Codex usage. Our attached example instead used one isolated synthetic fixture: 130 tokens, with no private logs.
```

## Post 3 — boundaries and feedback

```text
The demo tests one controlled Codex path, not every data source. Cost estimates are reference values, not subscription invoices.

Which source or breakdown is missing from your workflow? Open an issue without raw logs or credentials:
https://github.com/majiayu000/ccstats/issues
```

## Review record

- [x] Current release/crate version and MIT license checked.
- [x] Install and the shown synthetic-input replay actually ran successfully.
- [x] Text has no invented adoption, cost-saving, or performance claims.
- [x] Output and assets inspected; synthetic data is visibly disclosed.
- [x] Each proposed post is below 280 characters even before URL shortening.
- [ ] Confirm the exact X account and approve these three posts and attachment.
- [ ] After an authorized send, log the real post URL in `../links.md`.
- [ ] Start Day 1 / Day 7 / Day 30 outcome collection after posting.

The install used a new root with existing Cargo dependency caches available.
It did not read real Codex sessions. The full SEO baseline still exits 1 on
this host's homepage/crate DNS guard, while its 16 local Shipwise checks pass.
These facts are detailed in the [readiness report](../readiness-report.md).
