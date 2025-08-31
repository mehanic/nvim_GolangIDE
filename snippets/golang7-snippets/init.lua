local go7_snippets = dofile(vim.fn.expand("~/.config/nvim/snippets/golang7_snippets/template.lua"))
require("luasnip").add_snippets("go", go7_snippets)
