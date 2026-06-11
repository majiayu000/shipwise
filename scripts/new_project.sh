#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: $0 <project-name> [archetype]" >&2
  exit 2
fi

name="$1"
archetype="${2:-unknown}"
valid_archetypes="cli-tool library-sdk ai-workflow framework-guardrail registry-dataset app-ui writeup unknown"

case "$name" in
  *[!a-zA-Z0-9._-]*|"")
    echo "Invalid project name: $name" >&2
    echo "Use letters, numbers, dot, underscore, or dash." >&2
    exit 2
    ;;
esac

case " $valid_archetypes " in
  *" $archetype "*) ;;
  *)
    echo "Unknown archetype: $archetype" >&2
    echo "Valid archetypes: $valid_archetypes" >&2
    exit 2
    ;;
esac

if ! command -v perl >/dev/null 2>&1; then
  echo "perl not found: cannot fill name/archetype in project.yaml" >&2
  exit 1
fi

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target="$root/projects/$name"

if [ -e "$target" ]; then
  echo "Project folder already exists: $target" >&2
  exit 1
fi

mkdir -p "$target"
cp -R "$root/projects/_template/." "$target/"
mkdir -p "$target"/{assets,copy,retros}

perl -0pi -e "s/name: \"\"/name: \"$name\"/" "$target/project.yaml"
perl -0pi -e "s/archetype: \"\"/archetype: \"$archetype\"/" "$target/project.yaml"

echo "Created $target"
echo "Next: fill project.yaml, positioning.md, launch-plan.md, and signals.md"
