# FORM for Zed

Syntax highlighting for the [FORM](https://www.nikhef.nl/~form/) symbolic manipulation language.

## Features

- Syntax highlighting for `.frm`, `.prc`, `.inc`, `.h` files
- Case-insensitive keyword recognition (`if` / `If` / `IF` all work)
- Highlights: keywords, declarations, control flow, functions, dollar variables, operators, comments
- Bracket matching
- Outline view (Local/Global expressions, declarations, dot directives)

## Install as a dev extension (local development)

From the repository root:

```bash
# 1. Build the tree-sitter parser
cd tree-sitter-form
npm install
npm run generate
npm test          # verify all corpus tests pass

# 2. Point the Zed extension at the local grammar
cd ../zed-form
./scripts/use-local-grammar.sh
```

Then in Zed: **Extensions → Install Dev Extension** → select the `zed-form` directory.

To restore `extension.toml` after dev work:

```bash
git checkout -- extension.toml
```

## Publishing

Before publishing to the Zed extension marketplace:

1. Push `tree-sitter-form` to a public GitHub repository.
2. Edit `extension.toml`:
   - Set `[grammars.form] repository` to your GitHub URL.
   - Set `rev` to the exact commit SHA you want to pin.
