--local go2_snippets = require("golang2_snippets.go")
--require("luasnip").add_snippets("go", go2_snippets)

local go2_snippets = dofile(vim.fn.expand("~/.config/nvim/snippets/golang2_snippets/ansible.lua"))
require("luasnip").add_snippets("go", go2_snippets)
