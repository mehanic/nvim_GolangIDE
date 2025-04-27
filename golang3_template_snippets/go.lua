-- should check  to improve and configure

local ls = require'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("gotmpl", {

  -- IF block
  s("if", fmt("{{ if .{} }}\n\t{}\n{{ end }}", { i(1, "Condition"), i(2) })),

  -- IF ELSE block
  s("ifelse", fmt("{{ if .{} }}\n\t{}\n{{ else }}\n\t{}\n{{ end }}", { i(1, "Condition"), i(2), i(3) })),

  -- RANGE loop
  s("range", fmt("{{ range .{} }}\n\t{}\n{{ end }}", { i(1, "Items"), i(2) })),

  -- RANGE with else
  s("rangeelse", fmt("{{ range .{} }}\n\t{}\n{{ else }}\n\t{}\n{{ end }}", { i(1, "Items"), i(2), i(3) })),

  -- Template call
  s("template", fmt("{{ template \"{}\" . }}", { i(1, "template_name") })),

  -- Define a template
  s("define", fmt("{{ define \"{}\" }}\n\t{}\n{{ end }}", { i(1, "template_name"), i(2) })),

  -- Block
  s("block", fmt("{{ block \"{}\" . }}\n\t{}\n{{ end }}", { i(1, "block_name"), i(2) })),

  -- With
  s("with", fmt("{{ with .{} }}\n\t{}\n{{ end }}", { i(1, "Field"), i(2) })),

  -- Comment
  s("comment", fmt("{{/* {} */}}", { i(1, "comment") })),

  -- Print a variable
  s("var", fmt("{{ .{} }}", { i(1, "Variable") })),

  -- Comparison
  s("eq", fmt("{{ if eq .{} {} }}\n\t{}\n{{ end }}", { i(1, "Var"), i(2, "Value"), i(3) })),

  -- Not equal
  s("ne", fmt("{{ if ne .{} {} }}\n\t{}\n{{ end }}", { i(1, "Var"), i(2, "Value"), i(3) })),

  -- Greater than
  s("gt", fmt("{{ if gt .{} {} }}\n\t{}\n{{ end }}", { i(1, "Var"), i(2, "Value"), i(3) })),

  -- Less than
  s("lt", fmt("{{ if lt .{} {} }}\n\t{}\n{{ end }}", { i(1, "Var"), i(2, "Value"), i(3) })),

  -- And operator
  s("and", fmt("{{ if and .{} .{} }}\n\t{}\n{{ end }}", { i(1, "Cond1"), i(2, "Cond2"), i(3) })),

  -- Or operator
  s("or", fmt("{{ if or .{} .{} }}\n\t{}\n{{ end }}", { i(1, "Cond1"), i(2, "Cond2"), i(3) })),

  -- Index function
  s("index", fmt("{{ index .{} {} }}", { i(1, "Map"), i(2, "Key") })),

  -- Length function
  s("len", fmt("{{ len .{} }}", { i(1, "Collection") })),

  -- Slice function
  s("slice", fmt("{{ slice .{} {} {} }}", { i(1, "Array"), i(2, "Start"), i(3, "End") })),

  -- Dict creation
  s("dict", fmt("{{ dict \"{}\" .{} \"{}\" .{} }}", { i(1, "Key1"), i(2, "Val1"), i(3, "Key2"), i(4, "Val2") })),

  -- tpl function (evaluate templates inside templates)
  s("tpl", fmt("{{ tpl .{} . }}", { i(1, "TemplateString") })),

  -- required function (throw error if value is missing)
  s("required", fmt("{{ required \"{}\" .{} }}", { i(1, "Error message"), i(2, "Field") })),

  -- default function (default value if field missing)
  s("default", fmt("{{ default \"{}\" .{} }}", { i(1, "DefaultValue"), i(2, "Field") })),

  -- toYaml function (convert object to YAML)
  s("toyaml", fmt("{{ toYaml .{} | nindent {} }}", { i(1, "Object"), i(2, "Indentation") })),

  -- include template
  s("include", fmt("{{ include \"{}\" . }}", { i(1, "template_name") })),

  -- quote string
  s("quote", fmt("{{ quote .{} }}", { i(1, "Value") })),

  -- upper case
  s("upper", fmt("{{ upper .{} }}", { i(1, "String") })),

  -- lower case
  s("lower", fmt("{{ lower .{} }}", { i(1, "String") })),

  -- title case
  s("title", fmt("{{ title .{} }}", { i(1, "String") })),

  -- join list
  s("join", fmt("{{ join \"{}\" .{} }}", { i(1, "Separator"), i(2, "List") })),

  -- split string
  s("split", fmt("{{ split \"{}\" .{} }}", { i(1, "Separator"), i(2, "String") })),

  -- printf
  s("printf", fmt("{{ printf \"{}\" .{} }}", { i(1, "FormatString"), i(2, "Value") })),

  -- regexMatch
  s("regexmatch", fmt("{{ regexMatch \"{}\" .{} }}", { i(1, "Regex"), i(2, "String") })),

  -- regexReplaceAll
  s("regexreplace", fmt("{{ regexReplaceAll \"{}\" \"{}\" .{} }}", { i(1, "Regex"), i(2, "ReplaceWith"), i(3, "Input") })),

  -- date format
  s("date", fmt("{{ date \"{}\" .{} }}", { i(1, "Format (e.g. 2006-01-02)"), i(2, "Timestamp") })),

  -- pluck function
  s("pluck", fmt("{{ pluck \"{}\" .{} }}", { i(1, "FieldName"), i(2, "List") })),

  -- hasKey
  s("haskey", fmt("{{ hasKey .{} \"{}\" }}", { i(1, "Map"), i(2, "Key") })),

  -- ternary operator
  s("ternary", fmt("{{ ternary \"{}\" \"{}\" .{} }}", { i(1, "TrueValue"), i(2, "FalseValue"), i(3, "Condition") })),

  -- block scope
s("block", fmt("{{ block \"{}\" . }}\n\t{}\n{{ end }}", { i(1, "block_name"), i(2, "content") })),

-- with new context
s("with", fmt("{{ with .{} }}\n\t{}\n{{ end }}", { i(1, "Field"), i(2, "content") })),

-- create dictionary
s("dict", fmt("{{ dict \"{}\" .{} \"{}\" .{} }}", { i(1, "key1"), i(2, "val1"), i(3, "key2"), i(4, "val2") })),

-- create list
s("list", fmt("{{ list .{} .{} .{} }}", { i(1, "val1"), i(2, "val2"), i(3, "val3") })),

-- get first item
s("first", fmt("{{ first .{} }}", { i(1, "List") })),

-- get last item
s("last", fmt("{{ last .{} }}", { i(1, "List") })),

-- check if string contains
s("contains", fmt("{{ contains \"{}\" .{} }}", { i(1, "substr"), i(2, "string") })),

-- trim suffix from string
s("trimSuffix", fmt("{{ trimSuffix \"{}\" .{} }}", { i(1, "suffix"), i(2, "string") })),

-- trim prefix from string
s("trimPrefix", fmt("{{ trimPrefix \"{}\" .{} }}", { i(1, "prefix"), i(2, "string") })),

-- repeat string
s("repeat", fmt("{{ repeat {} \"{}\" }}", { i(1, "n"), i(2, "string") })),

-- slice list
s("slice", fmt("{{ slice .{} {} {} }}", { i(1, "list"), i(2, "start"), i(3, "end") })),

-- get length
s("len", fmt("{{ len .{} }}", { i(1, "object") })),

-- check if empty
s("empty", fmt("{{ empty .{} }}", { i(1, "object") })),

-- fallback value
s("coalesce", fmt("{{ coalesce .{} .{} }}", { i(1, "primary"), i(2, "fallback") })),

-- concatenate strings
s("cat", fmt("{{ cat .{} .{} }}", { i(1, "string1"), i(2, "string2") })),

-- nindent string
s("nindent", fmt("{{ nindent {} .{} }}", { i(1, "spaces"), i(2, "string") })),

-- indent string
s("indent", fmt("{{ indent {} .{} }}", { i(1, "spaces"), i(2, "string") })),

-- get type of value
s("typeOf", fmt("{{ typeOf .{} }}", { i(1, "object") })),

-- deep copy object
s("deepCopy", fmt("{{ deepCopy .{} }}", { i(1, "object") })),


})
