local go3_snippets = dofile(vim.fn.expand("~/.config/nvim/snippets/golang3_snippets/helm.lua"))
require("luasnip").add_snippets("go", go3_snippets)

