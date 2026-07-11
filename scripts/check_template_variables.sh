#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
contract="$root/templates/VARIABLES.md"
actual="$(mktemp)"
documented="$(mktemp)"
trap 'rm -f "$actual" "$documented"' EXIT

LC_ALL=C grep -rhoIE --exclude=VARIABLES.md '\{\{[^{}]+\}\}' \
  "$root/templates" "$root/projects/_template" | LC_ALL=C sort -u >"$actual"
LC_ALL=C grep -oE '\{\{[^{}]+\}\}' "$contract" | LC_ALL=C sort -u >"$documented"

undocumented="$(comm -23 "$actual" "$documented")"
if [[ -n "$undocumented" ]]; then
  printf 'Undocumented template placeholders:\n%s\n' "$undocumented" >&2
  exit 1
fi

count="$(wc -l <"$actual" | tr -d '[:space:]')"
printf 'Template variable contract documents all %s placeholders.\n' "$count"
