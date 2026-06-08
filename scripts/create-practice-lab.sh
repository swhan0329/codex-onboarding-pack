#!/usr/bin/env bash
set -euo pipefail

target="${1:-codex-practice-lab}"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"
template_dir="$repo_root/practice-lab-template"

if [[ ! -d "$template_dir" ]]; then
  echo "Could not find practice-lab-template at: $template_dir" >&2
  exit 1
fi

if [[ -e "$target" ]]; then
  echo "Practice lab already exists: $target"
  exit 0
fi

mkdir -p "$target"
cp -R "$template_dir/." "$target/"
echo "Created practice lab: $target"
