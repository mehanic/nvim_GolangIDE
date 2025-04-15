
--  ~/.config/nvim/lua/go-template-plugin
local M = {}

function M.setup()
  vim.filetype.add({
    extension = {
      gotmpl = "gotmpl",
      tpl = "gotmpl",
      tmpl = "gotmpl",
    },
    pattern = {
      [".*/templates/.*%.tpl"] = "gotmpl",
      [".*/templates/.*%.ya?ml"] = "helm",
      ["helmfile.*%.ya?ml"] = "helm",
    },
  })
end

return M
