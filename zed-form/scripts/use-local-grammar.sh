#!/usr/bin/env bash
# Sets extension.toml to use the local tree-sitter-form checkout for development.
# Run this script once before opening Zed for local testing.
# To restore the release config: git checkout -- extension.toml
set -euo pipefail
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
EXT_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"
GRAMMAR_DIR="$(cd -- "$EXT_DIR/../../tree-sitter-form" && pwd)"

cat > "$EXT_DIR/extension.toml" <<TOML
id = "form"
name = "FORM"
version = "0.0.1"
schema_version = 1
authors = ["Simone"]
description = "FORM language support for Zed"
repository = "https://github.com/REPLACE_ME/zed-form"

[grammars.form]
repository = "file://$GRAMMAR_DIR"
rev = "main"
TOML

printf 'extension.toml updated to use local grammar: file://%s\n' "$GRAMMAR_DIR"
printf 'Restore with: git checkout -- extension.toml\n'
