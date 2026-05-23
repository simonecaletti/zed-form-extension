# FORM language support for Zed

Syntax highlighting and snippets for the [FORM](https://www.nikhef.nl/~form/) symbolic manipulation language.

## Fresh installation

### Requirements

- [Zed](https://zed.dev) editor
- Git

### Steps

1. Clone the extension repository:

   ```bash
   git clone https://github.com/simonecaletti/zed-form-extension
   ```

2. Open Zed and run the command **Extensions: Install Dev Extension**
   (`Cmd+Shift+P` → type "dev extension").

3. Select the `zed-form` directory inside the cloned repository.

4. Zed will compile the grammar and activate the extension automatically.
   Open any `.frm`, `.prc`, or `.inc` file to verify highlighting is active.

> **Note:** Zed downloads the tree-sitter grammar source from GitHub and
> compiles it locally on first install. An internet connection is required
> the first time.

## What the extension provides

| Feature | Details |
|---|---|
| Syntax highlighting | Keywords, built-in functions (`g_`, `d_`, `trace4`, …), constants (`i_`, `pi_`, …), pattern-match sets (`int_`, `pos_`, …), comments, preprocessor directives, dollar variables, wildcards |
| Snippets | Common constructs: `#procedure`, `if`/`endif`, `repeat`, `do`, `argument`, `Local`, `id`, `Symbol`, `#call`, `#define`, `#ifdef`, and more — triggered by typing the keyword and pressing Tab |
| File types | `.frm`, `.prc`, `.inc`, `.h` |
| Comment toggle | `* ` (Zed's line-comment command uses this prefix) |

## Local development

```bash
# Build and test the grammar
cd tree-sitter-form
npm install
npm run generate
npm test

# Point the extension at your local grammar (optional)
cd ../zed-form
./scripts/use-local-grammar.sh
```

Then in Zed: **Extensions: Install Dev Extension** → select the `zed-form` directory.

## Publishing flow

1. Push `tree-sitter-form` to its own public GitHub repository.
2. Copy the commit SHA of the version you want to release.
3. Edit `zed-form/extension.toml`:
   - set `repository` under `[grammars.form]` to the GitHub URL of `tree-sitter-form`;
   - set `rev` to the commit SHA.
4. Push `zed-form` to its own public GitHub repository.
5. Submit to the [Zed extension registry](https://github.com/zed-industries/extensions).
