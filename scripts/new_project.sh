#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: $0 <project-name> [archetype]" >&2
  exit 2
fi

name="$1"
archetype="${2:-unknown}"

case "$name" in
  *[!a-zA-Z0-9._-]*|"")
    echo "Invalid project name: $name" >&2
    echo "Use letters, numbers, dot, underscore, or dash." >&2
    exit 2
    ;;
esac

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target="$root/projects/$name"

if [ -e "$target" ]; then
  echo "Project folder already exists: $target" >&2
  exit 1
fi

mkdir -p "$target"/{assets,copy,retros}
cp "$root/projects/_template/project.yaml" "$target/project.yaml"
cp "$root/projects/_template/positioning.md" "$target/positioning.md"
cp "$root/projects/_template/launch-plan.md" "$target/launch-plan.md"
cp "$root/projects/_template/metrics.md" "$target/metrics.md"
cp "$root/projects/_template/feedback.md" "$target/feedback.md"
cp "$root/projects/_template/links.md" "$target/links.md"

if command -v perl >/dev/null 2>&1; then
  perl -0pi -e "s/name: \"\"/name: \"$name\"/" "$target/project.yaml"
  perl -0pi -e "s/archetype: \"\"/archetype: \"$archetype\"/" "$target/project.yaml"
fi

echo "Created $target"
echo "Next: fill project.yaml, positioning.md, and launch-plan.md"
