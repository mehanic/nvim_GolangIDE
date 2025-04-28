local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {

  -- Fiber: старт сервера
  s("fibernew", fmt([[
    app := fiber.New()

    app.{}("{}", func(c *fiber.Ctx) error {{
      return c.SendString("{}")
    }})

    app.Listen(":{}")
  ]], { i(1, "Get"), i(2, "/route"), i(3, "Hello, World!"), i(4, "3000") })),

  -- Fiber: middleware
  s("fibermiddleware", fmt([[
    app.Use(func(c *fiber.Ctx) error {{
      {}
      return c.Next()
    }})
  ]], { i(1, "-- middleware logic") })),

  -- Gin: старт сервера
  s("ginnew", fmt([[
    r := gin.Default()

    r.{}("{}", func(c *gin.Context) {{
      c.JSON(200, gin.H{{
        "{}": "{}",
      }})
    }})

    r.Run(":{}")
  ]], { i(1, "GET"), i(2, "/ping"), i(3, "message"), i(4, "pong"), i(5, "8080") })),

  -- Gin: middleware
  s("ginmiddleware", fmt([[
    r.Use(func(c *gin.Context) {{
      {}
      c.Next()
    }})
  ]], { i(1, "-- middleware logic") })),
})
