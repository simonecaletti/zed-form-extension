# FORM language support for Zed

This tarball contains two sibling projects:

- `zed-form/`: the Zed extension.
- `tree-sitter-form/`: a starter Tree-sitter grammar for FORM.

The extension is syntax-highlighting-only: no LSP, completion, diagnostics, or formatting yet.

## Local development

From the unpacked tarball root:

```bash
cd tree-sitter-form
npm install
npm run generate
npm test
cd ../zed-form
./scripts/use-local-grammar.sh
```

Then in Zed: **Extensions: Install Dev Extension**, and select the `zed-form` directory.

## Publishing flow

1. Put `tree-sitter-form` in its own Git repository.
2. Commit it and copy the commit SHA.
3. Edit `zed-form/extension.toml`:
   - replace the grammar `repository` with your real GitHub URL;
   - replace `rev` with the real commit SHA.
4. Put `zed-form` in a Git repository.
5. Test as a dev extension before publishing.

## FORM coverage

This grammar is intentionally permissive. It recognizes common FORM constructs:

- comments starting with `*`
- preprocessor lines beginning with `#`
- dot directives such as `.sort` and `.end`
- declarations such as `Symbols`, `CFunction`, `Vector`, `Index`
- transformation statements ending in `;`
- dollar variables, wildcards, strings, numbers, identifiers, and operators

It is meant to give useful highlighting in Zed, not to be a complete formal parser for FORM.
