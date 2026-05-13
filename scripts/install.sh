#!/usr/bin/env bash
set -euo pipefail

REPO="Tsumugii24/claude-typora-theme"
BRANCH="${CLAUDE_TYPORA_THEME_REF:-main}"

case "$(uname -s)" in
  Darwin*)
    THEME_DIR="${TYPORA_THEME_DIR:-$HOME/Library/Application Support/abnerworks.Typora/themes}"
    ;;
  Linux*)
    THEME_DIR="${TYPORA_THEME_DIR:-$HOME/.config/Typora/themes}"
    ;;
  MINGW*|MSYS*|CYGWIN*)
    THEME_DIR="${TYPORA_THEME_DIR:-$APPDATA/Typora/themes}"
    ;;
  *)
    echo "Unsupported platform. Set TYPORA_THEME_DIR manually." >&2
    exit 1
    ;;
esac

TMP_DIR="$(mktemp -d)"
cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

mkdir -p "$THEME_DIR"
git clone --depth 1 --branch "$BRANCH" "https://github.com/$REPO.git" "$TMP_DIR"

cp "$TMP_DIR/claude.css" "$THEME_DIR/"
cp "$TMP_DIR/claude-dark.css" "$THEME_DIR/"
rm -rf "$THEME_DIR/claude_fonts"
cp -R "$TMP_DIR/claude_fonts" "$THEME_DIR/"

echo "Installed Claude Typora theme to: $THEME_DIR"
echo "Restart Typora and select Claude or Claude Dark from the Themes menu."
