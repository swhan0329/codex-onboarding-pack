#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST_DIR="${HOME}/.agents/skills"

mkdir -p "${DEST_DIR}"

for skill in codex-camp-start codex-day1-core codex-day2-skills; do
  rm -rf "${DEST_DIR}/${skill}"
  cp -R "${ROOT_DIR}/.agents/skills/${skill}" "${DEST_DIR}/${skill}"
  echo "Installed ${skill} -> ${DEST_DIR}/${skill}"
done

echo "Restart Codex if the new skills do not appear immediately."
