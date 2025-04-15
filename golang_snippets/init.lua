-- Загрузка сниппетов Go
local go_snippets = require("golang_snippets.go")  -- Загружаем сниппеты из go.lua
require("luasnip").add_snippets("go", go_snippets)  -- Регистрируем их для Go
