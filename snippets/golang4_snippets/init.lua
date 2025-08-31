local go4_snippets = dofile(vim.fn.expand("~/.config/nvim/snippets/golang4_snippets/jenkins.lua"))
require("luasnip").add_snippets("groovy", go4_snippets)