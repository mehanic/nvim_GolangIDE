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
-- local rep = require("luasnip.extras").rep
-- local c = ls.choice_node
-- local sn = ls.snippet_node

-- return {

--     s("template_tag", {  -- snippet name: template_tag (single %)
--     t("{% "),
--     i(1),
--     t(" %}"),
--   }),

--   s("template_block", {  -- snippet name: template_block (double %%)
--     t("{% "),
--     i(1, "tag_name"),
--     t(" %}"),
--     t({"", ""}),
--     i(0),
--     t({"", "{% end"}),
--     rep(1),
--     t(" %}"),
--   }),

--   s("template_var", {  -- snippet name: template_var (single {)
--     t("{{ "),
--     i(1),
--     t(" }}"),
--     t({"", "# Template Tags"}),
--   }),

--   s("autoescape_block", {  -- snippet name: autoescape_block
--     t("{% autoescape "),
--     i(1, "off"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endautoescape %}"}),
--   }),

--   s("block_block", {  -- snippet name: block_block
--     t("{% block "),
--     i(1),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endblock %}"}),
--   }),

--   s("comment_inline", {  -- snippet name: comment_inline (hash #)
--     t("{# "),
--     i(0, "comment"),
--     t(" #}"),
--   }),

--   s("comment_block", {  -- snippet name: comment_block
--     t("{% comment %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endcomment %}"}),
--   }),

--   s("cycle_tag", {  -- snippet name: cycle_tag
--     t("{% cycle "),
--     i(1, "val1"),
--     t(" "),
--     i(2, "val2"),
--     t(" "),
--     i(3, "as "),
--     i(4),
--     t(" %}"),
--   }),

--   s("debug_tag", {  -- snippet name: debug_tag
--     t("{% debug %}"),
--   }),

--   s("extends_tag", {  -- snippet name: extends_tag
--     t('{% extends "'),
--     i(0, "base.html"),
--     t('" %}'),
--   }),

--   s("filter_block", {  -- snippet name: filter_block
--     t("{% filter "),
--     i(1),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endfilter %}"}),
--   }),

--   s("firstof_tag", {  -- snippet name: firstof_tag
--     t("{% firstof "),
--     i(1),
--     t(" %}"),
--   }),

--   s("for_block", {  -- snippet name: for_block
--     t("{% for "),
--     i(1),
--     t(" in "),
--     i(2),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endfor %}"}),
--   }),

--   s("empty_tag", {  -- snippet name: empty_tag
--     t("{% empty %}"),
--     t({"", "\t"}),
--     i(0),
--   }),

--   s("if_block", {  -- snippet name: if_block
--     t("{% if "),
--     i(1),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endif %}"}),
--   }),

--    s("else_tag", {  -- snippet name: else_tag
--     t("{% else %}"),
--     t({"", "\t"}),
--     i(1),
--   }),

--   s("elif_tag", {  -- snippet name: elif_tag
--     t("{% elif "),
--     i(1),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--   }),

--   s("ifchanged_tag", {  -- snippet name: ifchanged_tag
--     t("{% ifchanged %}"),
--     i(1),
--     t("{% endifchanged %}"),
--   }),

--   s("ifequal_block", {  -- snippet name: ifequal_block
--     t("{% ifequal "),
--     i(1),
--     t(" "),
--     i(2),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endifequal %}"}),
--   }),

--   s("ifnotequal_block", {  -- snippet name: ifnotequal_block
--     t("{% ifnotequal "),
--     i(1),
--     t(" "),
--     i(2),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endifnotequal %}"}),
--   }),

--   s("include_tag", {  -- snippet name: include_tag
--     t('{% include "'),
--     i(0),
--     t('" %}'),
--   }),

--   s("load_tag", {  -- snippet name: load_tag
--     t("{% load "),
--     i(0),
--     t(" %}"),
--   }),

--   s("now_tag", { -- snippet name: now_tag
--     t('{% now "'),
--     i(0, "jS F Y H:i"),
--     t('" %}'),
--   }),

--   s("regroup_tag", { -- snippet name: regroup_tag
--     t("{% regroup "),
--     i(1),
--     t(" by "),
--     i(2),
--     t(" as "),
--     i(0),
--     t(" %}"),
--   }),

--   s("spaceless_block", { -- snippet name: spaceless_block
--     t("{% spaceless %}"),
--     i(0),
--     t("{% endspaceless %}"),
--   }),

--   s("ssi_tag", { -- snippet name: ssi_tag
--     t("{% ssi "),
--     i(0),
--     t(" %}"),
--   }),

--   s("trans_block", { -- snippet name: trans_block
--     t("{% trans %}"),
--     i(0),
--     t("{% endtrans %}"),
--   }),

--   s("url_tag", { -- snippet name: url_tag
--     t("{% url "),
--     i(1),
--     t(" as "),
--     i(0),
--     t(" %}"),
--   }),

--   s("widthratio_tag", { -- snippet name: widthratio_tag
--     t("{% widthratio "),
--     i(1, "this_value"),
--     t(" "),
--     i(2, "max_value"),
--     t(" "),
--     i(0, "100"),
--     t(" %}"),
--   }),

--   s("with_block", { -- snippet name: with_block
--     t("{% with "),
--     i(1),
--     t(" as "),
--     i(2),
--     t(" %}"),
--     t({"", "\t"}),
--     i(0),
--     t({"", "{% endwith %}"}),
--   }),

--   s("add", {
--     t('add:"'),
--     i(0),
--     t('"'),
--   }),

--   s("center", {
--     t('center:"'),
--     i(0),
--     t('"'),
--   }),

--   s("cut", {
--     t('cut:"'),
--     i(0),
--     t('"'),
--   }),

--   s("date", {
--     t('date:"'),
--     i(0),
--     t('"'),
--   }),

--   s("default", {
--     t('default:"'),
--     i(0),
--     t('"'),
--   }),

--   s("defaultifnone", {
--     t('default_if_none:"'),
--     i(0),
--     t('"'),
--   }),

--   s("dictsort", {
--     t('dictsort:"'),
--     i(0),
--     t('"'),
--   }),

--   s("dictsortrev", {
--     t('dictsortreversed:"'),
--     i(0),
--     t('"'),
--   }),

--   s("divisibleby", {
--     t('divisibleby:"'),
--     i(0),
--     t('"'),
--   }),

--   s("floatformat", {
--     t('floatformat:"'),
--     i(0),
--     t('"'),
--   }),

--   s("getdigit", {
--     t('get_digit:"'),
--     i(0),
--     t('"'),
--   }),

--   s("join", {
--     t('join:"'),
--     i(0),
--     t('"'),
--   }),

--   s("lengthis", {
--     t('length_is:"'),
--     i(0),
--     t('"'),
--   }),

--   s("pluralize", {
--     t('pluralize:"'),
--     i(0),
--     t('"'),
--   }),

--   s("removetags", {
--     t('removetags:"'),
--     i(0),
--     t('"'),
--   }),

--   s("slice", {
--     t('slice:"'),
--     i(0),
--     t('"'),
--   }),

--   s("stringformat", {
--     t('stringformat:"'),
--     i(0),
--     t('"'),
--   }),

--   s("time", {
--     t('time:"'),
--     i(0),
--     t('"'),
--   }),

--   s("truncatewords", {
--     t('truncatewords:'),
--     i(0),
--   }),

--   s("truncatewordshtml", {
--     t('truncatewords_html:'),
--     i(0),
--   }),

--   s("urlizetrunc", {
--     t('urlizetrunc:'),
--     i(0),
--   }),

--   s("wordwrap", {
--     t('wordwrap:'),
--     i(0),
--   }),


--  s("comment", {
--     t("{# "),
--     i(1),
--     t({"", "\t"}),
--     i(2),
--     t({"", "#}"}),
--   }),

--   s("var", {
--     t("{{ "),
--     i(1),
--     t(" }}"),
--   }),

--   s("tag", {
--     t("{% "),
--     i(1),
--     t(" %}"),
--   }),

--   s("csrf", {
--     t('<input type="hidden" name="csrfmiddlewaretoken" value="{{ csrf_token }}">'),
--   }),

--   s("extends", {
--     t("{% extends \""),
--     i(1),
--     t("\" %}"),
--   }),

--   s("for", {
--     t("{% for "),
--     i(1),
--     t(" in "),
--     i(2),
--     t(" %}"),
--     t({"", ""}),
--     i(3),
--     t({"", "{% endfor %}"}),
--   }),

--   s("forelse", {
--     t("{% for "),
--     i(1),
--     t(" in "),
--     i(2),
--     t(" %}"),
--     t({"", ""}),
--     i(3),
--     t({"", "{% else %}"}),
--     t({"", ""}),
--     i(4),
--     t({"", "{% endfor %}"}),
--   }),

--   s("if", {
--     t("{% if "),
--     i(1),
--     t(" %}"),
--     t({"", ""}),
--     i(2),
--     t({"", "{% else %}"}),
--     t({"", ""}),
--     i(3),
--     t({"", "{% endif %}"}),
--   }),

--   s("include", {
--     t("{% include \""),
--     i(1),
--     t("\" %}"),
--   }),

--   s("lipsum", {
--     t("{{ lipsum("),
--     i(1, "how_many_paragraphs"),
--     t(") }}"),
--   }),

--   s("super", {
--     t("{{ super() }}"),
--   }),

--   s("block", {
--     t("{% block "),
--     i(1, "block_name"),
--     t(" %}"),
--     t({"", ""}),
--     i(0),
--     t({"", "{% endblock "}),
--     rep(1),
--     t(" %}"),
--   }),

--   s("url", {
--     t("{{ url('"),
--     i(1, "some-url-name"),
--     t("', "),
--     i(2, "arg"),
--     t(") }}"),
--   }),

--   s("with", {
--     t("{% with "),
--     i(1, "local_var"),
--     t("="),
--     i(2, "context_var"),
--     t(" %}"),
--     t({"", ""}),
--     i(3),
--     t({"", "{% endwith %}"}),
--   }),

--   s("static", {
--     t("{{ static('"),
--     i(1),
--     t("') }}"),
--   }),


--   s("abs", {
--     t("|abs("),
--     i(1, "number"),
--     t(")"),
--   }),

--   s("attr", {
--     t('|attr("'),
--     i(1, "name"),
--     t('")'),
--   }),

 

--   s("block", {
--     t("{% block "),
--     i(1, "name"),
--     t(" %}"),
--     t({"", "    "}),
--     i(2),
--     t({"", "{% endblock %}"}),
--   }),

--   -- call snippet
--   s("call", {
--     t("{% call('"),
--     i(1),
--     t("') %}"),
--     t({"", ""}),
--     i(2, "enter code"),
--     t({"", "{% endcall %}"}),
--   }),

--   -- capitalize snippet
--   s("capitalize", {
--     t("|capitalize('"),
--     i(1, "string"),
--     t("')"),
--   }),

--   -- center snippet
--   s("center", {
--     t("|center("),
--     i(1, "text"),
--     t(", width="),
--     i(2, "80"),
--     t(")"),
--   }),

 

--   -- escape snippet
--   s("escape", {
--     t("|escape('"),
--     i(1),
--     t("')"),
--   }),

--   -- extends snippet
--   s("extends", {
--     t("{% extends "),
--     i(1, '"another template file path"'),
--     t(" %}"),
--   }),

--   -- filesizeformat snippet
--   s("filesizeformat", {
--     t("|filesizeformat('"),
--     i(1),
--     t("')"),
--   }),

--    -- first snippet
--   s("first", {
--     t("|first("),
--     i(1, "sequence"),
--     t(")"),
--   }),

--   -- filter snippet
--   s("filter", {
--     t("{% filter "),
--     i(1, "filter name"),
--     t(" %}"),
--     t({"", ""}),
--     i(2, "text"),
--     t({"", "{% endfilter %}"}),
--   }),

--    -- float snippet
--   s("float", {
--     t("|float("),
--     i(1, "0.0"),
--     t(")"),
--   }),

--   -- for loop snippet
--   s("form", {
--     t("{% for "),
--     i(1, "item"),
--     t(" in "),
--     i(2, "collection"),
--     t(" %}"),
--     t({"", ""}),
--     i(3, "enter code"),
--     t({"", "{% endfor %}"}),
--   }),

--   -- forceescape snippet
--   s("forceescape", {
--     t("|forceescape('"),
--     i(1),
--     t("')"),
--   }),

--   -- format snippet
--   s("format", {
--     t("|format('"),
--     i(1),
--     t("')"),
--   }),

--    -- forminput snippet
--   s("forminput", {
--     t("{{ input('"),
--     i(1, "form"),
--     t("', div=['"),
--     i(2, "div"),
--     t("'], attr=['"),
--     i(3, "class"),
--     t("','"),
--     i(4, "attr"),
--     t("']) }}"),
--   }),

--   -- groupby snippet
--   s("groupby", {
--     t("|groupby('"),
--     i(1),
--     t("')"),
--   }),

--   -- if snippet
--   s("if", {
--     t("{% if "),
--     i(1),
--     t(" %}"),
--     t({"", "\t"}),
--     i(2, "enter code"),
--     t({"", "{% endif %}"}),
--   }),

--   -- handlebars snippet
--   s("handlebars", {
--     t('<script id="'),
--     i(2, "sample-template"),
--     t('" type="text/x-handlebars" data-template-name="'),
--     i(1, "template-name"),
--     t('">'),
--     t({"", "\t"}),
--     i(0, "enter code"),
--     t({"", "</script>"}),
--   }),

--    -- import snippet
--   s("import", {
--     t("{% import '"),
--     i(1, "template.html"),
--     t("' as "),
--     i(2, "alias"),
--     t(" %}"),
--   }),

--   -- include snippet
--   s("include", {
--     t("{% include '"),
--     i(1, "template.html"),
--     t("' %}"),
--   }),

--   -- indent snippet
--   s("indent", {
--     t("|indent('"),
--     i(1, "text"),
--     t("', indentfirst="),
--     i(2, "False"),
--     t(")"),
--   }),

--   -- int snippet
--   s("int", {
--     t("|int('"),
--     i(1, "value"),
--     t("', default="),
--     i(2, "0"),
--     t(")"),
--   }),

--   -- join snippet
--   s("join", {
--     t("|join('"),
--     i(1, "sequence"),
--     t("', attribute="),
--     i(2, "None"),
--     t(")"),
--   }),

--   -- loop snippet
--   s("loop", {
--     t("{ loop.cycle('"),
--     i(1, "value1"),
--     t("', '"),
--     i(2, "value2"),
--     t("') }}}"),
--   }),

--    -- macro snippet
--   s("macro", {
--     t("{% macro('"),
--     i(1, "macro_name"),
--     t("') %}"),
--     t({"", "\t"}),
--     i(2, "enter code"),
--     t({"", "{% endmacro %}"}),
--   }),

--   -- raw snippet
--   s("raw", {
--     t("{% raw %}"),
--     t({"", "\t"}),
--     i(1, "enter code"),
--     t({"", "{% endraw %}"}),
--   }),

--   -- round snippet
--   s("round", {
--     t("|round('"),
--     i(1),
--     t("')"),
--   }),

--   -- safe snippet
--   s("safe", {
--     t("|safe('"),
--     i(1),
--     t("')"),
--   }),

--    -- set snippet
--   s("set", {
--     t("{% set "),
--     i(1),
--     t(" %}"),
--   }),

--   -- slice snippet
--   s("slice", {
--     t("|slice('"),
--     i(1),
--     t("')"),
--   }),

--    s("sort", {
--     t("|sort("),
--     i(1),
--     t(", reverse="),
--     i(2),
--     t(", case_sensitive="),
--     i(3, "False"),
--     t(", attribute="),
--     i(4, "None"),
--     t(")"),
--   }),

--   s("sum", {
--     t("|sum("),
--     i(1),
--     t(", attribute="),
--     i(2),
--     t(", start="),
--     i(3, "0"),
--     t(")"),
--   }),

--   s("title", {
--     t("|title("),
--     i(1),
--     t(")"),
--   }),

--   s("truncate", {
--     t("|truncate("),
--     i(1, "string"),
--     t(", length="),
--     i(2, "255"),
--     t(", killwords="),
--     i(3),
--     t(", end='"),
--     i(4, "..."),
--     t("')"),
--   }),

--    s("default", {
--     t("|default('"),
--     i(1, "text"),
--     t("', "),
--     c(2, { t("true"), t("false") }),
--     t(")"),
--   }),

--   s("batch", {
--     t("|batch("),
--     i(1, "linecount"),
--     c(2, {
--       t(""),
--       sn(nil, {
--         t(", '"),
--         i(1, "fill_with"),
--         t("'"),
--       }),
--     }),
--     t(")"),
--   }),

--   s("auto", {
--     t("{% autoescape "),
--     c(1, { t("true"), t("false") }),
--     t(" %}"),
--     t({"", ""}),
--     i(2, "enter code"),
--     t({"", "{% endautoescape %}"}),
--   }),

--   s("jblock", {
--     t("{% block "),
--     i(1, "name"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(2),
--     t({"", "{% endblock "}),
--     rep(1),
--     t(" %}"),
--   }),

--   s("jset", {
--     t("{% set "),
--     i(1, "var"),
--     t(" = "),
--     i(2, "value"),
--     t(" %}"),
--   }),

--   s("jif", {
--     t("{% if "),
--     i(1, "condition"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(2),
--     t({"", "{% endif %}"}),
--   }),

--   s("jifelse", {
--     t("{% if "),
--     i(1, "condition"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(2),
--     t({"", "{% else %}"}),
--     t({"", "\t"}),
--     i(3),
--     t({"", "{% endif %}"}),
--   }),

--   s("jextend", {
--     t("{% extends '"),
--     i(1, "template"),
--     t(".html' %}"),
--   }),

--   s("jfor", {
--     t("{% for "),
--     i(1, "item"),
--     t(" in "),
--     i(2, "sequence"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(3),
--     t({"", "{% endfor %}"}),
--   }),

--   s("jrandom", {
--     t("{{ range("),
--     i(1, "start"),
--     t(", "),
--     i(2, "end"),
--     t(") | random }}"),
--   }),

--   s({"jprint", "jvar"}, {
--     t("{{ "),
--     i(1, "variable"),
--     t(" }}"),
--   }),

--   s("jfunc", {
--     t("{% "),
--     i(1, "function"),
--     t(" %}"),
--   }),

--   s("jmacro", {
--     t("{% macro "),
--     i(1, "name"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(2),
--     t({"", "{% endmacro %}"}),
--   }),

--   s("jround", {
--     t("{{ "),
--     i(1, "value"),
--     t(" | round }}"),
--   }),

--   s("jjoin", {
--     t("{{ "),
--     i(1, "list"),
--     t(" | join(',') }}"),
--   }),

--   s("jurl", {
--     t("{{ url_for('"),
--     i(1, "endpoint"),
--     t("', filename='"),
--     i(2, "file"),
--     t("') }}"),
--   }),

--   s("jcall", {
--     t("{% call "),
--     i(1, "caller"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(2),
--     t({"", "{% endcall %}"}),
--   }),

--   s("jfilter", {
--     t("{% filter "),
--     i(1, "filter_name"),
--     t(" %}"),
--     t({"", "\t"}),
--     i(2),
--     t({"", "{% endfilter %}"}),
--   }),

--   s("jinclude", {
--     t("{% include '"),
--     i(1, "template"),
--     t(".html' %}"),
--   }),

--   s("jfrom", {
--     t("{% from '"),
--     i(1, "source"),
--     t("' import "),
--     i(2, "item"),
--     t(" %}"),
--   }),

--   s("jimg", {
--     t("<img src=\"{{ url_for('static', filename='"),
--     i(1, "image.png"),
--     t("') }}\" alt=\""),
--     i(2, "alt text"),
--     t("\">"),
--   }),

--   s("jhref", {
--     t("<a href=\"{{ url_for('"),
--     i(1, "endpoint"),
--     t("') }}\">"),
--     i(2, "link text"),
--     t("</a>"),
--   }),

--   s("j.child", {
--   t({
--     '{% extends "base.html" %}',
--     '{% block title %}Index{% endblock %}',
--     '{% block head %}',
--     '    {{ super() }}',
--     '    <style type="text/css">',
--     '        .important { color: #336699; }',
--     '    </style>',
--     '{% endblock %}',
--     '{% block content %}',
--     '    <h1>Index</h1>',
--     '    <p class="important">',
--     '        Welcome to my awesome homepage.',
--     '    </p>',
--     '{% endblock %}',
--   }),
-- }),

-- s("j.block-nesting", {
--   t({
--     '{% for item in seq %}',
--     '    <li>{% block loop_item scoped %}{{ item }}{% endblock %}</li>',
--     '{% endfor %}',
--   }),
-- }),

-- s("j.stat", {
--   t("{% "),
--   i(1, "statement"),
--   t(" %}"),
--   t({ "", "\t" }),
--   i(2),
--   t({ "", "{% end" }),
--   rep(1),
--   t(" %}"),
--   i(0),
-- }),

-- s({ trig = "j.exp", name = "Jinja Expression", wordTrig = true }, {
--   t("{{ "),
--   i(1),
--   t(" }}"),
--   i(0),
-- }),
-- s({ trig = "j.print", name = "Jinja Print", wordTrig = true }, {
--   t("{{ "),
--   i(1),
--   t(" }}"),
--   i(0),
-- }),

-- s("j.comm", {
--   t("{# "),
--   i(1, "comment"),
--   t(" #}"),
--   i(0),
-- }),

-- s("j.block", {
--   t("{% block "),
--   i(1, "name"),
--   t(" %}"),
--   t({ "", "\t" }),
--   i(2),
--   t({ "", "{% endblock %}" }),
--   i(0),
-- }),

-- s({ trig = "j.if", name = "Jinja If", wordTrig = true }, {
--   t("{% if "), i(1, "condition"), t(" %}"),
--   t({"", "\t"}), i(2),
--   t({"", "{% endif %}"}), i(0),
-- }),

-- s({ trig = "j.if-else", name = "Jinja If-Else", wordTrig = true }, {
--   t("{% if "), i(1, "condition"), t(" %}"),
--   t({"", "\t"}), i(2),
--   t({"", "{% else %}", "\t"}), i(3),
--   t({"", "{% endif %}"}), i(0),
-- }),

-- s({ trig = "j.if-elif-else", name = "Jinja If-Elif-Else", wordTrig = true }, {
--   t("{% if "), i(1, "condition"), t(" %}"),
--   t({"", "\t"}), i(2),
--   t({"", "{% elif "}), i(3, "condition2"), t(" %}"),
--   t({"", "\t"}), i(4),
--   t({"", "{% else %}", "\t"}), i(5),
--   t({"", "{% endif %}"}), i(0),
-- }),


-- s({ trig = "j.if-for", name = "Jinja If + For", wordTrig = true }, {
--   t("{% if "), i(1, "iterable"), t(" %}"),
--   t({"", "\t{% for "}), i(2, "item"), t(" in "), rep(1), t(" %}"),
--   t({"", "\t\t"}), i(3),
--   t({"", "\t{% endfor %}", "{% endif %}"}), i(0),
-- }),

-- s({ trig = "j.for", name = "Jinja For", wordTrig = true }, {
--   t("{% for "), i(1, "item"), t(" in "), i(2, "iterable"), t(" %}"),
--   t({"", "\t"}), i(3),
--   t({"", "{% endfor %}"}), i(0),
-- }),

-- s({ trig = "j.for-if", name = "Jinja For + If", wordTrig = true }, {
--   t("{% for "), i(1, "item"), t(" in "), i(2, "iterable"), t(" %}"),
--   t({"", "\t{% if "}), rep(1), t(" %}"),
--   t({"", "\t\t"}), i(3),
--   t({"", "\t{% endif %}", "{% endfor %}"}), i(0),
-- }),

-- s({ trig = "j.for-else", name = "Jinja For-Else", wordTrig = true }, {
--   t("{% for "), i(1, "item"), t(" in "), i(2, "iterable"), t(" %}"),
--   t({"", "\t"}), i(3),
--   t({"", "{% else %}", "\t"}), i(4),
--   t({"", "{% endfor %}"}), i(0),
-- }),

-- s({ trig = "j.with", name = "Jinja With", wordTrig = true }, {
--   t("{% with "), i(1, "item"), t(" %}"),
--   t({"", "\t"}), i(2),
--   t({"", "{% endwith %}"}), i(0),
-- }),

-- s({ trig = "j.macro", name = "Jinja Macro", wordTrig = true }, {
--   t("{% macro "), i(1, "name"), t("("), i(2, "args"), t(") %}"),
--   t({"", "\t"}), i(3),
--   t({"", "{% endmacro %}"}), i(0),
-- }),

-- s({ trig = "j.call", name = "Jinja Call Macro", wordTrig = true }, {
--   t("{% call "), i(1, "macroname"), t("("), i(2, "args"), t(") %}"),
--   t({"", "\t"}), i(3),
--   t({"", "{% endcall %}"}), i(0),
-- }),

-- s({ trig = "j.filter", name = "Jinja Filter Block", wordTrig = true }, {
--   t("{% filter "), i(1, "filtername"), t(" %}"),
--   t({"", "\t"}), i(2),
--   t({"", "{% endfilter %}"}), i(0),
-- }),

-- s({ trig = "j.incl", name = "Jinja Include", wordTrig = true }, {
--   t("{% include '"), i(1, "filename"), t("'"),
--   c(2, {
--     t(""),
--     t(" ignore missing"),
--     t(" with context"),
--     t(" ignore missing with context")
--   }),
--   t(" %}"),
--   i(0),
-- }),

-- s({ trig = "j.extends", name = "Jinja Extends", wordTrig = true }, {
--   t("{% extends '"), i(1, "filename"), t("' %}"), i(0),
-- }),

-- s({ trig = "j.imp", name = "Jinja Import", wordTrig = true }, {
--   t("{% import '"), i(1, "filename"), t("'"),
--   c(2, {
--     t(""),
--     t(" with context")
--   }),
--   t(" %}"), i(0),
-- }),

-- s({ trig = "j.imp-from", name = "Jinja From Import", wordTrig = true }, {
--   t("{% from '"), i(1, "template"), t("' import '"), i(2, "module"), t("'"),
--   c(3, {
--     t(""),
--     t(" with context")
--   }),
--   t(" %}"), i(0),
-- }),

-- s({ trig = "j.set", name = "Jinja Set Variable", wordTrig = true }, {
--   t("{% set "), i(1, "variable"), t(" = "), i(2, "value"), t(" %}"), i(0),
-- }),

-- s({ trig = "j.setmulti", name = "Jinja Set Multiple", wordTrig = true }, {
--   t("{% set "), i(1, "key"), t(", "), i(2, "value"), t(" = "), i(3, "callable()"), t(" %}"), i(0),
-- }),

-- s({ trig = "j.setblock", name = "Jinja Set Block", wordTrig = true }, {
--   t("{% set "), i(1, "variable"), t(" %}"),
--   t({"", "\t"}), i(2, "contents"),
--   t({"", "{% endset %}"}), i(0),
-- }),

-- s({ trig = "j.lipsum", name = "Jinja Lorem Ipsum", wordTrig = true }, {
--   t("{{ lipsum(n="), i(1, "5"), t(", html="), i(2, "True"), t(", min="), i(3, "20"), t(", max="), i(4, "100"), t(") }}"), i(0),
-- }),

-- s({ trig = "j.lorem", name = "Jinja Lorem Ipsum", wordTrig = true }, {
--   t("{{ lipsum(n="), i(1, "5"), t(", html="), i(2, "True"), t(", min="), i(3, "20"), t(", max="), i(4, "100"), t(") }}"), i(0),
-- }),

-- s({ trig = "j.random", name = "Jinja Random", wordTrig = true }, {
--   t("{{ range("), i(1, "0"), t(", "), i(2, "10000"), t(", "), i(3, "1"), t(") | random }}"), i(0),
-- }),

-- s({ trig = "j.url", name = "Jinja URL for", wordTrig = true }, {
--   t("{{ url_for('"), i(1, "endpoint"), t("'"), i(2), t(") }}"), i(0),
-- }),

-- s({ trig = "j.static", name = "Jinja Static URL", wordTrig = true }, {
--   t("{{ url_for('static', filename='"), i(1, "filename"), t("') }}"), i(0),
-- }),

-- s({ trig = "j.block-super", name = "Jinja Block Super", wordTrig = true }, {
--   t("{{ super() }}"), i(0),
-- }),

-- s({ trig = "j.block-include", name = "Jinja Include Block", wordTrig = true }, {
--   t("{% include '"), i(1, "filename"), t("' %}"), i(0),
-- }),

-- s({ trig = "j.block-extends", name = "Jinja Block Extends", wordTrig = true }, {
--   t("{% extends '"), i(1, "filename"), t("' %}"), i(0),
-- }),

-- s({ trig = "j.block-import", name = "Jinja Block Import", wordTrig = true }, {
--   t("{% import '"), i(1, "filename"), t("' %}"), i(0),
-- }),


-- s({ trig = "j.block-from-import", name = "Jinja Block From Import", wordTrig = true }, {
--   t("{% from '"), i(1, "template"), t("' import '"), i(2, "module"), t("' %}"), i(0),
-- }),

-- s({ trig = "j.block-set", name = "Jinja Block Set", wordTrig = true }, {
--   t("{% set "), i(1, "variable"), t(" = "), i(2, "value"), t(" %}"), i(0),
-- }),

-- s({ trig = "j.block-set-block", name = "Jinja Block Set Block", wordTrig = true }, {
--   t("{% set "), i(1, "variable"), t(" %}"),
--   t({"", "\t"}), i(2, "contents"),
--   t({"", "{% endset %}"}), i(0),
-- }),

-- s({ trig = "j.block-with", name = "Jinja Block With", wordTrig = true }, {
--   t("{% with "), i(1, "item"), t(" %}"),
--   t({"", "\t"}), i(2),
--   t({"", "{% endwith %}"}), i(0),
-- }),

-- s({ trig = "j.block-call", name = "Jinja Block Call", wordTrig = true }, {
--   t("{% call "), i(1, "macroname"), t("("), i(2, "args"), t(") %}"),
--   t({"", "\t"}), i(3),
--   t({"", "{% endcall %}"}), i(0),
-- }),

-- s({ trig = "j.block-filter", name = "Jinja Block Filter", wordTrig = true }, {
--   t("{% filter "), i(1, "filtername"), t(" %}"),
--   t({"", "\t"}), i(2),
--   t({"", "{% endfilter %}"}), i(0),
-- }),

--  -- j.block-if
--   s({ trig = "j.block-if", name = "Jinja Block If", wordTrig = true }, {
--     t("{% if "), i(1, "condition"), t(" %}"),
--     t({"", "\t"}), i(2),
--     t({"", "{% endif %}"}), i(0),
--   }),

--   -- j.block-if-else
--   s({ trig = "j.block-if-else", name = "Jinja Block If Else", wordTrig = true }, {
--     t("{% if "), i(1, "condition"), t(" %}"),
--     t({"", "\t"}), i(2),
--     t({"", "{% else %}"}),
--     t({"", "\t"}), i(3),
--     t({"", "{% endif %}"}), i(0),
--   }),

--   -- j.raw
--   s({ trig = "j.raw", name = "Jinja Raw Block", wordTrig = true }, {
--     t("{% raw %}"),
--     t({"", "\t"}), i(1),
--     t({"", "{% endraw %}"}), i(0),
--   }),

--   -- j.if-elif
--   s({ trig = "j.if-elif", name = "Jinja If-Elif", wordTrig = true }, {
--     t("{% if "), i(1, "condition"), t(" %}"),
--     t({"", "\t"}), i(2),
--     t({"", "{% elif "}), i(3, "condition2"), t(" %}"),
--     t({"", "\t"}), i(4),
--     t({"", "{% endif %}"}), i(0),
--   }),

--   -- j.filter-chain
--   s({ trig = "j.filter-chain", name = "Jinja Filter Chain", wordTrig = true }, {
--     t("{{ "), i(1, "variable"), t(" | "), i(2, "firstFilter"), t(" | "), i(3, "secondFilter"), t(" }}"), i(0),
--   }),

--   -- j.incl-only
--   s({ trig = "j.incl-only", name = "Jinja Include Only", wordTrig = true }, {
--     t("{% include '"), i(1, "filename"), t("' with "), i(2, "variable"), t(" only %}"), i(0),
--   }),

--   -- j.autoescape
--   s({ trig = "j.autoescape", name = "Jinja Autoescape Block", wordTrig = true }, {
--     t("{% autoescape "), i(1, "true|false"), t(" %}"),
--     t({"", "\t"}), i(2),
--     t({"", "{% endautoescape %}"}), i(0),
--   }),

--   -- j.if-not
--   s({ trig = "j.if-not", name = "Jinja If Not", wordTrig = true }, {
--     t("{% if not "), i(1, "condition"), t(" %}"),
--     t({"", "\t"}), i(2),
--     t({"", "{% endif %}"}), i(0),
--   }),

--   -- j.cycle
--   s({ trig = "j.cycle", name = "Jinja Cycle", wordTrig = true }, {
--     t("{% cycle "), i(1, "value1"), t(", "), i(2, "value2"), t(" as "), i(3, "cycleName"), t(" %}"), i(0),
--   }),

--   -- j.if-filter
--   s({ trig = "j.if-filter", name = "Jinja If with Filter", wordTrig = true }, {
--     t("{% if "), i(1, "condition"), t(" | "), i(2, "filter"), t(" %}"),
--     t({"", "\t"}), i(3),
--     t({"", "{% endif %}"}), i(0),
--   }),

--   -- j.if-not-filter
--   s({ trig = "j.if-not-filter", name = "Jinja If Not with Filter", wordTrig = true }, {
--     t("{% if not "), i(1, "condition"), t(" | "), i(2, "filter"), t(" %}"),
--     t({"", "\t"}), i(3),
--     t({"", "{% endif %}"}), i(0),
--   }),

--   -- j.if-elif-else-filter
--   s({ trig = "j.if-elif-else-filter", name = "Jinja If-Elif-Else with Filters", wordTrig = true }, {
--     t("{% if "), i(1, "condition"), t(" | "), i(2, "firstFilter"), t(" %}"),
--     t({"", "\t"}), i(3),
--     t({"", "{% elif "}), i(4, "condition2"), t(" | "), i(5, "secondFilter"), t(" %}"),
--     t({"", "\t"}), i(6),
--     t({"", "{% else %}"}),
--     t({"", "\t"}), i(7),
--     t({"", "{% endif %}"}), i(0),
--   }),

--   -- j.if-elif-else-not-filter
--   s({ trig = "j.if-elif-else-not-filter", name = "Jinja If-Elif-Else with Not Filters", wordTrig = true }, {
--     t("{% if not "), i(1, "condition"), t(" | "), i(2, "firstFilter"), t(" %}"),
--     t({"", "\t"}), i(3),
--     t({"", "{% elif not "}), i(4, "condition2"), t(" | "), i(5, "secondFilter"), t(" %}"),
--     t({"", "\t"}), i(6),
--     t({"", "{% else %}"}),
--     t({"", "\t"}), i(7),
--     t({"", "{% endif %}"}), i(0),
--   }),

-- s({ trig = "j.if-setup", name = "Jinja If Setup Block", wordTrig = true }, {
--   t("{% if "), i(1, "setup"), t(" %}\n"),
--   t("\t"), i(2, "# your code here"), t("\n"),
--   t("{% endif %}\n\n"),
--   t("{{ "), i(3, "example_of_var"), t(" }}"),
--   i(0)
-- }),

-- s({ trig = "j.if", name = "Jinja if block", wordTrig = true }, {
--   t("{% if "), i(1, "condition"), t(" %}\n"),
--   t("  "), i(2, "yaml_content"), t("\n"),
--   t("{% endif %}\n"),
--   i(0)
-- }),

-- s({ trig = "j.if-else", name = "Jinja if-else block", wordTrig = true }, {
--   t("{% if "), i(1, "condition"), t(" %}\n"),
--   t("  "), i(2, "yaml_content_if"), t("\n"),
--   t("{% else %}\n"),
--   t("  "), i(3, "yaml_content_else"), t("\n"),
--   t("{% endif %}\n"),
--   i(0)
-- }),

-- s({ trig = "j.if-elif-else", name = "Jinja if-elif-else block", wordTrig = true }, {
--   t("{% if "), i(1, "condition1"), t(" %}\n"),
--   t("  "), i(2, "key_if:"), t("\n"),
--   t("    "), i(3, "- value_if"), t("\n"),
--   t("{% elif "), i(4, "condition2"), t(" %}\n"),
--   t("  "), i(5, "key_elif:"), t("\n"),
--   t("    "), i(6, "- value_elif"), t("\n"),
--   t("{% else %}\n"),
--   t("  "), i(7, "key_else:"), t("\n"),
--   t("    "), i(8, "- value_else"), t("\n"),
--   t("{% endif %}\n"),
--   i(0)
-- }),


-- s({ trig = "j.if-yaml", name = "Jinja if with YAML content", wordTrig = true }, {
--   t("{% if "), i(1, "condition"), t(" %}\n"),
--   t("  "), i(2, "key:"), t("\n"),
--   t("    "), i(3, "- value"), t("\n"),
--   t("{% endif %}\n"),
--   i(0)
-- }),

-- s({ trig = "j.if-elif-yaml", name = "Jinja if-elif with YAML", wordTrig = true }, {
--   t("{% if "), i(1, "condition1"), t(" %}\n"),
--   t("  "), i(2, "key1:"), t("\n"),
--   t("    "), i(3, "- value1"), t("\n"),
--   t("{% elif "), i(4, "condition2"), t(" %}\n"),
--   t("  "), i(5, "key2:"), t("\n"),
--   t("    "), i(6, "- value2"), t("\n"),
--   t("{% endif %}\n"),
--   i(0)
-- })








  
-- }
