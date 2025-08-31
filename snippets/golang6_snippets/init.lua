
local go6_snippets = dofile(vim.fn.expand("~/.config/nvim/snippets/golang6_snippets/jinja.lua"))
require("luasnip").add_snippets("htmldjango", go6_snippets)
require("luasnip").add_snippets("jinja", go6_snippets)
require("luasnip").add_snippets("jinja2", go6_snippets)
