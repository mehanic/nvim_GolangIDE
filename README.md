# nvim_GolangIDE




plugins.vim is main file for provision neovim components

```
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

![working with autocomplite code](screenshot_1.png)

![Working with autocomplite code](screenshot_2.png)

![show tree of project](screenshot_3.png)

![golang-lint and other tools show problems](screenshot_4.png)

![get snippets slice code golang](screenshot_5.png)

![snippets wfrom directory golang2_snippets and golang_snippets](screenshot_6.png)

![working with Telescope in nvim](screenshot_7.png)

![working with modules](screenshot_8.png)

![automatically show with lines suitable borders of code](screenshot_9.png)

![working with modules](screenshot_10.png)

![dinamical lines and autoshow](screenshot_11.png)

![dinamical lines and autoshow ](screenshot_12.png)