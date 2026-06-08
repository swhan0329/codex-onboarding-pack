#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST_DIR="${HOME}/.agents/skills"
AGENTS_DIR="${HOME}/.agents"
SCRIPT_DEST_DIR="${AGENTS_DIR}/scripts"

mkdir -p "${DEST_DIR}"
mkdir -p "${SCRIPT_DEST_DIR}"

for skill in codex-start codex-core-coach codex-skill-builder; do
  rm -rf "${DEST_DIR}/${skill}"
  cp -R "${ROOT_DIR}/.agents/skills/${skill}" "${DEST_DIR}/${skill}"
  echo "Installed ${skill} -> ${DEST_DIR}/${skill}"
done

rm -rf "${AGENTS_DIR}/practice-lab-template"
cp -R "${ROOT_DIR}/practice-lab-template" "${AGENTS_DIR}/practice-lab-template"
cp "${ROOT_DIR}/scripts/create-practice-lab.sh" "${SCRIPT_DEST_DIR}/create-practice-lab.sh"
chmod +x "${SCRIPT_DEST_DIR}/create-practice-lab.sh"

echo "Installed practice lab template -> ${AGENTS_DIR}/practice-lab-template"
echo "Restart Codex if the new skills do not appear immediately."
