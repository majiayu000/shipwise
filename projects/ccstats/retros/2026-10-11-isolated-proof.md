# Dogfood follow-up: current install and reproducible proof

- Date: 2026-10-11
- Tracking: [Shipwise #8](https://github.com/majiayu000/shipwise/issues/8)
- Result: `0.11.0` isolated Cargo install and actual CLI replay passed;
  a concrete X package is ready for review. The external launch is incomplete.

## Friction found and corrected

The historical demo invoked `today` against a fixed-date fixture, so replaying
it later could show no data. The [new proof](../assets/2026-10-11-cli-demo.md)
records the actual quickstart and also supplies a fixed-date replay command.
Its token fixture uses the documented inclusive input/output total (130);
cached/reasoning subsets must not be added again. Old captured evidence stays
unchanged rather than silently rewritten.

The launch notes did not clearly separate actual CLI output from real-user
usage. The current proof and PNG/GIF explicitly say synthetic input and actual
output. Runtime isolation uses an empty environment plus new HOME/Codex/XDG
directories; there was no reason to read private sessions to prepare this demo.
The visuals are labeled transcript renders, not simulated real-user screenshots.

The plan accumulated pending HN/Reddit choices even though a single suitable
channel is enough for the prepared package. The current plan now chooses X and
links three concrete posts with an attachment; other channels are deferred.
No new launch framework or automatic publisher was introduced.

The optional SEO command's 16 Shipwise checks pass, but its full exit is 1:
homepage and crate HTTP probes reject this host's non-public DNS resolution.
The record preserves that failure separately from successful public API reads
and does not bypass the URL guard or claim complete SEO validation.

These documentation corrections are included in this follow-up PR. Keep #8
open until a user-authorized publication has a real URL and genuine outcome
records. Day 7 feedback cannot be manufactured ahead of a launch.
