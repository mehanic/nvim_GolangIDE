local go5_snippets = dofile(vim.fn.expand("~/.config/nvim/snippets/golang5_snippets/python.lua"))
require("luasnip").add_snippets("python", go5_snippets)
