-- Загрузка сніппетів Go
local go_snippets = require("golang_snippets.go")  --  із go.lua
require("luasnip").add_snippets("go", go_snippets)  -- register snippets for  Go
