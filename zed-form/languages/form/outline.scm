; Show Local/Global expression definitions in the outline.
(statement
  keyword: (statement_keyword) @context
  (#match? @context "^[Ll][Oo][Cc][Aa][Ll]$|^[Gg][Ll][Oo][Bb][Aa][Ll]$|^[Ll]$|^[Gg]$")
  body: (_) @name) @item

; Show all declarations (Symbols, Functions, etc.) in the outline.
(declaration
  keyword: (declaration_keyword) @context
  body: (_) @name) @item

; Show dot directives (.sort, .end, etc.) as outline markers.
(dot_directive
  name: (identifier) @name) @item

; Show preprocessor directives (#procedure, #define, etc.)
(preprocessor
  "#" @context
  name: (identifier) @name) @item
