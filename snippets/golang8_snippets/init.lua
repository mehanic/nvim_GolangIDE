local go8_snippets = dofile(vim.fn.expand("~/.config/nvim/snippets/golang8_snippets/template.lua"))
require("luasnip").add_snippets("go", go8_snippets)
