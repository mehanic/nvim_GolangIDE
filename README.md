# nvim_GolangIDE

~/.config/nvim
 $ ls
autoload  coc-settings.json  init.vim  lua  plugin_config  snippets  vim-plug

~/.config/nvim/snippets)
 └> $ tree
.
├── go.json
├── golang2_snippets
│   ├── go.lua
│   └── init.lua
└── golang_snippets
    ├── go.lua
    └── init.lua

~/.config/golangci-lint




```
autoload/  coc-settings.json  init.vim  lua/  plugin_config/  snippets/  vim-plug/
```

Here’s what each folder or file is for:

| Name                  | Description |
|-----------------------|-------------|
| `autoload/`           | Traditional Vim folder for autoload functions or plugins (used by some plugin managers like vim-plug). |
| `coc-settings.json`   | Settings for the `coc.nvim` plugin — a VSCode-style language server/client for Neovim. |
| `init.vim`            | Your main Neovim config file (written in VimScript). |
| `lua/`                | Where you can store Lua modules or configuration if you use Lua-based plugins or config. |
| `plugin_config/`      | Often used to keep plugin configurations separated by file — e.g., one file per plugin. |
| `snippets/`           | Folder for code snippets, used by plugins like `UltiSnips`, `LuaSnip`, `coc-snippets`, etc. |
| `vim-plug/`           | Likely contains `plugins.vim`, where your `Plug` declarations live (plugin manager config). |

---

## 🔧 Example of how it all connects

If you're using a hybrid config (VimScript + Lua), you might have something like this:

### `init.vim`:
```vim
source $HOME/.config/nvim/vim-plug/plugins.vim
lua require('myconfig')  " loads lua/myconfig.lua
```

### `lua/myconfig.lua`:
```lua
require("plugin_config.gitsigns")
require("plugin_config.gh")
```

---
