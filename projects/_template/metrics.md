# Metrics

Reference [proof.md](proof.md) for the dated evidence report, target source
revision, observed published version and checked scope. Record source, retrieval
time, window and filters with each observation. Use `unverified` for uncollected
or inaccessible data, `not applicable` for unused channels, and 0 only when
actually measured. Do not substitute YAML defaults for missing observations.

## Baseline

| Metric | Value | Window / snapshot time | Source / filters | Status |
|---|---|---|---|---|
| GitHub stars | unknown |  |  | unverified |
| Forks | unknown |  |  | unverified |
| Downloads (package/version) | unknown |  |  | unverified |
| Docs/site traffic | unknown |  |  | unverified |
| Issues | unknown |  |  | unverified |
| Existing audience | unknown |  |  | unverified |

## Search Performance

Use the same search type, property, date window and filters when comparing
periods. Query and page rows may have different aggregation from property
totals; preserve the exported dimensions and note missing/anonymized queries.
No Search Console permission means `unverified`, not zero clicks or impressions.

| Window (start/end, timezone) | Source / property / filters | Query | Page | Impressions | Clicks | CTR | Retrieved at | Status |
|---|---|---|---|---|---|---|---|---|
|  |  |  |  | unknown | unknown | unknown |  | unverified |

CTR is clicks / impressions; if impressions are zero, record CTR as undefined.
Separate search traffic from referral/social traffic and GitHub search. A change
after launch alone does not establish that a topic, image or Release caused it.

## Performance Diagnostics

| Kind | Page / version | Date / window | Tool / context / source | Result | Status |
|---|---|---|---|---|---|
| Lighthouse lab run |  |  | device, throttling, tool version | unknown | unverified |
| Real-user field data |  |  | CrUX or named analytics source | unknown | unverified |

Lighthouse is a controlled lab measurement; field data describes real users.
Neither is proof of indexing, ranking or search traffic growth.

## Day 1

-

## Day 7

-

## Day 30

-

For each review, cite the comparable rows above, describe data gaps and record
the next action. Collect manually or link an export; no automatic sync is assumed.

## Sources

- Search Console metrics and dimensions: https://support.google.com/webmasters/answer/7576553?hl=en
- Lab and field data: https://web.dev/articles/lab-and-field-data-differences
