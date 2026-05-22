; Indent body of If/Repeat/Do/While/Switch/Argument blocks.
(statement
  keyword: (control_keyword) @indent
  (#match? @indent "^[Ii][Ff]$|^[Rr][Ee][Pp][Ee][Aa][Tt]$|^[Dd][Oo]$|^[Ww][Hh][Ii][Ll][Ee]$|^[Ss][Ww][Ii][Tt][Cc][Hh]$|^[Cc][Aa][Ss][Ee]$|^[Aa][Rr][Gg][Uu][Mm][Ee][Nn][Tt]$"))

(statement
  keyword: (control_keyword) @outdent
  (#match? @outdent "^[Ee][Nn][Dd][Ii][Ff]$|^[Ee][Nn][Dd][Rr][Ee][Pp][Ee][Aa][Tt]$|^[Ee][Nn][Dd][Dd][Oo]$|^[Ee][Nn][Dd][Ww][Hh][Ii][Ll][Ee]$|^[Ee][Nn][Dd][Ss][Ww][Ii][Tt][Cc][Hh]$|^[Ee][Ll][Ss][Ee]$|^[Ee][Nn][Dd][Aa][Rr][Gg][Uu][Mm][Ee][Nn][Tt]$"))
