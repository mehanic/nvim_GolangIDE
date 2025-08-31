local ls = require("luasnip") -- обязательно
local s = ls.snippet
local t = ls.text_node

return {

}

-- local ls = require("luasnip")
-- local s = ls.snippet
-- local t = ls.text_node
-- local i = ls.insert_node
-- local fmt = require("luasnip.extras.fmt").fmt

-- return {
--   -- Custom "golang2" snippet
  
-- -- {{ block "name" .pipeline }}
-- s("tmpl-block", {
--     t("{{ block \""), i(1, "name"), t("\" ."), i(2, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(0),
--   }),
--   -- description: {{ block "name" pipeline }}
  
--   -- {{ block "name" .pipeline }} ... {{ end }}
--   s("tmpl-blockend", {
--     t("{{ block \""), i(1, "name"), t("\" ."), i(2, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),
--   -- description: {{ block "name" pipeline }} ... {{ end }}
  
--   -- {{ break }}
--   s("tmpl-break", {
--     t("{{ break }}"),
--     t({ "", "" }), i(0),
--   }),
--   -- description: {{ break }}
  
--   -- {{ continue }}
--   s("tmpl-continue", {
--     t("{{ continue }}"),
--     t({ "", "" }), i(0),
--   }),
--   -- description: {{ continue }}
  
-- -- {{ define "name" }}
-- s("tmpl-define", {
--     t("{{ define \""), i(1, "name"), t("\" }}"),
--     t({ "", "\t" }), i(0),
--   }),
--   -- description: {{ define "name" }}
  
--   -- {{ define "name" }} ... {{ end }}
--   s("tmpl-defineend", {
--     t("{{ define \""), i(1, "name"), t("\" }}"),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),
--   -- description: {{ define "name" }} ... {{ end }}
  
--   -- {{ else }}
--   s("tmpl-else", {
--     t("{{ else }}"),
--     t({ "", "\t" }), i(0),
--   }),
--   -- description: {{ else }}
  
--   -- {{ else if (condition) }}
--   s("tmpl-elseif", {
--     t("{{ else if ("), i(1, "condition"), t(") }}"),
--     t({ "", "\t" }), i(0),
--   }),
--   -- description: {{ else if (condition) }}
  
--   -- {{ end }}
--   s("tmpl-end", {
--     t("{{ end }}"),
--   }),
--   -- description: {{ end }}
-- -- {{ if (condition) }}
-- s("tmpl-if", {
--     t("{{ if ("), i(1, "condition"), t(") }}"),
--   }),
--   -- description: {{ if (condition) }}
  
--   -- {{ if (condition) }} ... {{ end }}
--   s("tmpl-ifend", {
--     t("{{ if ("), i(1, "condition"), t(") }}"),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),
--   -- description: {{ if (condition) }} ... {{ end }}
  
--   -- {{ if (condition) }} ... {{ else }} ... {{ end }}
--   s("tmpl-ifelseend", {
--     t("{{ if ("), i(1, "condition"), t(") }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ else }}" }),
--     t({ "", "\t" }), i(0, "..."),
--     t({ "", "{{ end }}" }),
--   }),
--   -- description: {{ if (condition) }} ... {{ else }} ... {{ end }}
  
--   -- {{ partial "name" }}
--   s("tmpl-partial", {
--     t("{{ partial \""), i(1, "name"), t("\" }}"),
--     t({ "", "" }), i(0),
--   }),
--   -- description: {{ partial "name" }}
--   -- {{ .pipeline }}
-- s("tmpl-pipeline", {
--     t("{{ ."), i(1, "pipeline"), t(" }}"),
--   }),
--   -- description: {{ pipeline }}
  
--   -- {{ range .pipeline }}
--   s("tmpl-range", {
--     t("{{ range ."), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(0),
--   }),
--   -- description: {{ range pipeline }}
  
--   -- {{ range .pipeline }} ... {{ end }}
--   s("tmpl-rangeend", {
--     t("{{ range ."), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(0, "..."),
--     t({ "", "{{ end }}" }),
--   }),
--   -- description: {{ range pipeline }} ... {{ end }}
  
--   -- {{ template "name" .pipeline }}
--   s("tmpl-template", {
--     t("{{ template \""), i(1, "name"), t("\" ."), i(2, "pipeline"), t(" }}"),
--     t({ "", "" }), i(0),
--   }),
--   -- description: {{ template "name" pipeline }}
  
--   -- {{ with pipeline }}
--   s("tmpl-with", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--   }),
--   -- description: {{ with pipeline }}
  
--   -- {{ with pipeline }} ... {{ end }}
--   s("tmpl-withend", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ end }}" }),
--   }),
--   -- description: {{ with pipeline }} ... {{ end }}
  
--   -- {{ with pipeline }} ... {{ else }} ... {{ end }}
--   s("tmpl-withelseend", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ else }}" }),
--     t({ "", "\t" }), i(3, "..."),
--     t({ "", "{{ end }}" }),
--   }),
--   -- description: {{ with pipeline }} ... {{ else }} ... {{ end }}
  
--   -- {{ with pipeline }} ... {{ else with pipeline }} ... {{ end }}
-- -- {{ with pipeline }} ... {{ else with pipeline }} ... {{ end }}
-- -- {{ with pipeline }} ... {{ else with pipeline }} ... {{ end }}
-- s("tmpl-withelsepipeeend", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ else with " }), i(3, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(4, "..."),
--     t({ "", "{{ end }}" }),
--   }),
  
--   s("tmpl-for-loop", {
--     t("for i := 0; i < "), i(1, "n"), t("; i++ {"),
--     t({ "", "\tvar a int" }),
--     t({ "", "}" }),
--   }),

--   s("tmpl-for-range-loop", {
--     t("for _, val := range "), i(1, "arr"), t(" {"),
--     t({ "", "\t// Do something with val" }),
--     t({ "", "}" }),
--   }),

--   s("tmpl-switch-case", {
--     t("switch "), i(1, "value"), t(" {"),
--     t({ "", "\tcase 1:" }),
--     t({ "", "\t\t// Case 1" }),
--     t({ "", "\tcase 2:" }),
--     t({ "", "\t\t// Case 2" }),
--     t({ "", "\tdefault:" }),
--     t({ "", "\t\t// Default case" }),
--     t({ "", "}" }),
--   }),

--   s("tmpl-function", {
--     t("func "), i(1, "FunctionName"), t("("),
--     i(2, "arg1"), t(" "), i(3, "arg2"), t(") "),
--     t("{"),
--     t({ "", "\t// Function body" }),
--     t({ "", "}" }),
--   }),

--   s("tblock", {
--     t('{{ block "'), i(1, "name"), t('" .'), i(2, "pipeline"), t(" }}"),
--     t({ "", "" }),
--     i(0),
--   }),

--   s("tblockend", {
--     t('{{ block "'), i(1, "name"), t('" .'), i(2, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),

--   s("tbreak", {
--     t("{{ break }}"),
--     t({ "", "" }), i(0),
--   }),

--   s("tcontinue", {
--     t("{{ continue }}"),
--     t({ "", "" }), i(0),
--   }),

--   s("tdefine", {
--     t('{{ define "'), i(1, "name"), t('" }}'),
--     t({ "", "\t" }), i(0),
--   }),

--   s("tdefineend", {
--     t('{{ define "'), i(1, "name"), t('" }}'),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),

--   s("telse", {
--     t("{{ else }}"),
--     t({ "", "\t" }), i(0),
--   }),

--   s("telseif", {
--     t("{{ else if "), i(1, "condition"), t(" }}"),
--     t({ "", "\t" }), i(0),
--   }),

--   s("tend", {
--     t("{{ end }}"),
--   }),

--    s("tif", {
--     t("{{ if ("), i(1, "condition"), t(") }}"),
--     t({ "", "" }),
--     i(0),
--   }),

--   s("tifend", {
--     t("{{ if ("), i(1, "condition"), t(") }}"),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),

--   s("tifelseend", {
--     t("{{ if ("), i(1, "condition"), t(") }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ else }}" }),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),

--   s("tpartial", {
--     t("{{ partial \""), i(1, "name"), t("\" }}"),
--     t({ "", "" }), i(0),
--   }),

--   s("tpipeline", {
--     t("{{ ."), i(1, "pipeline"), t(" }}"),
--   }),

--   s("trange", {
--     t("{{ range ."), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(0),
--   }),

--   s("trangeend", {
--     t("{{ range ."), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(0),
--     t({ "", "{{ end }}" }),
--   }),

--   s("ttemplate", {
--     t("{{ template \""), i(1, "name"), t("\" ."), i(2, "pipeline"), t(" }}"),
--     t({ "", "" }), i(0),
--   }),

--   s("twith", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--     t({ "", "" }), i(0),
--   }),

--   s("twithend", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ end }}" }),
--   }),

--   s("twithelseend", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ else }}" }),
--     t({ "", "\t" }), i(3, "..."),
--     t({ "", "{{ end }}" }),
--   }),

--   s("twithelsepipeeend", {
--     t("{{ with "), i(1, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(2, "..."),
--     t({ "", "{{ else with " }), i(3, "pipeline"), t(" }}"),
--     t({ "", "\t" }), i(4, "..."),
--     t({ "", "{{ end }}" }),
--   }),

--   -- {{ . }} — текущие данные
--   s("dot", {
--     t("{{ . }}"),
--   }),

--   -- {{ .Field }} — поле структуры или ключ карты
--   s("field", {
--     t("{{ ."), i(1, "Field"), t(" }}"),
--   }),

--   -- {{ if condition }} ... {{ end }}
--   s("if", fmt([[
-- {{ if {} }}
--   {}
-- {{ end }}
-- ]], { i(1, "condition"), i(0) })),

--   -- {{ if condition }} ... {{ else }} ... {{ end }}
--   s("ifelse", fmt([[
-- {{ if {} }}
--   {}
-- {{ else }}
--   {}
-- {{ end }}
-- ]], { i(1, "condition"), i(2, "..."), i(0) })),

--   -- {{ range .Collection }} ... {{ end }}
--   s("range", fmt([[
-- {{ range .{} }}
--   {}
-- {{ end }}
-- ]], { i(1, "Collection"), i(0) })),

--   -- {{ with .Context }} ... {{ end }}
--   s("with", fmt([[
-- {{ with .{} }}
--   {}
-- {{ end }}
-- ]], { i(1, "Context"), i(0) })),

--   -- {{ partial "name" . }}
--   s("partial", fmt([[
-- {{ partial "{}" . }}
-- ]], { i(1, "partialName") })),

--   -- {{ block "name" . }}
--   s("block", fmt([[
-- {{ block "{}" . }}
--   {}
-- {{ end }}
-- ]], { i(1, "blockName"), i(0) })),

--   -- {{ else if condition }} (elseif)
--   s("elseif", fmt([[
-- {{ else if {} }}
--   {}
-- ]], { i(1, "condition"), i(0) })),

--   -- Пример простой переменной:
--   s("var", fmt([[
-- {{ {} }}
-- ]], { i(1, ".Variable") })),

--   s("print", fmt([[{{ {} | print }}]], { i(1, "\"output\"") })),

--   s("if", fmt([[
-- {{ if {} }}
--   {}
-- {{ end }}
-- ]], { i(1, "condition"), i(0, "// body") })),

-- s("ifelse", fmt([[
-- {{ if {} }}
--   {}
-- {{ else }}
--   {}
-- {{ end }}
-- ]], { i(1, "condition"), i(2, "// if-body"), i(0, "// else-body") })),

-- s("elseif", fmt([[
-- {{ if {} }}
--   {}
-- {{ else if {} }}
--   {}
-- {{ end }}
-- ]], { i(1, "cond1"), i(2, "// body1"), i(3, "cond2"), i(0, "// body2") })),


-- s("range", fmt([[
-- {{ range {} }}
--   {}
-- {{ end }}
-- ]], { i(1, ".Items"), i(0, "{{ . }}") })),

-- s("rangeelse", fmt([[
-- {{ range {} }}
--   {}
-- {{ else }}
--   {}
-- {{ end }}
-- ]], { i(1, ".Items"), i(2, "{{ . }}"), i(0, "// empty") })),

-- s("with", fmt([[
-- {{ with {} }}
--   {}
-- {{ end }}
-- ]], { i(1, ".Field"), i(0, "// body") })),

-- s("withelse", fmt([[
-- {{ with {} }}
--   {}
-- {{ else }}
--   {}
-- {{ end }}
-- ]], { i(1, ".Field"), i(2, "// with body"), i(0, "// else body") })),

-- s("define", fmt([[
-- {{ define "{}" }}
--   {}
-- {{ end }}
-- ]], { i(1, "templateName"), i(0, "// body") })),

-- s("template", fmt([[{{ template "{}" {} }}]], { i(1, "templateName"), i(2, ".") })),

-- s("block", fmt([[
-- {{ block "{}" {} }}
--   {}
-- {{ end }}
-- ]], { i(1, "blockName"), i(2, "."), i(0, "// body") })),


  
  
  
  
--   -- description: {{ with pipeline }} ... {{ else with pipeline }} ... {{ end }}
      




-- }