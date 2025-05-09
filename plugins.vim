"so this neovim  is for auto  install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airdevelop/misc/line-themes'
Plug 'gennaro-tedesco/nvim-jqx'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'akinsho/git-conflict.nvim'
Plug 'ardanlabs/ardango.nvim'
Plug 'koenverburg/peepsight.nvim'
Plug 'cuducos/yaml.nvim'
Plug 'fisadev/fisa-vim-colorscheme'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ray-x/go.nvim'
" Установка bufferline с помощью vim-plug
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
" Плагины для автокомплита и LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"for fzf
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'junegunn/fzf', { 'do': './install --all' }
" Use with SSH-based file search 
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'venc0r/telescope-k8s.nvim'  " Расширение для Kubernetes
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'windwp/nvim-autopairs'
"Plug 'nvimdev/lspsaga.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v2.x' }
Plug 'MunifTanjim/nui.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-notify'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" Markdown syntax and folding
Plug 'preservim/vim-markdown'
" Markdown preview in browser
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
" Table mode for markdown tables
Plug 'dhruvasagar/vim-table-mode'
" Optional: improved UI (for checkboxes etc.)
Plug 'plasticboy/vim-markdown'
Plug 'akinsho/toggleterm.nvim'
" Ansible and YAML Support
Plug 'pearofducks/ansible-vim'
Plug 'stephpy/vim-yaml'
Plug 'petertriho/nvim-scrollbar'
Plug 'lukas-reineke/indent-blankline.nvim'
"rest 
Plug 'rest-nvim/rest.nvim'
Plug 'j-hui/fidget.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'stevearc/conform.nvim'
" Git over SSH-based
Plug 'tpope/vim-fugitive'               
" For searching on remote systems with ripgrep support.
Plug 'jremmen/vim-ripgrep'  " For searching on remote systems with ripgrep support.
" Mount remote files over SSH
Plug 'DanielWeidinger/nvim-sshfs'
" Git over SSH-based
Plug 'tpope/vim-fugitive'               
" For searching on remote systems with ripgrep support.
Plug 'jremmen/vim-ripgrep'  " For searching on remote systems with ripgrep support.
" Sync files  over rsync and OpenSSH.
Plug 'coffebar/transfer.nvim'
Plug 'shellRaining/hlchunk.nvim'
Plug 'edolphin-ydf/goimpl.nvim' ":GoImpl  И выбираешь: Тип: MyBot , Интерфейс: mypkg.Greeter, автоматически вставит в буфер нужные методы:
" Установка плагина gopher.nvim
Plug 'olexsmir/gopher.nvim'
Plug 'maxandron/goplements.nvim'
Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }  "Ui 
Plug 'rcarriga/nvim-dap-ui'  "Ui 
Plug 'someone-stole-my-name/yaml-companion.nvim'
Plug 'beargruug/skipper.nvim'
Plug 'chomosuke/typst-preview.nvim', {'tag': 'v1.*'}
" Для использования с mini.snippets
Plug 'echasnovski/mini.snippets'
Plug 'abeldekat/cmp-mini-snippets'
" Для использования с ultisnips
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
" Для использования с snippy
Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy'
Plug 'leoluz/nvim-dap-go'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'
Plug 'kndndrj/nvim-dbee'
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'chrisbra/csv.vim'
Plug 'crusj/structrue-go.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'nvimtools/none-ls.nvim'
" Плагины для тестирования
Plug 'vim-test/vim-test'
Plug 'nvim-neotest/neotest'
Plug 'nvim-telescope/telescope.nvim'
Plug 'stevearc/aerial.nvim'
" Генерация тестов
Plug 'cweill/gotests'
Plug 'nvim-neotest/neotest-go'
" Интеграция с Go Playground
Plug 'tpope/vim-dispatch' " Используем vim-dispatch для отправки Go-кода в Go Playground
"позволяет удобно отображать все доступные клавиши и их комбинации.
Plug 'folke/which-key.nvim'
"выделяет важные комментарии, такие как TODO, FIXME и другие.
Plug 'folke/todo-comments.nvim'
Plug 'natecraddock/workspaces.nvim'
Plug 'akinsho/toggleterm.nvim'
"Для асинхронного билда:
Plug 'tpope/vim-dispatch'
"Еще один вариант для асинхронных команд
Plug 'kassio/neoterm'
" Для структуры файла (Code Outline)
Plug 'stevearc/aerial.nvim'                " Для структуры файла (Code Outline)
Plug 'SmiteshP/nvim-navic'                 " Для breadcrumbs/навигации
Plug 'glepnir/lspsaga.nvim'                " Для Hover Docs и Signature Help видалення конфыгу через відзеркалення тексту
Plug 'nvim-lualine/lualine.nvim'
Plug 'arcticicestudio/nord-vim'  " Устанавливаем тему nord
Plug 'liuchengxu/vista.vim'
" обязательно для diffview
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
" Плагин для работы с SQL базами данных
Plug 'tpope/vim-dadbod'
"UI для работы с vim-dadbod-ui 
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'golang/vscode-go'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'ldelossa/litee.nvim'
Plug 'ldelossa/litee-calltree.nvim'
Plug 'folke/neodev.nvim'
"Plug 'vidocqh/data-viewer.nvim'
Plug 'sindrets/gitsigns.nvim'
Plug 'ldelossa/litee.nvim'
Plug 'ldelossa/litee-calltree.nvim'
Plug 'lewis6991/gitsigns.nvim'
" Визуализация дерева
Plug 'ldelossa/gh.nvim'
Plug 'ldelossa/gh.nvim'
Plug 'gennaro-tedesco/nvim-jqx'
"edit your filesystem like a buffer
Plug 'stevearc/oil.nvim'
Plug 'towolf/vim-helm'
Plug 'cespare/vim-toml'
Plug 'ibhagwan/fzf-lua'
Plug 'sbulav/validate-gitlab-ci.nvim'
Plug 'b0o/schemastore.nvim'
Plug 'joshzcold/cmp-jenkinsfile'
Plug 'ckipp01/nvim-jenkinsfile-linter'
Plug 'hashivim/vim-terraform'
"Plug 'Saghen/kubectl.nvim'
Plug 'edwardtheharris/kube-utils-nvim'
Plug 'Bekaboo/dropbar.nvim'
" Встановлення плагіна для автоматичного форматування через black
Plug 'psf/black', { 'branch': 'stable' }
" Встановлення flake8 для аналізу коду, Плагін для аналізу помилок
Plug 'dense-analysis/ale'
" Улучшает quickfix (полезно для логов)
Plug 'kevinhwang91/nvim-bqf'
"posibility to work with tekst
"Plug 'andymass/vim-matchup'
Plug 'linux-cultist/venv-selector.nvim', { 'branch': 'regexp' }
" Source additional plugin configuration file  ---- not work
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'folke/snacks.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vimwiki/vimwiki'
Plug 'kawre/leetcode.nvim'
Plug 'onsails/lspkind.nvim'
" Основной Exercism плагин
Plug '2kabhishek/exercism.nvim'
" Зависимости
Plug '2kabhishek/utils.nvim'
Plug '2kabhishek/termim.nvim'
" Синтаксис и выделение
Plug 'mvaldes14/terraform.nvim'
Plug 'WhoIsSethDaniel/mason-tool-installer.nvim'
Plug '2KAbhishek/co-author.nvim'
Plug 'gorbit99/codewindow.nvim'
Plug 'pwntester/octo.nvim'
"source /home/mehanic/.config/nvim/vim-plug/vimplugin2.vim
Plug 'kiyoon/telescope-insert-path.nvim'
Plug 'zbirenbaum/copilot.lua'
Plug 'zbirenbaum/copilot-cmp'
Plug 'ray-x/lsp_signature.nvim'
Plug  'Wansmer/symbol-usage.nvim'
Plug  'Yu-Leo/gosigns.nvim'
Plug  'Yu-Leo/cmp-go-pkgs'
" Source individual plugin configuration files
"source ~/.config/nvim/vim-plug/dadbod.vim:
"source ~/.config/nvim/vim-plug/telescope.vim
"source ~/.config/nvim/vim-plug/lsp.vim
" Add other plugin files as needed...
call plug#end()


colorscheme vim
" the menu, you can customize the command-line color with the following settings
highlight Normal guibg=none guifg=white
highlight CommandLine guibg=black guifg=white
highlight Pmenu guibg=black guifg=white  " Menu background and foreground
highlight PmenuSel guibg=blue guifg=white  " Selected item in menu


let mapleader = ";"
set mouse=a
set filetype=helm

" Отключаем использование временных меток Syntastic
let g:syntastic_auto_loc_list = 0
let g:syntastic_show_signs = 0
let g:syntastic_quiet = 1

" Отключаем автоматическое создание списка локаций
let g:syntastic_always_populate_loc_list = 0

" Проверка при открытии файла
let g:syntastic_check_on_open = 1
" Отключаем проверку при сохранении
let g:syntastic_check_on_wq = 0

" Отключаем проверку для некоторых типов файлов
let g:syntastic_check_on_filetype = 0

" Другое полезное:
let g:syntastic_enable_signs = 0
let g:syntastic_use_local_files = 1
let g:syntastic_save_on_check = 1



" Go Language Settings
let g:goplements_enabled = 1    " Enable the plugin
let g:goplements_autocomplete = 1   " Enable autocompletion
let g:goplements_lint_on_save = 1    " Enable linting on save

" Optional: Specify the path to `gopls` if it's not in the default location
" Adjust path if needed
let g:goplements_gopls_path = '/home/mehanic/.gvm/pkgsets/go1.23.0/global/bin/gopls'


" Переназначаем Alt + w для сохранения текущего файла
nnoremap <A-w> :w<CR>

" Show documentation with K
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
nnoremap <Leader>b :echo "Leader key works!"<CR>

" Go to definition
nmap <silent> gd <Plug>(coc-definition)

" Format on save
autocmd BufWritePre *.go :silent! CocCommand editor.action.formatDocument
autocmd TermOpen * setlocal modifiable

" Для автоматичного форматування при збереженні
autocmd BufWritePre *.py execute ':Black'
"statusline 

"set statusline=%f                            " filename (relative)
"set statusline+=%m%r                         " [+] if modified, [RO] if readonly
"set statusline+=\ [%{&fileencoding}:%{&fileformat}] " encoding + format
"set statusline+=\ [%y]                       " filetype
"set statusline+=%#warningmsg#                " color group for warning
"set statusline+=\ [%{SyntasticStatuslineFlag()}]%* " syntastic result
"set statusline+=%=                           " right-align separator
"set statusline+=Ln\ %l,Col\ %c\ (%p%%)       " line/column/percent

"set statusline +=%1*\ %n\ %*            "buffer number

" Устанавливаем lualine в pluginvim.vim
lua << EOF
-- РУНЫ ДЛЯ COMPONENT_SEPARATORS
local component_runes = {
  "ᚠ", "ᚢ", "ᚦ", "ᚱ", "ᚲ", "ᚷ", "ᛃ", "ᛈ", "ᛋ"
}

-- РУНЫ ДЛЯ SECTION_SEPARATORS
local section_runes = {
  "ᛁ", "ᛇ", "ᛉ", "ᛏ", "ᛒ", "ᛖ", "ᛗ", "ᛚ", "ᛟ"
}

-- СЛУЧАЙНЫЙ ВЫБОР РУН
math.randomseed(os.time())
local sep_component = component_runes[math.random(#component_runes)]
local sep_section = section_runes[math.random(#section_runes)]

-- ФУНКЦИЯ ОБНОВЛЕНИЯ РУН
local function animate_runes()
  sep_component = component_runes[math.random(#component_runes)]
  sep_section = section_runes[math.random(#section_runes)]

  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'nord',
      component_separators = { left = sep_component, right = sep_component },
      section_separators = { left = sep_section, right = sep_section },
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {
        { 'filename', path = 1 },
        { 'filetype', icon_only = true },
        { 'encoding', icon = '' },
        { 'fileformat', icon = '' },
      },
      lualine_x = {
        'diagnostics',
        'lsp_progress',
        'location',
      },
      lualine_y = {
        { 'progress', separator = '' },
        { 'lineinfo', separator = '' },
      },
      lualine_z = {
        'os.date("%H:%M:%S")',
      },
    },
    inactive_sections = {
      lualine_a = {'filename'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {'progress'},
      lualine_z = {'os.date("%H:%M:%S")'},
    },
    extensions = {'fugitive', 'nvim-tree', 'quickfix'},
  }
end

-- ЗАПУСК LUALINE ПЕРВЫЙ РАЗ
animate_runes()

-- ЗАПУСК ТАЙМЕРА (раз в 1 час)
local timer = vim.loop.new_timer()
timer:start(0, 3600000, vim.schedule_wrap(animate_runes))

EOF



"goplements 
set runtimepath+=~/.config/nvim/autoload/plugged/goplements.nvim
lua package.path = package.path .. ';/home/mehanic/.config/nvim/autoload/plugged/goplements.nvim/lua/?.lua'
" Set up trigger mappings for snippets  set filetype=go 
inoremap <silent> <Tab> <C-r>=coc#rpc#request('doKeymap', ['snippets-expand', ''])<CR>


" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0


"Bash command autocompletion
let g:loaded_bash_completion = 1
let g:sh_autocmd = 1

let g:python3_host_prog = '/home/mehanic/myenv/bin/python3'

" Enable Nerd Fonts in DBUI
let g:db_ui_use_nerd_fonts = 1
" :DBUIAddConnection postgres://postgres:111111@localhost:5432/postgres
":DBUI - Open the DB UI window.
":DBUIToggle - Toggle the DB UI window on and off.
":DBUIAddConnection - Add a database connection (e.g., PostgreSQL or MySQL).
":DBUIAddConnection postgres://postgres:111111@localhost:5432/postgres
":DBUIAddConnection mysql://root:111111@localhost:3306/mysql

" Optionally, map some useful commands for DBUI
command! DBUI call DBUI()
command! DBUIToggle call DBUIToggle()
command! DBUIAddConnection call DBUIAddConnection()
command! DBUIFindBuffer call DBUIFindBuffer()



" === Автоматические настройки по типу файлов ===
augroup FiletypeSettings
  autocmd!
  
  " Удаление пробелов в конце строк при сохранении .py и .go файлов
  autocmd BufWritePre *.py,*.go :%s/\s\+$//e
 
  " Общие настройки отступов
  autocmd FileType ansible            setlocal expandtab
  autocmd FileType css,html,htmldjango,json,svg,ruby,yaml
                                      \ setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
  autocmd FileType java,php           setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab
  autocmd FileType javascript         setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
  autocmd FileType typescript         setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab colorcolumn=120 nowrap
  autocmd FileType make,fstab         setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
  autocmd FileType pcc                setlocal shiftwidth=3 tabstop=3 softtabstop=3 expandtab
  autocmd FileType python             setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab colorcolumn=80 nowrap
  autocmd FileType php                setlocal colorcolumn=100
  autocmd FileType ruby               setlocal colorcolumn=100
  autocmd FileType yaml               setlocal colorcolumn=80
  autocmd FileType sql                setlocal nowrap
  autocmd FileType tex,plaintex,context
                                      \ setlocal wrap linebreak
  autocmd FileType gitcommit          setlocal spelllang=en spell

  " ✅ Golang: отступы с табами (по умолчанию Go)
  autocmd FileType go setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8 colorcolumn=100
augroup END
autocmd BufWritePre *.go silent! lua vim.lsp.buf.format({ async = false })
highlight ColorColumn ctermbg=236 guibg=#2c2c2c


" Highlight non ascii characters
syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=3

" Настройки для различных типов файлов
autocmd BufRead,BufNewFile *.ipynb setfiletype json
autocmd BufRead,BufNewFile *.md setlocal textwidth=80 wrap colorcolumn=80 spell
autocmd BufRead,BufNewFile README.md setlocal textwidth=80 wrap colorcolumn=80 spell
autocmd BufRead,BufNewFile *.tsx,*.jsx set filetype=typescript.jsx
autocmd BufRead,BufNewFile .babelrc set filetype=json
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
autocmd BufRead,BufNewFile *.fish set filetype=fish
autocmd BufRead,BufNewFile *.td set filetype=tablegen

" Для файлов Ansible (.yml и .yaml)
autocmd BufRead,BufNewFile *.yml,*.yaml setlocal filetype=ansible
autocmd BufRead,BufNewFile *.yml,*.yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2







autocmd vimenter * NERDTree
" Automatically close NERDTree when quitting Neovim

let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeHighlightFolders = 1
"let NERDTreeShowHidden=1
" Add this to your config file
let NERDTreeIgnore = ['\.csm$']
let g:NERDTreeShowIcons=1

" Automatically close NERDTree when quitting Neovim (if it's still open)
autocmd VimLeavePre * if exists('g:NERDTree') && g:NERDTree.IsOpen() | NERDTreeClose | endif

" Enable syntax highlighting Markdown
syntax enable

" Ensure filetype detection Markdown
filetype plugin indent on


" Proper key mappings
nnoremap <leader>f :Telescope find_files<CR>


" In your init.lua or init.vim
" This enables true color support in Neovim. It's useful for better color rendering in your terminal and is required for plugins like bufferline.nvim and any modern theme you might use.
set termguicolors

set encoding=UTF-8
"set guifont=DroidSansMono\ Nerd\ Font\ 11

" Git status
nnoremap <leader>gs :G<CR>
" Git diff (shows the diff against the index)
nnoremap <leader>gd :Gdiffsplit<CR>
" Git commit
nnoremap <leader>gc :Gcommit<CR>
" Git push
nnoremap <leader>gp :Git push<CR>
" Git pull
nnoremap <leader>gP :Git pull<CR>
" Git blame
nnoremap <leader>gb :Gblame<CR>
" Git log
nnoremap <leader>gl :Git log<CR>
" Add current file (git add)
nnoremap <leader>ga :Gwrite<CR>
" Reset current file to HEAD
nnoremap <leader>gr :Gread<CR>
  


lua << EOF
-- Mason: менеджер LSP и внешних инструментов
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

-- Установка LSP через mason-lspconfig
require("mason-lspconfig").setup({
  ensure_installed = {
    "terraformls",
    "pyright",
    "gopls",
    "groovyls",
    "sqls",
    "yamlls",
    "bashls",
    "jsonls",
    "lua_ls",
  },
  automatic_installation = true,
})

-- Установка и обновление CLI-инструментов через mason-tool-installer
require("mason-tool-installer").setup({
  ensure_installed = {
    "gofumpt",
    "golangci-lint",
    "revive",
  },
  auto_update = true,
  run_on_start = true,
})

EOF

lua << EOF
local cmp = require('cmp')
local luasnip = require('luasnip')  -- Подключаем LuaSnip для автодополнения
local lspconfig = require('lspconfig')        -- lspconfig: This is used to configure LSP servers.
local capabilities = require('cmp_nvim_lsp').default_capabilities()  -- capabilities: This is used to enable advanced LSP features: completion and signatures.

-- Snippet setup
local ls = require'luasnip'                      -- These are the basic functions provided by LuaSnip to define and expand snippets:
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

-- Функция для проверки, есть ли слова перед курсором
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and
    vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- Настройка nvim-cmp
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)  -- Используем lsp_expand для сниппетов
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },  -- Источник для LSP
    { name = 'luasnip' },   -- Источник для сниппетов
  }, {
    { name = 'buffer' },     -- Источник для буфера
    { name = 'path' },       -- Источник для пути
    { name = 'cmdline' },    -- Для автодополнения в командной строке
  })
})

-- Убедимся, что nvim-cmp подключен и настроен
require('cmp')

-- Настройка LSP для Go с использованием gopls
local lspconfig = require('lspconfig')

-- Расширение возможностей LSP (например, для nvim-cmp)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- for Golang 
lspconfig.gopls.setup({
  on_attach = function(client, bufnr)
    -- Выводим сообщение, когда LSP успешно подключается
    vim.notify("gopls attached", vim.log.levels.INFO)
  end,
  capabilities = capabilities,
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = require('lspconfig.util').root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = { 
        unusedparams = true, -- ругать за неиспользуемые параметры
        shadow = true,       -- ловить затенение переменных
        printf = true,       -- проверять неправильное использование форматирования (можешь поставить false если надо)

        assign = true,
        atomic = true,
        bools = true,
        buildtag = true,
        composites = true,
        copylocks = true,
        deepequalerrors = true,
        errorsas = true,
        ifaceassert = true,
        loopclosure = true,
        nilfunc = true,
        stdmethods = true,
        stringintconv = true,
        structtag = true,
        testinggoroutine = true,
        tests = true,
        unmarshal = true,
        unreachable = true,
        unsafeptr = true,
        unusedwrite = true,
        },
      staticcheck = true,
      gofumpt = true,
      completeUnimported = true,
      usePlaceholders = true,
      matcher = "Fuzzy",
      codelenses = {
        generate = true,  -- командочка для генерации методов интерфейсов
        gc_details = true, -- показывать детали сборщика мусора
        test = true, -- "Run Test" прямо над функцией теста
        tidy = true, -- "Go mod tidy"
      },

      hints = {
      assignVariableTypes = true,
      compositeLiteralFields = true,
      constantValues = true,
      functionTypeParameters = true,
      parameterNames = true,
      rangeVariableTypes = true,
     },
      hoverKind = "FullDocumentation", -- Полная документация при наведении
      completionDocumentation = true,  -- Описание при автодополнении
    },
  },
})

local lspconfig = require("lspconfig")

-- on_attach: подключение функций при старте LSP
local on_attach = function(client, bufnr)
  vim.notify("pyright attached", vim.log.levels.INFO)

  -- Форматирование при сохранении
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end

  -- Клавиши для LSP
  local bufmap = function(mode, lhs, rhs)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
  end
  bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  bufmap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
end 

-- Для Python
lspconfig.pyright.setup({

on_attach = on_attach,
capabilities = capabilities,
  filetypes = { "python", "pyproject.toml", "setup.py", "requirements.txt", "tox.ini", "mypy.ini", "pylintrc" },
  root_dir = require('lspconfig.util').root_pattern("pyproject.toml", "setup.py", ".git"),
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        diagnosticMode = "workspace",  -- Уровень диагностики
        useLibraryCodeForTypes = true,  -- Использование библиотечного кода для проверки типов
        autoSearchPaths = true,         -- Автоматический поиск путей для зависимостей

        autoImportCompletions = true,        -- автодополнение импортов
        reportUnusedImport = "warning",      -- подсветка неиспользуемых импортов
        reportUnusedVariable = "warning",    -- неиспользуемые переменные
        reportMissingImports = true,
        stubPath = "typings",                -- кастомные .pyi файлы, если есть
      },
    },
  },
})


-- Настройка terraform-ls
require('lspconfig').terraformls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "terraform", "tf", "tfvars" },
  root_dir = require('lspconfig.util').root_pattern(".terraform", ".git", "*.tf"),
  settings = {
    terraform = {
      format = {
        enable = true, -- включает автоформатирование (через terraform fmt)
      },
      languageServer = {
        externalFormatter = true,
        diagnostics = {
          enable = true,
        },
      },
    }
  }
})


require('lspconfig').sqls.setup({
  on_attach = function(client, bufnr)
    vim.notify("SQLs attached", vim.log.levels.INFO)
    -- Можно добавить keymaps или интеграции с null-ls
  end,
  capabilities = capabilities,
  filetypes = { "sql", "mysql", "plsql" },
  root_dir = require('lspconfig.util').root_pattern(".git", "*.sql"),
  settings = {
    sqls = {

      connections = {
        {
          driver = "postgresql",
          name = "PostgreSQL",
          host = "localhost",
          user = "postgres",
          password = "new_password",
          database = "postgres",
          port = 5432
        },
        {
          driver = "mysql",
          name = "MySQL",
          host = "localhost",
          user = "root",
          password = "new_password",
          database = "mysql",
          port = 3306
        }
      }

    }
  }
})

require("lspconfig").groovyls.setup {
  cmd = { "groovy-language-server" },
  filetypes = { "groovy" },
  root_dir = require("lspconfig.util").root_pattern(".git", "build.gradle", "settings.gradle"),
}

-- Загрузка сниппетов Go
require("luasnip.loaders.from_vscode").load({
  paths = { "/home/mehanic/.config/nvim/snippets/go.json" }
})

-- Загрузка сниппетов для Golang (golang_snippets)
require("luasnip.loaders.from_lua").load({
  paths = vim.fn.expand("~/.config/nvim/snippets/golang_snippets"),
})

-- Загрузка сниппетов для Golang2
require("luasnip.loaders.from_lua").load({
  paths = vim.fn.expand("~/.config/nvim/snippets/golang2_snippets"),
})

-- Проверка сниппетов после их загрузки
vim.defer_fn(function()
  local snippets = require("luasnip").get_snippets()

  -- Проверка Go сниппетов
  if snippets.go then
    vim.notify("Go snippets loaded successfully!", vim.log.levels.INFO)
    vim.notify("Go snippets details: " .. vim.inspect(snippets.go), vim.log.levels.DEBUG)
    for _, snippet in ipairs(snippets.go) do
      snippet.active = true
    end
    vim.notify("Go snippets are now active!", vim.log.levels.INFO)
  else
    vim.notify("Go snippets not found.", vim.log.levels.ERROR)
  end

  -- Проверка Golang2 сниппетов
  if snippets.go then
    -- Проверяем наличие триггера "golang2"
    local found_golang2 = false
    for _, snippet in ipairs(snippets.go) do
      if snippet.trigger == "golang2" then
        found_golang2 = true
        break
      end
    end

    if found_golang2 then
      vim.notify("Golang2 snippet found in go filetype!", vim.log.levels.INFO)
    else
      vim.notify("Golang2 snippet not found in go filetype.", vim.log.levels.ERROR)
    end
  end

  -- Отладка: вывод всех загруженных сниппетов
  vim.notify("All loaded snippets: " .. vim.inspect(snippets), vim.log.levels.DEBUG)
end, 1000)

-- Сообщение после загрузки LuaSnip
vim.cmd("autocmd User LuaSnipLoaded echo 'LuaSnip snippets loaded'")

-- Функция для организации импортов в Go
function goimports(timeout_ms)
    local context = { source = { organizeImports = true } }
    vim.validate { context = { context, "t", true } }

    local params = vim.lsp.util.make_range_params()
    params.context = context

    -- Отправляем запрос на сервер LSP для получения доступных действий
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
    if not result or next(result) == nil then return end
    
    local actions = result[1].result
    if not actions then return end

    -- Выбираем первое найденное действие
    local action = actions[1]

    -- Выполняем найденное действие (организация импортов)
    vim.lsp.buf.execute_command(action)
end

EOF
"----------------------------------

lua << EOF
-- Load telescope configuration    telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Teles-- cope is centered around modularity, allowing for easy customization.
local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = { prompt_position = "top", preview_width = 0.55, results_width = 0.8 },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    wrap_results = true,
    winblend = 10,
    file_ignore_patterns = {
      "node_modules", "%.git/", "%.jpg", "%.jpeg", "%.png", "%.svg", "%.webp",
      "%.zip", "%.tar", "%.tar.gz",
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
      },
      n = {
        ["q"] = actions.close,
      },
    },
  },
  pickers = {
    find_files = { wrap_results = true, theme = "ivy", previewer = false },
    live_grep = { wrap_results = true, theme = "dropdown" },
    buffers = {
      wrap_results = true,
      sort_mru = true,
      ignore_current_buffer = true,
      theme = "dropdown",
      previewer = false,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})
-- Load the fzf extension
require('telescope').load_extension('fzf')
-- pcall(telescope.load_extension, "fzf")

vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- или ">>", "🔥" — по вкусу "❖" "✸" 
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
   float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})



-- Цвет фона для всплывающего окна
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e" })

-- Явно указываем рамку для LSP ховеров и подсказок
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = "rounded" }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  { border = "rounded" }
)

require('bqf').setup({
  auto_enable = true,
  preview = {
    win_height = 15,
    win_vheight = 15,
    delay_syntax = 80,
    border_chars = { '│', '│', '─', '─', '┌', '┐', '┘', '└' },
  },
  func_map = {
    open = 'o',
    openc = '<CR>',
    drop = 'O',
    split = 's',
    vsplit = 'v',
    tabdrop = 't',
    toggle_preview = 'p',
    prev_file = 'K',
    next_file = 'J',
  },
  filter = {
    fzf = {
      action_for = {
        ['ctrl-s'] = 'split',
        ['ctrl-v'] = 'vsplit',
        ['ctrl-t'] = 'tab drop',
      },
      extra_opts = {'--bind', 'ctrl-o:toggle-all', '--prompt', '> '}
    }
  }
})
EOF



lua << EOF
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
EOF



lua << EOF
require('dap-go').setup {
  dap_configurations = {
    {
      type = "go",
      name = "Debug file",
      request = "launch",
      program = "${file}",
    },
    {
      type = "go",
      name = "Debug test",
      request = "launch",
      mode = "test",
      program = "${file}",
    },
    {
      type = "go",
      name = "Attach to process",
      request = "attach",
      processId = require('dap.utils').pick_process,
    },
    {
      type = "go",
      name = "Debug with CPU profile",
      request = "launch",
      mode = "test",
      program = "${file}",
      args = { "-test.cpuprofile=cpu.out" },
      buildFlags = "-gcflags=all=-N -l",
    },
  },
  delve = {
    path = "dlv",
    initialize_timeout_sec = 20,
    port = "${port}",
    args = {},
    build_flags = "-gcflags=all=-N -l",
    detached = vim.fn.has("win32") == 0,
  },
  tests = {
    verbose = true,
  },
}

-- Клавиши для удобного запуска отладки
vim.api.nvim_set_keymap('n', '<F5>', ':lua require("dap").continue()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', ':lua require("dap").step_over()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F11>', ':lua require("dap").step_into()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', ':lua require("dap").step_out()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>b', ':lua require("dap").toggle_breakpoint()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', ':lua require("dap").repl.open()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>dt', ':lua require("dap-go").debug_test()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>pp', ':!go tool pprof -http=:8080 cpu.out<CR>', { noremap = true, silent = true })
EOF


" Configure nvim-notify with Lua
lua << EOF
require("notify").setup({
  stages = "fade_in_slide_out",  
  timeout = 3000,                
  background_colour = "#282828", 
  minimum_width = 50,            
  top_down = false,              
  icons = {
    ERROR = "❌",                 
    WARN  = "⚡",                  
    INFO  = "🔥",                  
    DEBUG = "ℹ️",                 
    TRACE = "🔍",                 
  }
})

vim.notify = require("notify")
require("telescope").load_extension("notify")

vim.notify("помилка", "error")
vim.notify("застереження", "warn")
vim.notify("Інформація", "info")
vim.notify("All plugins are downloaded and updated", "info")
EOF


" --- ASCII Art Setup ---
let g:ascii = [
    \ '',
    \ '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ',
    \ '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
    \ '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ',
    \ '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
    \ '          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
    \ '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
    \ '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
    \ ' ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
    \ ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ',
    \ '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
    \ '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
    \ '     ⢰⣶  ⣶ ⢶⣆⢀⣶⠂⣶⡶⠶⣦⡄⢰⣶⠶⢶⣦  ⣴⣶     ',
    \ '     ⢸⣿⠶⠶⣿ ⠈⢻⣿⠁ ⣿⡇ ⢸⣿⢸⣿⢶⣾⠏ ⣸⣟⣹⣧    ',
    \ '     ⠸⠿  ⠿  ⠸⠿  ⠿⠷⠶⠿⠃⠸⠿⠄⠙⠷⠤⠿⠉⠉⠿⠆   ',
    \ '']

" Highlight group definition
highlight ASCIIArt guifg=#FF00FF guibg=#000000 gui=bold

" Lua block to display the ASCII art notification
lua << EOF
-- Using vim.notify with ASCII art
vim.notify("This is your custom  HYDRA", "info", {
  title = "ASCII Art Notification",
  message = vim.fn.join(vim.g.ascii, "\n"),  -- Join the ASCII art lines for the message
  background_colour = "#282828",            -- Background color for the notification
  timeout = 5000,                            -- Notification timeout (in milliseconds)
  hide = true                                -- Hide the sign (no extra indicator)
})
EOF

"commented
"lua << EOF
"-- Displaying the ASCII art in the Vim message area
"vim.api.nvim_echo({{vim.fn.join(vim.g.ascii, "\n")}}, false, {})
"EOF

" Lua configuration for toggleterm.nvim
lua << EOF
  require("toggleterm").setup{
    -- General settings
    size = 10,                  -- Default terminal size
    persist_size = true,        -- Persist terminal size across sessions
    start_in_insert = true,     -- Start in insert mode when opening terminal
    open_mapping = [[<C-\>]],    -- Keybinding to toggle terminal

    -- Terminal appearance settings
    direction = 'horizontal',   -- Open terminal in horizontal split
    -- Optional floating window settings (commented out for horizontal split)
    -- float_opts = {
    --   border = "curved",         -- Use a curved border for the floating terminal
    --   winblend = 3,              -- Make the floating terminal semi-transparent
    -- },

    -- Optional horizontal split settings (you can leave these as is for horizontal split)
    -- shade_terminals = true,     -- Enable shading for terminals
  }
EOF

" Key mappings for toggling terminals and opening specific commands
" Toggle terminal with <C-\>
nnoremap <C-\> :ToggleTerm<CR>

" Map leader key to open terminal with default shell
nnoremap <Leader>1 :ToggleTerm<CR>            " Open terminal with default shell

" Key for opening a terminal with a custom command (example: 'htop')
nnoremap <Leader>2 :ToggleTerm command='htop'<CR>  " Open terminal with 'htop'

" Make sure terminal is in insert mode when opened
autocmd TermOpen * startinsert


" Neo-tree configuration
lua << EOF
require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,  -- Show dotfiles
      hide_gitignored = true, -- Hide git-ignored files
    },
  },
  window = {
    width = 30,  -- Width of the file tree window
    mappings = {
      ["<CR>"] = "open",        -- Open a file or directory
      ["<BS>"] = "close_node",  -- Close the current node
      ["."] = "toggle_hidden",  -- Toggle visibility of hidden files
      ["<C-p>"] = "preview",    -- Preview the file under cursor
    },
  },
  default_component_configs = {
    icon = {
      folder_closed = "▶",  -- Icon for closed folders
      folder_open = "▼",    -- Icon for open folders
    },
  },
})
EOF

" LSP Configuration for Ansible
lua << EOF
local lspconfig = require('lspconfig')

lspconfig.ansiblels.setup({
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yaml", "yml" },

root_dir = lspconfig.util.root_pattern(
  "ansible.cfg",
  "requirements.yml",
  "inventory.ini",
  "hosts",
  "roles",                  -- корень с ролями
  "meta/main.yml",
  "tasks/main.yml",
  "handlers/main.yml",
  "defaults/main.yml",
  "vars/main.yml",
  "test/main.yml",
  "meta/main.yml",         -- molecule конфиг
  "molecule/main.yml",
  "meta",
  "tasks",
  "handlers",
  "defaults",
  "vars",
  "test",
  "molecule"
),

  settings = {
    ansible = {
      ansible = {
        path = "ansible",         -- путь к бинарнику ansible
      },
      ansibleLint = {
        path = "ansible-lint",    -- путь к ansible-lint
      },
      python = {
        interpreterPath = "python3", -- или путь к твоей venv
      },
    },
  },

  on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

    -- Автоформат при сохранении
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function() vim.lsp.buf.format({ async = false }) end,
      })
    end
  end
})
EOF


" Lua-based configuration for nvim-scrollbar
lua << EOF
require("scrollbar").setup({
    show = true,                         -- Показывать полосу прокрутки
    show_in_active_only = false,         -- Показывать полосу прокрутки во всех буферах, не только в активных
    set_highlights = true,               -- Включить подсветку для полосы прокрутки
    folds = 1000,                        -- Полоса прокрутки для файлов с более чем 1000 строк
    max_lines = false,                   -- Полоса прокрутки отключена, если буфер превышает максимальное количество строк
    hide_if_all_visible = false,         -- Не скрывать полосу прокрутки, если все строки видны
    throttle_ms = 100,                   -- Ожидание перед обновлением (можно увеличить для улучшения производительности)
    
    -- Настройки для внешнего вида
    handle = {
        text = " ",                       -- Текст для обработки полосы прокрутки
        blend = 20,                       -- Прозрачность (0 = непрозрачный, 100 = полностью прозрачный)
        color = nil,                      -- Цвет для обработки полосы
        highlight = "CursorColumn",       -- Подсветка для обработки полосы
        hide_if_all_visible = true,       -- Скрывать обработку полосы, если все строки видны
    },

    -- Настройки маркеров
     marks = {
    -- Курсор
    Cursor = {
        text = "ᚦ",                 
        priority = 0,                 
        highlight = "Normal",         
    },
    
    -- Поиск
    Search = {
        text = { "ᚱ", "ᛗ" },          
        priority = 1,                 
        highlight = "Search",         
    },
    
    -- Ошибки
    Error = {
        text = { "ᚲ", "ᚷ" },        
        priority = 2,                 
        highlight = "DiagnosticVirtualTextError",  
    },

    -- Предупреждения
    Warn = {
        text = { "ᛒ", "ᛖ" },         
        priority = 3,                 
        highlight = "DiagnosticVirtualTextWarn",  
    },

    -- Информация
    Info = {
        text = { "ᛏ", "ᛃ" },         
        priority = 4,                 
        highlight = "DiagnosticVirtualTextInfo",  
    },

    -- Подсказки
    Hint = {
        text = { "ᛗ", "ᚨ" },        
        priority = 5,                 
        highlight = "DiagnosticVirtualTextHint",  
    },

    -- Разные маркеры
    Misc = {
        text = { "ᛟ", "ᛍ" },           
        priority = 6,                 
        highlight = "Normal",         
    },

    -- Git добавления
    GitAdd = {
        text = "ᛓ",                    
        priority = 7,                 
        highlight = "GitSignsAdd",    
    },

    -- Git изменения
    GitChange = {
        text = "ᛋ",                   
        priority = 7,                 
        highlight = "GitSignsChange", 
    },

    -- Git удаление
    GitDelete = {
        text = "ᛞ",                   
        priority = 7,                 
        highlight = "GitSignsDelete", 
    },

    -- Дополнительные маркеры:

    -- Маркер для кастомных изменений
    CustomChange = {
        text = "ᛘ",                   
        priority = 8,                 
        highlight = "Normal",        
    },

    -- Отладка
    Debug = {
        text = "ᛦ",                   
        priority = 9,                 
        highlight = "DiagnosticVirtualTextDebug",  
    },

    -- Маркеры для других типов кода (например, для SQL, HTML, JS)
    SQLQuery = {
        text = "ᛉ",                   
        priority = 10,                 
        highlight = "Normal",         
    },
    HTMLTag = {
        text = "ᛖ",                   
        priority = 11,                 
        highlight = "Normal",        
    },

    -- Прочее состояние буфера
    BufferModified = {
        text = "ᛘ",                   
        priority = 12,                 
        highlight = "Normal",        
    },

    -- Сохранение буфера
    BufferSaved = {
        text = "᛫",                   
        priority = 13,                 
        highlight = "Normal",        
    },

    -- Маркер для новых файлов
    NewFile = {
        text = "ᛝ",                   
        priority = 14,                 
        highlight = "Normal",        
    },

    -- Работа с тестами
    TestFailed = {
        text = "ᛞ",                   
        priority = 15,                 
        highlight = "DiagnosticVirtualTextError",  
    },

    TestPassed = {
        text = "ᛋ",                   
        priority = 16,                 
        highlight = "DiagnosticVirtualTextInfo",  
    },

    -- Функции, классы или методы
    Function = {
        text = "ᛊ",                   
        priority = 17,                 
        highlight = "Normal",        
    },

    -- Закрытие неактивных панелей
    InactivePanel = {
        text = "ᛚ",                   
        priority = 18,                 
        highlight = "Normal",        
    },

    -- Для предупреждений, связанных с внешними плагинами или утилитами
    PluginWarning = {
        text = "ᛏ",                   
        priority = 19,                 
        highlight = "DiagnosticVirtualTextWarn",  
    },
    },

    -- Исключения для буферов
    excluded_buftypes = {
        "terminal",                         -- Исключить терминальные буферы
    },
    excluded_filetypes = {
        "dropbar_menu", "dropbar_menu_fzf", -- Исключить специфичные типы файлов
        "DressingInput", "cmp_docs", "cmp_menu",
        "noice", "prompt", "TelescopePrompt",
    },

    -- Автокоманды
    autocmd = {
        render = {
            "BufWinEnter", "TabEnter", "TermEnter", "WinEnter", 
            "CmdwinLeave", "TextChanged", "VimResized", "WinScrolled",
        },
        clear = {
            "BufWinLeave", "TabLeave", "TermLeave", "WinLeave",
        },
    },

    -- Обработчики
    handlers = {
        cursor = true,                     -- Показывать маркер для курсора на полосе прокрутки
        diagnostic = true,                  -- Показывать диагностические маркеры (ошибки, предупреждения) на полосе
        gitsigns = true,                   -- Включить поддержку Git маркеров с помощью gitsigns
        handle = true,                      -- Показывать саму полосу прокрутки
        search = true,                     -- Включить поддержку маркеров для поиска с помощью hlslens
        ale = false,                        -- Отключить поддержку ALE (если используется)
    },
})


-- Словарь рун с названиями и описаниями
local rune_descriptions = {
    ["ᚦ"] = { name = "runa Thurisaz", description = "Rune of giants, defense, or reaction" },
    ["ᚱ"] = { name = "runa Raido", description = "Rune of travel, movement, and journeys" },
    ["ᛗ"] = { name = "runa Mannaz", description = "Rune of humanity and self-awareness" },
    ["ᚲ"] = { name = "runa Kenaz", description = "Rune of knowledge and creativity" },
    ["ᚷ"] = { name = "runa Gebo", description = "Rune of gift, partnership, and balance" },
    ["ᛒ"] = { name = "runa Berkano", description = "Rune of growth, fertility, and renewal" },
    ["ᛖ"] = { name = "runa Ehwaz", description = "Rune of horse, movement, and transition" },
    ["ᛏ"] = { name = "runa Tiwaz", description = "Rune of justice, leadership, and honor" },
    ["ᛃ"] = { name = "runa Jera", description = "Rune of harvest, cycles, and rewards" },
    ["ᛗ"] = { name = "runa Mannaz", description = "Rune of humanity, self-awareness, and community" },
    ["ᚨ"] = { name = "runa Ansuz", description = "Rune of wisdom, communication, and the divine" },
    ["ᛟ"] = { name = "runa Odal", description = "Rune of inheritance, ancestry, and heritage" },
    ["ᛍ"] = { name = "runa Sowilo", description = "Rune of sun, success, and vitality" },
    ["ᛓ"] = { name = "runa Hagalaz", description = "Rune of disruption, storms, and destruction" },
    ["ᛋ"] = { name = "runa Sowilo", description = "Rune of sun, vitality, and success" },
    ["ᛞ"] = { name = "runa Dagaz", description = "Rune of day, enlightenment, and transformation" },
    ["ᛘ"] = { name = "runa Perthro", description = "Rune of fate, chance, and secrets" },
    ["ᛦ"] = { name = "runa Isa", description = "Rune of ice, stillness, and blocking" },
    ["ᛉ"] = { name = "runa Algiz", description = "Rune of protection, defense, and spirituality" },
    ["ᛖ"] = { name = "runa Ehwaz", description = "Rune of horse, transition, and partnership" },
    ["ᛝ"] = { name = "runa Inguz", description = "Rune of fertility, new beginnings, and growth" },
    ["ᛚ"] = { name = "runa Laguz", description = "Rune of water, intuition, and flow" },
}


-- Функция для отображения описания руны
function show_rune_description(buf, line, col, rune)
    local description = rune_descriptions[rune]
    if description then
        -- Отображение описания при наведении
        vim.api.nvim_buf_set_virtual_text(buf, line, col, {
            { description.name, "Comment" },  -- Название руны
            { description.description, "Comment" },  -- Описание руны
        }, {})
    end
end

-- Настройка автокоманды для отображения описания руны при наведении
vim.cmd("autocmd CursorHold * lua show_rune_description(0, vim.fn.line('.')-1, vim.fn.col('.')-1, vim.fn.expand('<cword>'))")

-- Настройка автокоманды для отображения описания руны при нажатии
vim.cmd("autocmd CursorMoved * lua show_rune_description(0, vim.fn.line('.')-1, vim.fn.col('.')-1, vim.fn.expand('<cword>'))")

EOF



"Enable Colored Indentation for Go 
lua << EOF
local highlight = {
  "IndentBlanklineIndent1",
  "IndentBlanklineIndent2",
  "IndentBlanklineIndent3",
  "IndentBlanklineIndent4",
  "IndentBlanklineIndent5",
  "IndentBlanklineIndent6",
}

vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#E06C75" }) -- red-ish
vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = "#E5C07B" }) -- yellow-ish
vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = "#98C379" }) -- green-ish
vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = "#56B6C2" }) -- cyan-ish
vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = "#61AFEF" }) -- blue-ish
vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = "#C678DD" }) -- purple-ish

require("ibl").setup {
  indent = {
    char = "│",
    highlight = highlight,
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    highlight = highlight,
  },
  exclude = {
    filetypes = { "help", "terminal", "dashboard", "NvimTree" },
    buftypes = { "terminal", "nofile" },
  },
}
EOF


lua << EOF
-- hlchunk: подсветка блоков, правая визуализация
-- Устанавливаем уникальные цвета, не пересекающиеся с indent-blankline
vim.api.nvim_set_hl(0, "Chunk1", { fg = "#FAB387" }) -- peach
vim.api.nvim_set_hl(0, "Chunk2", { fg = "#A6E3A1" }) -- green pastel
vim.api.nvim_set_hl(0, "Chunk3", { fg = "#F38BA8" }) -- pinkish red
vim.api.nvim_set_hl(0, "Chunk4", { fg = "#89DCEB" }) -- sky blue

require("hlchunk").setup({
  indent = {
    enable = true,
    chars = { "▏" },
    style = {
      { fg = "#FAB387" },
      { fg = "#A6E3A1" },
      { fg = "#F38BA8" },
      { fg = "#89DCEB" },
    },
    use_treesitter = true,
    right_align = true,
  },

  chunk = {
    enable = true,
    support_filetypes = { "*" },
    use_treesitter = true,
    chars = {
      horizontal_line = "━",
      vertical_line = "┃",
      left_top = "┏",
      left_bottom = "┗",
    },
    style = {
      { fg = "#FAB387" },
    },
  },

  line_num = {
    enable = false,
  },

  blank = {
    enable = false,
  },

  exclude = {
    filetypes = { "help", "dashboard", "NvimTree", "terminal" },
    buftypes = { "terminal", "nofile" },
  },
})
EOF


lua << EOF
-- Подключаем файловые типы для gotmpl/helm
require("go-template-plugin.filetype").setup()

-- Настройка Treesitter для Go Templates
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.gotmpl = {
  install_info = {
    url = "https://github.com/ngalaiko/tree-sitter-go-template",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "gotmpl",
}

EOF


" Treesitter config inline nvim-treesitter is being configured to highlight syntax, handle indentation, and provide advanced text object selections based on the syntax tree of various languages.
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "go",
    "python",
    "javascript",
    "sql",
    "lua",
    "html",
    "css",
    "typescript",
    "bash",
    "yaml",
    "gotmpl",
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      node_decremental = "<C-s>",
      scope_incremental = "<TAB>",
    },
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@struct.outer",    -- для Go
        ["ic"] = "@struct.inner",    -- для Go
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
      },
    },

    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]c"] = "@struct.outer",  -- для Go
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[c"] = "@struct.outer",  -- для Go
      },
      goto_next_end = {
        ["]F"] = "@function.outer",
        ["]C"] = "@struct.outer",
      },
      goto_previous_end = {
        ["[F"] = "@function.outer",
        ["[C"] = "@struct.outer",
      },
    },
  },
}
EOF


lua << EOF
require("gopher").setup {
  -- Уровень логирования
  log_level = vim.log.levels.INFO,

  -- Таймаут для выполнения команд
  timeout = 2000,

  -- Определение путей к командам
  commands = {
    go = "go",
    gomodifytags = "gomodifytags",
    gotests = "gotests",
    impl = "impl",
    iferr = "iferr",
  },

  -- Настройки для gotests
  gotests = {
    template = "default",  -- Шаблон для генерации тестов
    template_dir = nil,    -- Путь к папке с пользовательскими шаблонами (если есть)
    named = false,         -- Использование карты вместо слайса в тестах
  },

  -- Настройки для тэгов
  gotag = {
    transform = "snakecase",  -- Преобразование имен в snake_case
    default_tag = "json",     -- Тег по умолчанию для полей структур
  },

  -- Настройки для iferr
  iferr = {
    message = nil,  -- Сообщение об ошибке (если нужно)
  },
}
EOF

":GoTest Для генерации тестов Go:
":GoModifyTags Для изменения тегов Go:
":GoIfErr Для вставки обработки ошибок:
":GoImpl Для генерации методов для интерфейсов:



lua << EOF
-- Load the conform plugin configuration
local conform = require("conform")

-- Setup for conform plugin
conform.setup({
  -- Define formatters by file type
  formatters_by_ft = {
    sql = { "sql-formatter" },         -- Use sql-formatter for SQL files
    go = { "gofmt", "goimports" },     -- Use gofmt for Go, goimports for imports cleanup
    python = { "black", "isort", "ruff"},              -- Use black for Python files pipx install black flake8 isort ruff
    javascript = { "prettier" },       -- Use prettier for JavaScript files
    lua = { "stylua" },                -- Use stylua for Lua files
    -- Add more file types and formatters as necessary
  },

  -- Enable async installation of formatters
  sync_install = false,
  auto_install = true,  -- Automatically install missing formatters when a file is opened

  highlight = {
    enable = true,  -- Enable syntax highlighting with treesitter
    additional_vim_regex_highlighting = false,  -- Disable additional regex-based highlighting
  },

  indent = {
    enable = true,  -- Enable indentation based on Treesitter
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",   -- Initial selection with Enter
      node_incremental = "<CR>", -- Incremental selection with Enter
      node_decremental = "<BS>", -- Decremental selection with Backspace
      scope_incremental = "<TAB>", -- Incremental selection for scope with Tab
    },
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,  -- Smart selection (lookahead feature)
      keymaps = {
        ["af"] = "@function.outer",  -- Select entire function
        ["if"] = "@function.inner",  -- Select only function body
        ["ac"] = "@class.outer",     -- Select entire class
        ["ic"] = "@class.inner",     -- Select class body
        ["aa"] = "@parameter.outer", -- Select entire parameter
        ["ia"] = "@parameter.inner", -- Select parameter name
      },
    },
  },

  -- Add error handling (safe call for formatting)
  error_handling = {
    -- Display errors in Neovim if something goes wrong
    display_error = function(err)
      vim.api.nvim_err_writeln("Formatting error: " .. err)
    end
  }
})

-- Auto-command to format SQL files before saving
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.sql",  -- Apply to SQL files
  callback = function()
    -- Safe call to format the file
    local success, err = pcall(function()
      require('conform').format()
    end)
    if not success then
      vim.api.nvim_err_writeln("Error formatting SQL file: " .. err)
    end
  end,
})

-- Optionally, create a custom keymap for manual formatting
vim.api.nvim_set_keymap('n', '<leader>f', ':lua require("conform").format()<CR>', { noremap = true, silent = true })
EOF



lua << EOF
-- Настройка nvim-treesitter
require'nvim-treesitter.configs'.setup {
  -- Устанавливаем поддерживаемые языки
  ensure_installed = { "go", "bash", "python" }, -- Указываем языки для установки
  
  -- Включаем подсветку синтаксиса
  highlight = { 
    enable = true, 
    additional_vim_regex_highlighting = false,  -- Отключаем старую подсветку Vim
  },
  
  -- Включаем поддержку контекстных комментариев (например, для Python и Go)
  context_commentstring = { 
    enable = true, 
  },
  
  -- Включаем инкрементальный выбор
  incremental_selection = { 
    enable = true,
  },
  
  -- Включаем индентацию с помощью treesitter
  indent = { 
    enable = true,
  },
  
  -- Включаем работу с текстовыми объектами
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",  -- Выбор всей функции
        ["if"] = "@function.inner",  -- Выбор тела функции
        ["ac"] = "@class.outer",     -- Выбор класса
        ["ic"] = "@class.inner",     -- Выбор тела класса
        ["am"] = "@method.outer",    -- Выбор метода
        ["im"] = "@method.inner",    -- Выбор тела метода
        ["at"] = "@type.outer",      -- Выбор типа
        ["it"] = "@type.inner",      -- Выбор типа внутри
        ["ap"] = "@parameter.outer", -- Выбор параметра (например, аргумент функции)
        ["ip"] = "@parameter.inner", -- Выбор имени параметра
      },
    },
  },
}

-- Настройка treesitter-context
require'treesitter-context'.setup{
  enable = true,  -- Включаем контекст
  max_lines = 0,  -- Показываем контекст без ограничений по строкам
}

EOF

lua << EOF
local null_ls = require("null-ls")
--must have create revive.toml in ~/.config/revive/revive.toml  and golangci.yml  in ~/.config/golangci-lint/golangci.yml 
--можливо створено звідси але неясно   implemented by: main. implements: main.

--go install golang.org/x/tools/cmd/goimports@latest
--go install mvdan.cc/gofumpt@latest
--go install github.com/mgechev/revive@latest
--file : ~/.config/revive/revive.toml 
--Открой .go файл, попробуй внести ошибку или сохранить файл — revive должен показать диагностику, goimports/gofumpt — отформатировать.
null_ls.setup({
  sources = {
    -- goimports → добавит недостающие импорты
    null_ls.builtins.formatting.goimports,

    -- gofumpt → строгий gofmt
    null_ls.builtins.formatting.gofumpt,

    -- golangci-lint (может включать revive, если настроен в .golangci.yml)
    null_ls.builtins.diagnostics.golangci_lint.with({
      command = "golangci-lint",
      args = { "run", "--out-format", "json", "--path-prefix", vim.fn.getcwd() },
      method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
      to_temp_file = false,
    }),
  },
})
EOF

"---------------------------------------------------------------------------------
"for helm charts
lua << EOF
local null_ls = require("null-ls")
local h = require("null-ls.helpers")

local helm_lint = {
  name = "helm_lint",
  method = null_ls.methods.DIAGNOSTICS,
  filetypes = { "helm", "yaml" },
  generator = h.generator_factory({
    command = "helm",
    args = function(params)
      return { "lint", params.bufname }
    end,
    to_stdin = false,
    from_stderr = true,
    format = "line",
    check_exit_code = function(code)
      return code <= 1  -- helm lint может возвращать 1 при предупреждениях
    end,
    on_output = function(line)
      return {
        row = 1,
        col = 1,
        message = line,
        severity = vim.diagnostic.severity.WARN,
      }
    end,
  }),
}

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.yamllint,
    helm_lint,
  },
})

EOF
"for clear differnce between helm .yaml  and ansible .yaml
lua << EOF
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.yml",
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, 50, false)
    for _, line in ipairs(lines) do
      if line:match("hosts:") or line:match("tasks:") or line:match("roles:") or line:match("gather_facts:") or line:match("ansible_") then
        vim.bo.filetype = "ansible"
        return
      end
    end
    vim.bo.filetype = "yaml"
  end,
})
EOF


" Настройка для vim-test
let g:test#strategy = 'neovim'

" Настройка для neotest
lua << EOF
  local neotest = require('neotest')
  neotest.setup({
    adapters = {
      require('neotest-go'),
    },
  })
EOF

" Настройка gotests для генерации тестов
command! -nargs=1 GenerateTests :!gotests -w -only <args> %:p

" Генерация интерфейсов с помощью goimpl.nvim
command! GenerateImpl :GoImpl

" Настройка для интеграции с Go Playground через dispatch
command! GoPlayground :Dispatch go run % 


" --------------
" Настройки для which-key
lua <<EOF
local wk = require("which-key")

wk.setup({
  plugins = {
    spelling = { enabled = true, suggestions = 20 },  -- Включить поддержку орфографии
  },
  key_labels = {
    ["<leader>"] = "SPC",  -- Замена на "SPC" для удобства
  },
})

wk.register({
  ["<leader>f"] = { name = "File" },
  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
})
EOF

" Настройки для todo-comments
lua <<EOF
require("todo-comments").setup({
  signs = true,  -- Показывать иконки для комментариев в строках
  highlight = {
    keyword = "TODO",  -- Или можно настроить по своему, например, для FIXME
    pattern = [[\b(KEYWORDS)\b]],  -- Поиск слов в комментариях (можно добавить дополнительные ключевые слова)
  },
  search = {
    command = "grep -r",  -- Можно указать команду поиска для быстрого поиска в проекте
  },
})

-- Интеграция с Telescope для быстрого поиска TODO комментариев
require('telescope').load_extension('todo-comments')
EOF





" Настройки для aerial.nvim (структура файла)
lua <<EOF
require('aerial').setup({
  on_attach = function(bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>o', ':AerialToggle<CR>', { noremap = true, silent = true })
  end,
})
EOF

" Настройки для nvim-navic (breadcrumbs)
lua <<EOF
require('nvim-navic').setup({
  highlight = true,
  separator = ' > ',
  depth = 5,
})
EOF

"not work yet
" Интеграция с lualine для breadcrumbs
lua <<EOF
require('lualine').setup {
  sections = {
    lualine_c = {'filename', require('nvim-navic').get_location},
  },
}
EOF


" Открывать окно vista справа при старте
"autocmd VimEnter * Vista!!

augroup VistaAutoOpen
  autocmd!
  autocmd VimEnter * silent! Vista!!
augroup END

" Открывать боковую панель справа
let g:vista_split = 'vertical'    " Открытие окна вертикально (справа)
let g:vista_width = 30             " Устанавливаем ширину окна
let g:vista_default_executive = 'nvim_lsp'  " Используем LSP как источник данных

" Настройка для Go (если используется LSP с gopls)
let g:vista_lsp_fallback = 1  " Использовать LSP fallback для Go, если нет доступной структуры

" Включаем предпросмотр с FZF (если нужно)
let g:vista_fzf_preview = ['right:50%']

" Устанавливаем команду для генерации меток для Go (если хотите использовать ctags вместо LSP)
let g:vista_ctags_cmd = {
      \ 'go': 'ctags -R --languages=Go --exclude=.git --exclude=node_modules .',
      \ }


lua << EOF
require("diffview").setup({
  use_icons = true, -- Включение иконок (требуются nerd-fonts)
  enhanced_diff_hl = true, -- Использовать улучшенную подсветку различий

  -- Общие настройки представления
  view = {
    default = {
      layout = "diff2_horizontal",  -- Параметры: "diff2_horizontal", "diff2_vertical", "diff3"
      disable_diagnostics = true, -- Отключить диагностику во время слияния
    },
    merge_tool = {
      layout = "diff3_mixed",   -- Используем "diff3_mixed" для тройного слияния
      disable_diagnostics = true,
    },
  },

  -- Настройки панели файлов (список файлов)
  file_panel = {
    listing_style = "tree", -- Стиль списка файлов: "tree" или "list"
    tree_options = {
      flatten_dirs = true, -- Плоская структура директорий
      folder_status = "icon", -- Показывать иконку папки
    },
    win_config = {
      position = "left",  -- Позиция панели: "left" или "right"
      width = 35,         -- Ширина панели
      height = 30,        -- Высота панели
    },
  },

  -- Настройки панели с diff (сравнение файлов)
  diff_panel = {
    win_config = {
      position = "bottom",  -- Позиция панели с разницей
      height = 15,          -- Высота панели с разницей
    },
    auto_refresh = true, -- Автоматическое обновление при переключении веток
  },

  -- История файлов
  file_history_panel = {
    win_config = {
      position = "bottom",  -- Позиция истории
      height = 20,          -- Высота истории
    },
  },

  -- Поведение для разных типов диффов
  diff_args = {
    git = {
      args = { "--color=always", "--diff-algorithm=minimal" }, -- Сложность алгоритма diff
    },
  },

  -- Цвета и стили diff
  color_scheme = "auto", -- Автоопределение темы
  highlight = {
    additions = "DiffAdd", -- Добавления
    deletions = "DiffDelete", -- Удаления
    changes = "DiffChange", -- Изменения
    context = "DiffContext", -- Контекстные строки
  },

  -- Конфигурация для отображения меток и иконок в панелях
  icons = {
    added = "",    -- Иконка для добавленных строк
    modified = "", -- Иконка для измененных строк
    removed = "",  -- Иконка для удаленных строк
  },

  -- Конфигурация для merge-видов (слияния)
  merge_tool = {
    disable_diagnostics = true, -- Отключение диагностики
    diff3 = {
      layout = "diff3_mixed", -- Использование diff3 для слияний
    },
  },

  -- Глобальные параметры для сравнения двух коммитов
  compare = {
    auto_open_diff = true, -- Открытие окна diff при сравнении
  },
})
EOF


lua << EOF
require('gitsigns').setup({
  signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
  },
  current_line_blame = true,
})

require('litee.lib').setup()
require('litee.gh').setup()

EOF
" Настройка vim-dadbod
let g:db_ui_use_telescope = 1          " Использовать Telescope для поиска в базе данных
let g:db_ui_save_location = 'session'   " Сохранение соединений в сессиях
let g:db_ui_auto_select = 1             " Автоматически выбирать подключение
let g:db_ui_force_mappings = 0          " Не перезаписывать стандартные клавиши

" Пример подключения к PostgreSQL базе данных через vim-dadbod
let g:db_ui_connections = {
  \ 'my_postgres': 'postgresql://postgres:new_password@localhost:5432/my_database',
  \ }



" Настройки для работы с MongoDB
let g:vim_mongo_connection = 'mongodb://localhost:27017'

" Настройки для работы с SQL
autocmd FileType sql setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Настройки для поиска по базе данных с помощью Telescope
nnoremap <Leader>db :Telescope db<CR> " Команда для поиска в базе данных через Telescope




lua << EOF
-- YAML Language Server Configuration (без дополнительных схем)
--local schemastore = require("schemastore")
--local schemas = schemastore.yaml.schemas()

-- Выводим схемы
--print(vim.inspect(schemas))
local lspconfig = require("lspconfig")

local combined_schemas = {
  -- Manually adding the Helm Chart schema
  ["https://json.schemastore.org/helm-chart.json"] = { "charts/**/Chart.yaml" },
  ["https://json.schemastore.org/helm-values.json"] = { "charts/**/values.yaml" },

  -- Manually adding the Kustomization schema
  ["https://json.schemastore.org/kustomization.json"] = { "kustomization.yaml", "kustomization.yml" },
  
  -- Manually adding the Cilium schema
  ["https://json.schemastore.org/cilium.json"] = { "cilium.yaml", "cilium.yml" },

  -- Manually adding the Kyverno schema
  ["https://json.schemastore.org/kyverno.json"] = { "kyverno.yaml", "kyverno.yml" },

  -- Manually adding the GitHub Actions schema
  ["https://json.schemastore.org/github-workflow.json"] = { ".github/workflows/*.yml", ".github/workflows/*.yaml" },

  ["https://json.schemastore.org/kubernetes.json"] = {"*.yaml"},
}

lspconfig.yamlls.setup({
  settings = {
    yaml = {
      schemas = combined_schemas,
      validate = true,
      hover = true,
      completion = true,
    },
  },
})

local null_ls = require("null-ls")
local h = require("null-ls.helpers")

null_ls.setup({
  sources = {
    -- Helm lint
    {
      name = "helm_lint",
      method = null_ls.methods.DIAGNOSTICS,
      filetypes = { "yaml" },
      generator = h.generator_factory({
        command = "helm",
        args = { "lint", "$FILENAME" },
        format = "line",
        to_stdin = false,
        on_output = function(line, params)
          return {
            message = line,
            row = 1,
            col = 1,
            source = "helm lint",
            severity = vim.diagnostic.severity.WARN,
          }
        end,
      }),
    },

    -- kubeval
    {
      name = "kubeval",
      method = null_ls.methods.DIAGNOSTICS,
      filetypes = { "yaml" },
      generator = h.generator_factory({
        command = "kubeval",
        args = { "--output", "json", "$FILENAME" },
        format = "json_raw",
        to_stdin = false,
        on_output = function(params, done)
          local diagnostics = {}
          for _, msg in ipairs(params.output or {}) do
            if msg.errors then
              for _, err in ipairs(msg.errors) do
                table.insert(diagnostics, {
                  message = err,
                  row = 1,
                  col = 1,
                  severity = vim.diagnostic.severity.ERROR,
                  source = "kubeval",
                })
              end
            end
          end
          return diagnostics
        end,
      }),
    },
  },
})

EOF


lua << EOF
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "*/templates/*.yaml",
    "*/templates/*.tpl",
    "*/charts/**/templates/*.yaml",
    "*/charts/**/templates/*.tpl",
    "*/charts/**/Chart.yaml",
    "*/charts/**/*.yaml",  -- This will match all YAML files inside charts/
    "*/charts/**/*.tpl",   -- This will match all tpl files inside charts/
    "*/charts/**/Chart.yaml",
    "*/charts/**/values.yaml",
  },
  callback = function()
    vim.bo.filetype = "helm"
  end,
})
EOF

lua << EOF
local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "helm" },
      args = { "--parser", "yaml" },
    }),
  },
})

EOF


lua << EOF
require('fzf-lua').setup({
  winopts = {
    border = 'rounded',
    preview = {
      layout = 'vertical', -- горизонтально: 'horizontal' или 'flex'
      scrollbar = 'float',
      delay = 100,
    },
  },
  files = {
    prompt = '   Files❯ ',
    git_icons = true,
    file_icons = true,
  },
  grep = {
    prompt = ' 🔍 Grep❯ ',
    rg_opts = "--hidden --column --line-number --no-heading --color=always --smart-case -g '!{.git,node_modules}/*'",
  },
  git = {
    commits = {
      prompt = ' Git commits❯ ',
      preview = 'git show --color=always --format=fuller --stat {1}',
    },
  },
})
EOF


lua << EOF
vim.api.nvim_create_augroup("ValidateGitlabCIfiles", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    require("validate-gitlab-ci.validate-gitlab-ci").validate()
  end,
  group = "ValidateGitlabCIfiles",
  desc = "Validate Gitlab CI file on save",
  pattern = ".gitlab-ci.yml",
})
EOF

lua << EOF
local null_ls = require("null-ls")
local h = require("null-ls.helpers")

-- Линтер
local groovy_diagnostics = {
  name = "npm-groovy-lint",
  method = null_ls.methods.DIAGNOSTICS,
  filetypes = { "groovy", "jenkinsfile" },
  generator = h.generator_factory({
    command = "npm-groovy-lint",
    args = {
      "--ext", "groovy,jenkinsfile",
      "-c", "/home/mehanic/.config/nvim/lua/groovy",
      "$FILENAME",
      "--format", "json",
    },
    to_stdin = false,
    from_stderr = true,
    format = "json",
    check_exit_code = function(code)
      return code == 0 or code == 1
    end,
    on_output = function(params)
      local diagnostics = {}
      local result = vim.fn.json_decode(params.output)

      if result and type(result) == "table" then
        for _, issue in ipairs(result) do
          table.insert(diagnostics, {
            row = issue.line or 1,
            col = issue.column or 1,
            message = issue.message or "Unknown issue",
            severity = vim.diagnostic.severity[(issue.severity or "error"):upper()] or vim.diagnostic.severity.ERROR,
          })
        end
      end

      return diagnostics
    end,
  }),
}

-- Форматтер (автофикс)
local groovy_formatter = {
  name = "npm-groovy-lint-fix",
  method = null_ls.methods.FORMATTING,
  filetypes = { "groovy", "jenkinsfile" },
  generator = {
    fn = function(params)
      return {
        command = "npm-groovy-lint",
        args = {
          "--ext", "groovy,jenkinsfile",
          "-c", "/home/mehanic/.config/nvim/lua/groovy",
          params.bufname,
          "--fix",
        },
        to_stdin = false,
      }
    end,
  },
}

-- Подключение
null_ls.setup({
  sources = {
    groovy_diagnostics,
    groovy_formatter,
  },
})

-- Подключение сниппетов для Jenkinsfile
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets" })

EOF

lua << EOF
local lspconfig = require("lspconfig")

lspconfig.groovyls.setup({
  cmd = {
    "java",
    "-jar",
    "/home/mehanic/.config/nvim/lua/groovy/groovy-language-server-all.jar"
  },
  filetypes = { "groovy", "jenkinsfile" },
  root_dir = lspconfig.util.root_pattern(".git", "settings.gradle", "Jenkinsfile"),
})

EOF

lua << EOF
vim.cmd [[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePre *.groovy,*.jenkinsfile lua vim.lsp.buf.format()
  augroup END
]]
EOF


lua << EOF
local cmp = require("cmp")
--подтверждала автодополнение только если меню открыто
--а иначе — просто делала новый абзац
cmp.setup({
  mapping = {
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() and cmp.get_selected_entry() then
        cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
      else
        fallback() -- обычный Enter
      end
    end, { "i", "s" }),
  },
})

EOF


lua << EOF
-- Инициализация плагина kube-utils-nvim
require("kube-utils-nvim.init").setup {
  -- Настройка для kubectl
  kubectl = {
    command = 'kubectl',  -- Убедись, что kubectl установлен
    context_display = true,  -- Показывать контексты Kubernetes
  },

  -- Управление контекстами и namespaces
  context_and_namespace = {
    enable = true,  -- Включить возможность переключаться между контекстами и namespaces
  },

  -- Просмотр CRD (Custom Resource Definitions)
  crd_viewer = {
    enable = true,  -- Включить просмотр CRD
  },

  -- Интеграция с Helm
  helm = {
    enable = true,  -- Включить поддержку Helm
    command = 'helm',  -- Команда Helm
  },

  -- Просмотр логов Kubernetes
  log_viewer = {
    enable = true,  -- Включить просмотр логов
    format = 'json',  -- Форматирование логов в JSON
  },

  -- Интеграция с Telescope для выбора контекста и namespaces
  telescope_integration = {
    enable = true,  -- Включить интеграцию с Telescope
  },

  -- Интеграция с LSP для работы с YAML и Helm
  lsp_integration = {
    enable = true,  -- Включить LSP для YAML и Helm
  },

  -- Интеграция с K9s
  k9s_integration = {
    enable = true,  -- Включить запуск K9s из Neovim
  },
}

require('telescope').setup{
  defaults = {
    extensions = {
      telescope_k8s = {  -- Используем правильное имя расширения
        context_display = true,  -- Показывать контексты в Telescope
        namespace_display = true,  -- Показывать namespaces
        helm_releases_display = true,  -- Показывать релизы Helm
      },
    },
  },
}

-- Загружаем расширение для Kubernetes
require('telescope').load_extension('telescope_k8s')  -- Загрузка правильного расширения
-- This will create the K9s command in Neovim
vim.cmd('command! K9s :terminal k9s')
vim.cmd('command! KubeCtl :terminal kubectl')
vim.cmd('command! Helm :terminal helm')
-- Команда для просмотра всех CRD
vim.cmd('command! K8sCRD :terminal kubectl get crds')

-- Команда для просмотра подробной информации о конкретном CRD
vim.cmd('command! K8sCRDDetails :terminal kubectl describe crd <name_of_crd>')
vim.cmd('command! K8sOperators :terminal kubectl get operators')

-- Создаем пользовательскую команду "KubectlApplyFromBuffer" для Neovim с использованием vim.cmd
vim.cmd([[
  command! KubectlApplyFromBuffer execute '!kubectl apply -f ' . expand('%:p')
]])



EOF

" .jet 
augroup jet_filetype
  autocmd!
  autocmd BufRead,BufNewFile *.jet set filetype=gotmpl
augroup END


lua << EOF
require('dropbar').setup {

  -- Стили отображения
  style = 'simple',  -- Это может быть изменено на 'minimal' или 'full', в зависимости от предпочтений

  -- Разделитель для отображения путей в dropbar
  separator = ' | ',  -- Разделитель между различными метками в файле

  -- Конфигурация для отображения файлов Go в dropbar
  filetypes = {
    go = {
      enabled = true,  -- Включаем Go в список поддерживаемых типов файлов
      icon = '',  -- Добавляем иконку Go-файла
      color = '#00ADD8',  -- Выбираем цвет для файлов Go (можно настроить под свои предпочтения)
    },
    -- Добавляем поддержку Go-шаблонов
    ['go.tmpl'] = {
      enabled = true,  -- Включаем поддержку Go-шаблонов
      icon = '',  -- Иконка для Go-шаблонов (например, иконка для шаблонов или HTML)
      color = '#FFA500',  -- Цвет для Go-шаблонов (оранжевый, можно настроить)
    },
    html = {
      enabled = true,  -- Включаем поддержку HTML (которые могут использовать Go-шаблоны)
      icon = '',  -- Иконка для HTML-файлов
      color = '#E34C26',  -- Цвет для HTML-файлов
    },

    -- Добавляем поддержку Helm
    helm = {
      enabled = true,
      icon = '⚓',  -- Иконка для Helm 
      color = '#0000FF',  -- Цвет для Helm
    },
    -- Добавляем поддержку GitLab CI
    ['gitlab-ci.yml'] = {
      enabled = true,
      icon = '󰭘',  -- Иконка для GitLab CI файлов
      color = '#E14E47',  -- Цвет для GitLab CI файлов
    },

    -- Поддержка Python
    python = {
      enabled = true,
      icon = '',
      color = '#3572A5',
    },
    -- Поддержка JavaScript
    javascript = {
      enabled = true,
      icon = '',
      color = '#f7df1e',
    },
    -- Поддержка Node.js (можно использовать для файлов `.js` или `.ts`)
    nodejs = {
      enabled = true,
      icon = '',  -- Используется иконка для Node.js
      color = '#8CC84B',  -- Зеленый для Node.js
    },
    -- Поддержка Groovy
    groovy = {
      enabled = true,
      icon = '',  -- Иконка для Groovy
      color = '#4298B8',  -- Голубой цвет для Groovy
    },
    -- Поддержка Lua
    lua = {
      enabled = true,
      icon = '',  -- Иконка для Lua
      color = '#000080',  -- Синий цвет для Lua
    },
    -- Поддержка SQL
    sql = {
      enabled = true,
      icon = '',  -- Иконка для SQL
      color = '#E34F26',  -- Оранжевый для SQL
    },
    -- Поддержка MongoDB (например, для `.json` или `.mongo`)
    mongodb = {
      enabled = true,
      icon = '',  -- Иконка для MongoDB
      color = '#47A248',  -- Зеленый для MongoDB
    },
    -- Поддержка PostgreSQL
    postgresql = {
      enabled = true,
      icon = '',  -- Более подходящая иконка для PostgreSQL
      color = '#336791',  -- Синий для PostgreSQL
    },
    -- Поддержка MySQL
    mysql = {
      enabled = true,
      icon = '',  -- Иконка для MySQL
      color = '#F29111',  -- Оранжевый для MySQL
    },
  },

  -- Настройка разделителей в названии для разных частей
  components = {
    file_name = {
      enabled = true,  -- Показывать имя файла
      truncate = 40,    -- Ограничиваем количество символов в имени файла
    },
    lsp_diagnostics = {
      enabled = true,  -- Включаем отображение диагностики LSP
    },
    line_column = {
      enabled = true,  -- Включаем отображение строки и столбца
    },

    file_status = {
      enabled = true,  -- Включаем отображение статуса файла
      format = function()
         return vim.bo.modified and '' or (vim.bo.readonly and '' or '')
      end,
}
  },

  -- Выбор поведения при навигации по буферам
  navigation = {
    enable = true,  -- Включаем навигацию по буферам через dropbar
    jump_to_file = true,  -- Позволяет переходить к файлу при клике
  },

  -- Другие настройки отображения
  highlight = {
    enable = true,  -- Включаем подсветку активного элемента
    active_color = '#FFD700',  -- Выбираем цвет для активных элементов
  },
}

-- Пример настройки для других типов файлов или проектов
-- Можешь добавлять сюда другие настройки для работы с другими языками


EOF

lua << EOF
require("venv-selector").setup({
  name = { ".venv", "venv" }, -- имена папок с виртуальным окружением
  auto_refresh = true,       -- автообновление списка при открытии Neovim
  search_venv_managers = true, -- ищет также в pipenv, poetry, etc.
  dap_enabled = true,        -- если ты используешь DAP для Python
})

-- Пример биндинга (опционально):
vim.keymap.set("n", "<leader>vs", "<cmd>VenvSelect<cr>")

EOF

lua << EOF
require("oil").setup({
  -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
  -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
  default_file_explorer = true,

  -- Columns to display in the oil view
  columns = {
    "icon",
    "permissions",
    "size",
    "mtime",
  },

  -- Buffer-local options to use for oil buffers
  buf_options = {
    buflisted = false,
    bufhidden = "hide",
  },

  -- Window-local options to use for oil buffers
  win_options = {
    wrap = false,
    signcolumn = "no",
    cursorcolumn = false,
    foldcolumn = "0",
    spell = false,
    list = false,
    conceallevel = 3,
    concealcursor = "nvic",
  },

  -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
  delete_to_trash = true,

  -- Skip the confirmation popup for simple operations (:help oil.skip_confirm_for_simple_edits)
  skip_confirm_for_simple_edits = true,

  -- Selecting a new/moved/renamed file or directory will prompt you to save changes first
  prompt_save_on_select_new_entry = true,

  -- Oil will automatically delete hidden buffers after this delay
  cleanup_delay_ms = 2000,

  lsp_file_methods = {
    -- Enable or disable LSP file operations
    enabled = true,
    -- Time to wait for LSP file operations to complete before skipping
    timeout_ms = 1000,
    -- Set to true to autosave buffers that are updated with LSP willRenameFiles
    -- Set to "unmodified" to only save unmodified buffers
    autosave_changes = false,
  },

  -- Constrain the cursor to the editable parts of the oil buffer
  -- Set to `false` to disable, or "name" to keep it on the file names
  constrain_cursor = "editable",

  -- Set to true to watch the filesystem for changes and reload oil
  watch_for_changes = false,

  -- Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
  -- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
  -- Additionally, if it is a string that matches "actions.<name>",
  -- it will use the mapping at require("oil.actions").<name>
  -- Set to `false` to remove a keymap
  -- See :help oil-actions for a list of all available actions
  keymaps = {
    ["g?"] = { "actions.show_help", mode = "n" },
    ["<CR>"] = "actions.select",
    ["<C-s>"] = { "actions.select", opts = { vertical = true } },
    ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
    ["<C-t>"] = { "actions.select", opts = { tab = true } },
    ["<C-p>"] = "actions.preview",
    ["<C-c>"] = { "actions.close", mode = "n" },
    ["<C-l>"] = "actions.refresh",
    ["-"] = { "actions.parent", mode = "n" },
    ["_"] = { "actions.open_cwd", mode = "n" },
    ["`"] = { "actions.cd", mode = "n" },
    ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
    ["gs"] = { "actions.change_sort", mode = "n" },
    ["gx"] = "actions.open_external",
    ["g."] = { "actions.toggle_hidden", mode = "n" },
    ["g\\"] = { "actions.toggle_trash", mode = "n" },
  },

  -- Set to false to disable all of the above keymaps
  use_default_keymaps = true,

  -- View options
  view_options = {
    -- Show files and directories that start with "."
    show_hidden = true,
    -- This function defines what is considered a "hidden" file
    is_hidden_file = function(name)
      return vim.startswith(name, ".")
    end,
    -- Sort file names with numbers in a more intuitive order for humans.
    -- Can be "fast", true, or false. "fast" will turn it off for large directories.
    natural_order = true,
    -- Sort file and directory names case insensitive
    case_insensitive = false,
    sort = {
      -- sort order can be "asc" or "desc"
      { "type", "asc" },
      { "name", "asc" },
    },
    -- Customize the highlight group for the file name
    highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
      return nil
    end,
  },

  -- Extra arguments to pass to SCP when moving/copying files over SSH
  extra_scp_args = {},

  -- EXPERIMENTAL support for performing file operations with git
  git = {
    -- Return true to automatically git add/mv/rm files
    add = function(path)
      return false
    end,
    mv = function(src_path, dest_path)
      return false
    end,
    rm = function(path)
      return false
    end,
  },

  -- Configuration for the floating window in oil.open_float
  float = {
    -- Padding around the floating window
    padding = 2,
    -- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    max_width = 0.8,
    max_height = 0.2,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
    -- optionally override the oil buffers window title with custom function: fun(winid: integer): string
    get_win_title = nil,
    -- preview_split: Split direction: "auto", "left", "right", "above", "below".
    preview_split = "auto",
    -- This is the config that will be passed to nvim_open_win.
    -- Change values here to customize the layout
    override = function(conf)
      return conf
    end,
  },

  -- Configuration for the file preview window
  preview_win = {
    -- Whether the preview window is automatically updated when the cursor is moved
    update_on_cursor_moved = true,
    -- How to open the preview window "load"|"scratch"|"fast_scratch"
    preview_method = "fast_scratch",
    -- A function that returns true to disable preview on a file e.g. to avoid lag
    disable_preview = function(filename)
      return false
    end,
    -- Window-local options to use for preview window buffers
    win_options = {},
  },

  -- Configuration for the floating action confirmation window
  confirmation = {
    -- Width dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    -- min_width and max_width can be a single value or a list of mixed integer/float types.
    -- max_width = {100, 0.8} means "the lesser of 100 columns or 80% of total"
    max_width = 0.9,
    -- min_width = {40, 0.4} means "the greater of 40 columns or 40% of total"
    min_width = { 40, 0.4 },
    -- optionally define an integer/float for the exact width of the preview window
    width = nil,
    -- Height dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    -- min_height and max_height can be a single value or a list of mixed integer/float types.
    -- max_height = {80, 0.9} means "the lesser of 80 columns or 90% of total"
    max_height = 0.9,
    -- min_height = {5, 0.1} means "the greater of 5 columns or 10% of total"
    min_height = { 5, 0.1 },
    -- optionally define an integer/float for the exact height of the preview window
    height = nil,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },

  -- Configuration for the floating progress window
  progress = {
    max_width = 0.9,
    min_width = { 40, 0.4 },
    width = nil,
    max_height = { 10, 0.9 },
    min_height = { 5, 0.1 },
    height = nil,
    border = "rounded",
    minimized_border = "none",
    win_options = {
      winblend = 0,
    },
  },

  -- Configuration for the floating SSH window
  ssh = {
    border = "rounded",
  },

  -- Configuration for the floating keymaps help window
  keymaps_help = {
    border = "rounded",
  },
})

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values

vim.api.nvim_create_user_command("OilCopyDir", function()
  local function pick_dir(prompt_title, callback)
    pickers.new({}, {
      prompt_title = prompt_title,
      finder = finders.new_oneshot_job({
        "find", ".", "-type", "d", "-not", "-path", "*/.git/*"
      }, {
        cwd = vim.loop.cwd(),
      }),
      sorter = conf.generic_sorter({}),
      attach_mappings = function(prompt_bufnr, _)
        actions.select_default:replace(function()
          local selection = action_state.get_selected_entry()
          if not selection then
            vim.notify("❌ Ничего не выбрано", vim.log.levels.WARN)
            return
          end
          actions.close(prompt_bufnr)
          callback(selection[1])
        end)
        return true
      end,
    }):find()
  end

  pick_dir("📁 Откуда копировать директорию", function(from_path)
    pick_dir("📂 Куда скопировать директорию", function(to_path)
      from_path = vim.fn.expand(from_path)
      to_path = vim.fn.expand(to_path)

      if from_path == "" or to_path == "" then
        vim.notify("❌ Путь не указан", vim.log.levels.ERROR)
        return
      end

      if from_path == to_path then
        vim.notify("❌ Нельзя копировать директорию в саму себя", vim.log.levels.ERROR)
        return
      end

      local cmd = string.format('cp -r "%s" "%s"', from_path, to_path)
      vim.fn.jobstart(cmd, {
        stdout_buffered = true,
        stderr_buffered = true,
        on_exit = function(_, code, _)
          if code == 0 then
            vim.notify("✅ Копирование завершено!", vim.log.levels.INFO)
          else
            vim.notify("❌ Ошибка при копировании", vim.log.levels.ERROR)
          end
        end,
      })
    end)
  end)
end, {})



--//////

vim.api.nvim_create_user_command("SshRsyncUpload", function()
  local pickers = require("telescope.pickers")
  local finders = require("telescope.finders")
  local conf = require("telescope.config").values
  local previewers = require("telescope.previewers")
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  local function pick_host(callback)
    local ssh_config = os.getenv("HOME") .. "/.ssh/config"

    pickers.new({}, {
      prompt_title = "🔌 SSH Хост",
      finder = finders.new_oneshot_job({ "awk", "/^Host / {print $2}", ssh_config }),
      previewer = previewers.new_buffer_previewer({
        title = "📄 Конфигурация SSH",
        define_preview = function(self, entry)
          local host = entry.value
          if not host or host == "" then return end

          local ssh_lines = vim.fn.systemlist("ssh -G " .. host)
          local lines = {}
          local user, hostname

          if not ssh_lines or #ssh_lines == 0 or ssh_lines[1]:match("unknown") then
            lines = vim.fn.systemlist(string.format(
              "awk 'BEGIN{p=0} /^Host %s$/ {p=1; print; next} /^Host /{p=0} p {print}' %s",
              host, ssh_config
            ))
            table.insert(lines, 1, "[⚠️ Не удалось получить ssh -G, показан raw конфиг]")
          else
            for _, line in ipairs(ssh_lines) do
              if line:match("^user ") then
                user = line:match("^user%s+(.*)")
              elseif line:match("^hostname ") then
                hostname = line:match("^hostname%s+(.*)")
              end
            end
            lines = vim.tbl_extend("force", { string.format("[✅ ssh -G: %s@%s]", user or "?", hostname or "?") }, ssh_lines)
          end

          vim.api.nvim_buf_set_lines(self.state.bufnr, 0, -1, false, lines)
        end,
      }),
      sorter = conf.generic_sorter({}),
      attach_mappings = function(bufnr, _)
        actions.select_default:replace(function()
          local selection = action_state.get_selected_entry()
          if not selection then
            vim.notify("❌ Хост не выбран", vim.log.levels.WARN)
            return
          end

          actions.close(bufnr)

          local host = selection[1]
          local ssh_output = vim.fn.systemlist("ssh -G " .. host)
          local user, hostname

          for _, line in ipairs(ssh_output) do
            if line:match("^user ") then
              user = line:match("^user%s+(.*)")
            elseif line:match("^hostname ") then
              hostname = line:match("^hostname%s+(.*)")
            end
          end

          local full_target = host
          if user and hostname then
            full_target = string.format("%s@%s", user, hostname)
          end

          callback({
            host = host,
            target = full_target,
            ssh_output = ssh_output,
          })
        end)
        return true
      end,
    }):find()
  end

  local function pick_local_dir(callback)
    pickers.new({}, {
      prompt_title = "📁 Локальная директория",
      finder = finders.new_oneshot_job({ "find", ".", "-type", "d", "-not", "-path", "*/.git/*" }),
      sorter = conf.generic_sorter({}),
      attach_mappings = function(bufnr, _)
        actions.select_default:replace(function()
          local selection = action_state.get_selected_entry()
          if not selection then
            vim.notify("❌ Директория не выбрана", vim.log.levels.WARN)
            return
          end
          actions.close(bufnr)
          callback(vim.fn.fnamemodify(selection[1], ":p"))
        end)
        return true
      end,
    }):find()
  end

  -- Выбор протокола для передачи (rsync, scp, ssh)
  local function pick_transfer_protocol(callback)
    -- Протестируем с выводом ошибок для диагностики
    vim.ui.select({ "rsync", "scp", "ssh" }, { prompt = "Выберите протокол передачи: " }, function(protocol)
      if not protocol then
        vim.notify("❌ Протокол не выбран", vim.log.levels.WARN)
        return
      end
      vim.notify("Выбран протокол: " .. protocol, vim.log.levels.INFO)  -- Для отладки
      callback(protocol)
    end)
  end

  pick_host(function(info)
    pick_local_dir(function(local_path)
      pick_transfer_protocol(function(protocol)
        vim.ui.input({ prompt = "📂 Удалённый путь на " .. info.target .. ": " }, function(remote_path)
          if not remote_path or remote_path == "" then
            vim.notify("❌ Удалённый путь не указан", vim.log.levels.ERROR)
            return
          end

          -- Ищем кастомный порт из ssh -G
          local port
          for _, line in ipairs(info.ssh_output) do
            if line:match("^port ") then
              port = tonumber(line:match("^port%s+(%d+)"))
            end
          end

          local ssh_option = (port and port ~= 22) and string.format("-e 'ssh -p %d'", port) or ""
          
          local cmd
          if protocol == "rsync" then
            cmd = string.format("rsync -avz --progress %s '%s' '%s:%s'", ssh_option, local_path, info.target, remote_path)
          elseif protocol == "scp" then
            cmd = string.format("scp -r %s '%s' '%s:%s'", ssh_option, local_path, info.target, remote_path)
          elseif protocol == "ssh" then
            cmd = string.format("ssh %s '%s' 'mkdir -p %s'", ssh_option, info.target, remote_path)
          end

          vim.notify("🚀 Отправка через " .. protocol .. ": " .. cmd, vim.log.levels.INFO)

          vim.fn.jobstart(cmd, {
            stdout_buffered = true,
            stderr_buffered = true,
            on_stdout = function(_, data)
              if data and #data > 0 then
                vim.notify(table.concat(data, "\n"), vim.log.levels.INFO, { title = protocol })
              end
            end,
            on_stderr = function(_, data)
              if data and #data > 0 then
                vim.notify(table.concat(data, "\n"), vim.log.levels.WARN, { title = protocol .. " error" })
              end
            end,
            on_exit = function(_, code)
              if code == 0 then
                vim.notify("✅ Отправлено!", vim.log.levels.INFO)
              else
                vim.notify("❌ Ошибка при отправке", vim.log.levels.ERROR)
              end
            end,
          })
        end)
      end)
    end)
  end)
end, {})


EOF

"----------------------------------------------------------------------------------------------------------
lua << EOF
-- ~/.config/nvim/lua/snacks-config.lua (или в init.lua напрямую)
require("snacks").setup({
  picker = {
    enabled = true,
    sources = {
      explorer = {
        auto_close = true,
        hidden = true,
        layout = {
          preset = "default",
          preview = false,
        },
        actions = {
          copy_file_path = {
            action = function(_, item)
              if not item then return end
              local vals = {
                ["BASENAME"] = vim.fn.fnamemodify(item.file, ":t:r"),
                ["EXTENSION"] = vim.fn.fnamemodify(item.file, ":t:e"),
                ["FILENAME"] = vim.fn.fnamemodify(item.file, ":t"),
                ["PATH"] = item.file,
                ["PATH (CWD)"] = vim.fn.fnamemodify(item.file, ":."),
                ["PATH (HOME)"] = vim.fn.fnamemodify(item.file, ":~"),
                ["URI"] = vim.uri_from_fname(item.file),
              }
              local options = vim.tbl_filter(function(val)
                return vals[val] ~= ""
              end, vim.tbl_keys(vals))
              if vim.tbl_isempty(options) then
                vim.notify("No values to copy", vim.log.levels.WARN)
                return
              end
              table.sort(options)
              vim.ui.select(options, {
                prompt = "Choose to copy to clipboard:",
                format_item = function(list_item)
                  return ("%s: %s"):format(list_item, vals[list_item])
                end,
              }, function(choice)
                local result = vals[choice]
                if result then
                  vim.fn.setreg("+", result)
                  require("snacks").notify.info("Yanked `" .. result .. "`")
                end
              end)
            end,
          },
          search_in_directory = {
            action = function(_, item)
              if not item then return end
              local dir = vim.fn.fnamemodify(item.file, ":p:h")
              require("snacks").picker.grep({
                cwd = dir,
                cmd = "rg",
                args = {
                  "-g", "!.git", "-g", "!node_modules", "-g", "!dist",
                  "-g", "!build", "-g", "!coverage", "-g", "!.DS_Store",
                  "-g", "!.docusaurus", "-g", "!.dart_tool",
                },
                show_empty = true,
                hidden = true,
                ignored = true,
                follow = false,
                supports_live = true,
              })
            end,
          },
          diff = {
            action = function(picker)
              picker:close()
              local sel = picker:selected()
              if #sel > 1 then
                vim.cmd("tabnew " .. sel[1].file)
                vim.cmd("vert diffs " .. sel[2].file)
                require("snacks").notify.info("Diffing " .. sel[1].file .. " against " .. sel[2].file)
              else
                require("snacks").notify.info("Select two entries for the diff")
              end
            end,
          },
        },
        win = {
          list = {
            keys = {
              ["y"] = "copy_file_path",
              ["s"] = "search_in_directory",
              ["D"] = "diff",
            },
          },
        },
      },
    },
  },
})

-- Открыть файловый "explorer" snacks
vim.api.nvim_create_user_command("SnacksExplorer", function()
  require("snacks").picker.explorer()
end, {})

-- Поиск по проекту (grep)
vim.api.nvim_create_user_command("SnacksGrep", function()
  require("snacks").picker.grep()
end, {})

-- Поиск файлов (аналог telescope find_files)
vim.api.nvim_create_user_command("SnacksFiles", function()
  require("snacks").picker.files()
end, {})


-- Snacks Explorer
vim.keymap.set("n", "<leader>se", function()
  require("snacks").picker.explorer()
end, { desc = "Snacks: Explorer" })

-- Snacks Grep (поиск по тексту)
vim.keymap.set("n", "<leader>sg", function()
  require("snacks").picker.grep()
end, { desc = "Snacks: Grep" })

-- Snacks Files (поиск по имени файла)
vim.keymap.set("n", "<leader>sf", function()
  require("snacks").picker.files()
end, { desc = "Snacks: Files" })

EOF

lua << EOF
-- todo-comments
require("todo-comments").setup({
  signs = true,
  keywords = {
    TODO = { icon = " ", color = "info" },
    FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "ISSUE" } },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    HACK = { icon = " ", color = "warning" },
    PERF = { icon = " ", color = "default", alt = { "OPTIMIZE" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  },
  highlight = {
    keyword = "wide",
    after = "fg",
    comments_only = true,
  },
  search = {
    command = "rg",
    args = {
      "--color=never", "--no-heading", "--with-filename",
      "--line-number", "--column",
    },
    pattern = [[\b(KEYWORDS):]],
  },
})

-- Подключаем расширение в Telescope
require("telescope").load_extension("todo-comments")

-- Горячая клавиша
vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope<CR>", { desc = "🔍 Поиск TODO через Telescope" })


EOF



" Настройки плагина
" Настройки markdown-preview.nvim
" Настройки плагина markdown-preview.nvim
" Настройки плагина markdown-preview.nvim
let g:mkdp_auto_start = 0                    " Не запускать предварительный просмотр автоматически при открытии файла
let g:mkdp_auto_close = 1                    " Закрывать окно предварительного просмотра, когда переключаюсь на другой буфер
let g:mkdp_refresh_slow = 0                  " Обновление страницы при сохранении или выходе из режима вставки
let g:mkdp_command_for_global = 0            " Использовать команды только для markdown файлов
let g:mkdp_open_to_the_world = 0             " Не открывать сервер в сети
let g:mkdp_open_ip = ''                      " Использовать свой IP для открытия, если работаете через SSH
let g:mkdp_browser = ''                      " По умолчанию использовать браузер по умолчанию
let g:mkdp_echo_preview_url = 1              " Показывать URL предварительного просмотра в командной строке
let g:mkdp_theme = 'light'                   " Тема для предварительного просмотра: light или dark
let g:mkdp_combine_preview = 0               " Не комбинировать окна предварительного просмотра
let g:mkdp_combine_preview_auto_refresh = 1  " Автоматически обновлять комбинированный предварительный просмотр
let g:mkdp_filetypes = ['markdown', 'vimwiki'] " Работать с файлами markdown и vimwiki
let g:mkdp_markdown_css = ''                 " Пользовательский CSS для markdown (путь к файлу CSS)
let g:mkdp_highlight_css = ''                " Пользовательский CSS для подсветки синтаксиса
let g:mkdp_images_path = expand('~/.markdown_images') " Путь к изображениям
let g:mkdp_port = ''                         " Указать порт для сервера
let g:mkdp_page_title = '「${name}」'         " Название страницы (файл будет подставлен в ${name})

" Опции рендера Markdown
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'content_editable': v:false,
      \ 'disable_filename': 0,
      \ 'toc': {}
      \ }

" Горячие клавиши для управления предварительным просмотром Markdown
nnoremap <leader>mp :MarkdownPreview<CR>      " Запуск предварительного просмотра
nnoremap <leader>ms :MarkdownPreviewStop<CR>  " Остановка предварительного просмотра
nnoremap <leader>mt :MarkdownPreviewToggle<CR> " Переключение между просмотром и закрытием

" Настройка для vimwiki синтаксиса
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': 'md'}]

lua << EOF
-- Автокоманда для открытия Leet, если это пустой Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if #vim.api.nvim_list_bufs() == 1 and vim.api.nvim_buf_get_name(0) == "" then
      vim.cmd("Leet")
    end
  end
})

-- Настройка плагина leetcode.nvim
local leetcode = require("leetcode")

leetcode.setup {
  lang = "golang",  -- Устанавливаем Go как язык по умолчанию
  keymaps = {
    list = "<leader>ll",
    solve = "<leader>ls",
    test = "<leader>lt",
    submit = "<leader>lsb",
  },
  plugins = {
    non_standalone = true,  -- Обязательно для работы Leet в непустой сессии
  },
}

-- Кастомные команды для Leetcode
vim.api.nvim_create_user_command("LeetcodeLL", function()
  vim.cmd("Leet list")
end, {})

vim.api.nvim_create_user_command("LeetcodeLS", function()
  vim.cmd("Leet solve")
end, {})

vim.api.nvim_create_user_command("LeetcodeLT", function()
  vim.cmd("Leet test")
end, {})

vim.api.nvim_create_user_command("LeetcodeLSB", function()
  vim.cmd("Leet submit")
end, {})

-- Для Easy Collection
-- Легкие задачи
vim.api.nvim_create_user_command("LeetcodeEasy", function()
  vim.cmd("Leet list tags=easy")
end, {})

-- Средние задачи
vim.api.nvim_create_user_command("LeetcodeMedium", function()
  vim.cmd("Leet list tags=medium")
end, {})

-- Трудные задачи
vim.api.nvim_create_user_command("LeetcodeHard", function()
  vim.cmd("Leet list tags=hard")
end, {})
-- Для Top Interview Questions
vim.api.nvim_create_user_command("LeetcodeTop", function()
  vim.cmd("Leet list tags=top-interview-questions")
end, {})

EOF

lua << EOF
-- Проверяем, доступен ли плагин "exercism"
local ok, exercism = pcall(require, "exercism")
if not ok then
  vim.notify("❌ Не удалось загрузить плагин exercism.nvim", vim.log.levels.ERROR)
  return
end

-- Настройка плагина "exercism"
exercism.setup({
  exercism_workspace = vim.fn.expand("~/exercism"),  -- путь к рабочему каталогу
  default_language = "go",  -- язык по умолчанию
  add_default_keybindings = true,  -- можно false, если хочешь свои бинды
  icons = {
    concept = "",
    practice = "",
  },
})
EOF

lua << EOF
-- Инициализация lspkind
require("lspkind").init({
  mode = "symbol_text",
  preset = "codicons",
  symbol_map = {
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = ":",
    Variable = "",
    Class =  "",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit =  "",
    Value = "",
    Enum = "" ,
    Keyword = "󰜰",
    Color = "󰏘",
    File = "󰀫",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰌗",
    Event = "",
    Operator = "󰆕",  
    Snippet = "",
    TypeParameter = "󰆩",

    -- Расширенные для Go
    Array = "",           -- массивы
    Slice = "󰅪",           -- слайсы
    Map = "󰘦",             -- map[string]int
    Channel = "󰖂",         -- chan  "",
    Argument = "󰘳",        -- аргументы функции
    Package = "󰏖",         -- пакеты
    Boolean = "",         -- true/false
    Number = "󰎠",          -- int, float
    String = "",          -- строка
    Nil = "",            -- nil
    Builtin = "󰨊",        -- make, new, len, cap, append, copy
    Import = "",          -- import
    Return = "󰁋",          -- return
    Loop = "",         -- for, range
    Condition = "",       -- if, else, switch
    KeywordGo = "",       -- defer, go, select
    Goroutine = "󱈅",
    Mutex = "",

  },
})

local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
  -- Окна с рамками
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      maxwidth = 50,
      ellipsis_char = "...",
      show_labelDetails = true,
    }),
  },

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),

  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }),
})

-- Цвет рамки (зелёная)
vim.api.nvim_set_hl(0, "CmpBorder", { fg = "#00FF00" })     -- окно автодополнения
vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#00FF00" })  -- окно документации

-- Цветовая схема для nvim-cmp kind-иконок и источников
vim.api.nvim_set_hl(0, "CmpItemKindSnippet",   { fg = "#ff9e64" })  -- оранжевый для сниппетов
vim.api.nvim_set_hl(0, "CmpItemKindFunction",  { fg = "#b4f9f8" })
vim.api.nvim_set_hl(0, "CmpItemKindVariable",  { fg = "#e3e3e3" })
vim.api.nvim_set_hl(0, "CmpItemKindKeyword",   { fg = "#c792ea" })
vim.api.nvim_set_hl(0, "CmpItemKindText",      { fg = "#9ece6a" })
vim.api.nvim_set_hl(0, "CmpItemKindClass",     { fg = "#f9d849" })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch",     { fg = "#569CD6", bold = true })
vim.api.nvim_set_hl(0, "CmpItemMenu",          { fg = "#aaaaaa" })

-- Функция, которая обновляет стили после загрузки плагинов
vim.cmd("autocmd VimEnter * lua SetCmpColors()")

-- Функция для установки цветов
function SetCmpColors()
  -- Цвет рамки автодополнения и документации (зелёная)
  vim.api.nvim_set_hl(0, "CmpBorder", { fg = "#00FF00" })     -- окно автодополнения
  vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#00FF00" })  -- окно документации
-- Цвет текста в окне документации
--vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#ff9e64", bg = "#1e1e2e" })

-- Рамка документации (если не сработала CmpDocBorder)
--vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#00ff00", bg = "#1e1e2e" })

  -- Цветовая схема для nvim-cmp kind-иконок и источников
  vim.api.nvim_set_hl(0, "CmpItemKindSnippet",   { fg = "#ff9e64" })  -- оранжевый для сниппетов
  vim.api.nvim_set_hl(0, "CmpItemKindFunction",  { fg = "#b4f9f8" })
  vim.api.nvim_set_hl(0, "CmpItemKindVariable",  { fg = "#e3e3e3" })
  vim.api.nvim_set_hl(0, "CmpItemKindKeyword",   { fg = "#c792ea" })
  vim.api.nvim_set_hl(0, "CmpItemKindText",      { fg = "#9ece6a" })
  vim.api.nvim_set_hl(0, "CmpItemKindClass",     { fg = "#f9d849" })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatch",     { fg = "#569CD6", bold = true })
  vim.api.nvim_set_hl(0, "CmpItemMenu",          { fg = "#aaaaaa" })

  -- Цвет скобок (оранжевые)
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#ff9e64" })  -- если используется treesitter
  vim.api.nvim_set_hl(0, "Delimiter", { fg = "#ff9e64" })             -- если нет
end
EOF


lua << EOF
vim.api.nvim_set_keymap('n', '<leader>gC', ':CoAuthor<CR>', { noremap = true, silent = true })

EOF

lua << EOF
require("codewindow").setup({
  active_in_terminals = false,
  auto_enable = false,
  exclude_filetypes = { "help" },
  max_minimap_height = nil,
  max_lines = nil,
  minimap_width = 20,
  use_lsp = true,
  use_treesitter = true,
  use_git = true,
  width_multiplier = 4,
  z_index = 1,
  show_cursor = true,
  screen_bounds = "lines",
  window_border = "single",
  relative = "win",
  events = {
    "TextChanged",
    "InsertLeave",
    "DiagnosticChanged",
    "FileWritePost",
  },
})

-- Клавиши по умолчанию (<leader>mw = toggle, <leader>me = enable, <leader>md = disable):
require("codewindow").apply_default_keybinds()

-- 💡 Кастомная команда:
vim.api.nvim_create_user_command("MinimapToggle", function()
  require("codewindow").toggle_minimap()
end, { desc = "Toggle Code Minimap" })

EOF


lua << EOF
-- should more better to learn
require"octo".setup({
  use_local_fs = false,                    -- use local files on right side of reviews
  enable_builtin = false,                  -- shows a list of builtin actions when no action is provided
  default_remote = {"upstream", "origin"}, -- order to try remotes
  default_merge_method = "commit",         -- default merge method which should be used for both Octo pr merge and merging from picker, could be commit, rebase or squash
  default_delete_branch = false,           -- whether to delete branch when merging pull request with either Octo pr merge or from picker (can be overridden with delete/nodelete argument to Octo pr merge)
  ssh_aliases = {},                        -- SSH aliases. e.g. ssh_aliases = {["github.com-work"] = "github.com"}. The key part will be interpreted as an anchored Lua pattern.
  picker = "telescope",                    -- or "fzf-lua" or "snacks"
  picker_config = {
    use_emojis = false,                    -- only used by "fzf-lua" picker for now
    mappings = {                           -- mappings for the pickers
      open_in_browser = { lhs = "<C-b>", desc = "open issue in browser" },
      copy_url = { lhs = "<C-y>", desc = "copy url to system clipboard" },
      checkout_pr = { lhs = "<C-o>", desc = "checkout pull request" },
      merge_pr = { lhs = "<C-r>", desc = "merge pull request" },
    },
    snacks = {                                -- snacks specific config
      actions = {                             -- custom actions for specific snacks pickers (array of tables)
        issues = {                            -- actions for the issues picker
          -- { name = "my_issue_action", fn = function(picker, item) print("Issue action:", vim.inspect(item)) end, lhs = "<leader>a", desc = "My custom issue action" },
        },
        pull_requests = {                     -- actions for the pull requests picker
          -- { name = "my_pr_action", fn = function(picker, item) print("PR action:", vim.inspect(item)) end, lhs = "<leader>b", desc = "My custom PR action" },
        },
        notifications = {},                   -- actions for the notifications picker
        issue_templates = {},                 -- actions for the issue templates picker
        search = {},                          -- actions for the search picker
        -- ... add actions for other pickers as needed
      },
    },
  },
  comment_icon = "▎",                      -- comment marker
  outdated_icon = "󰅒 ",                    -- outdated indicator
  resolved_icon = " ",                    -- resolved indicator
  reaction_viewer_hint_icon = " ",        -- marker for user reactions
  commands = {},                           -- additional subcommands made available to Octo command
  users = "search",                        -- Users for assignees or reviewers. Values: "search" | "mentionable" | "assignable"
  user_icon = " ",                        -- user icon
  ghost_icon = "󰊠 ",                       -- ghost icon
  timeline_marker = " ",                  -- timeline marker
  timeline_indent = "2",                   -- timeline indentation
  use_timeline_icons = true,               -- toggle timeline icons
  timeline_icons = {                       -- the default icons based on timelineItems
    commit = "  ",
    label = "  ",
    reference = " ",
    connected = "  ",
    subissue = "  ",
    cross_reference = "  ",
    parent_issue = "  ",
    pinned = "  ",
    milestone = "  ",
    renamed = "  ",
    merged = { "  ", "OctoPurple" },
    closed = {
      closed = { "  ", "OctoRed" },
      completed = { "  ", "OctoPurple" },
      not_planned = { "  ", "OctoGrey" },
      duplicate = { "  ", "OctoGrey" },
    },
    reopened = { "  ", "OctoGreen" },
    assigned = "  ",
    review_requested = "  ",
  },
  right_bubble_delimiter = "",            -- bubble delimiter
  left_bubble_delimiter = "",             -- bubble delimiter
  github_hostname = "",                    -- GitHub Enterprise host
  snippet_context_lines = 4,               -- number or lines around commented lines
  gh_cmd = "gh",                           -- Command to use when calling Github CLI
  gh_env = {},                             -- extra environment variables to pass on to GitHub CLI, can be a table or function returning a table
  timeout = 5000,                          -- timeout for requests between the remote server
  default_to_projects_v2 = false,          -- use projects v2 for the Octo card ... command by default. Both legacy and v2 commands are available under Octo cardlegacy ... and Octo cardv2 ... respectively.
  ui = {
    use_signcolumn = false,                -- show "modified" marks on the sign column
    use_signstatus = true,                 -- show "modified" marks on the status column
  },
  issues = {
    order_by = {                           -- criteria to sort results of Octo issue list
      field = "CREATED_AT",                -- either COMMENTS, CREATED_AT or UPDATED_AT (https://docs.github.com/en/graphql/reference/enums#issueorderfield)
      direction = "DESC"                   -- either DESC or ASC (https://docs.github.com/en/graphql/reference/enums#orderdirection)
    }
  },
  reviews = {
    auto_show_threads = true,              -- automatically show comment threads on cursor move
    focus             = "right",           -- focus right buffer on diff open
  },
  runs = {
    icons = {
      pending = "🕖",
      in_progress = "🔄",
      failed = "❌",
      succeeded = "",
      skipped = "⏩",
      cancelled = "✖",
    },
  },
  pull_requests = {
    order_by = {                           -- criteria to sort the results of Octo pr list
      field = "CREATED_AT",                -- either COMMENTS, CREATED_AT or UPDATED_AT (https://docs.github.com/en/graphql/reference/enums#issueorderfield)
      direction = "DESC"                   -- either DESC or ASC (https://docs.github.com/en/graphql/reference/enums#orderdirection)
    },
    always_select_remote_on_create = false -- always give prompt to select base remote repo when creating PRs
  },
  notifications = {
    current_repo_only = false,             -- show notifications for current repo only
  },
  file_panel = {
    size = 10,                             -- changed files panel rows
    use_icons = true                       -- use web-devicons in file panel (if false, nvim-web-devicons does not need to be installed)
  },
  colors = {                               -- used for highlight groups (see Colors section below)
    white = "#ffffff",
    grey = "#2A354C",
    black = "#000000",
    red = "#fdb8c0",
    dark_red = "#da3633",
    green = "#acf2bd",
    dark_green = "#238636",
    yellow = "#d3c846",
    dark_yellow = "#735c0f",
    blue = "#58A6FF",
    dark_blue = "#0366d6",
    purple = "#6f42c1",
  },
  mappings_disable_default = false,        -- disable default mappings if true, but will still adapt user mappings
  mappings = {
    runs = {
      expand_step = { lhs = "o", desc = "expand workflow step" },
      open_in_browser = { lhs = "<C-b>", desc = "open workflow run in browser" },
      refresh = { lhs = "<C-r>", desc = "refresh workflow" },
      rerun = { lhs = "<C-o>", desc = "rerun workflow" },
      rerun_failed = { lhs = "<C-f>", desc = "rerun failed workflow" },
      cancel = { lhs = "<C-x>", desc = "cancel workflow" },
      copy_url = { lhs = "<C-y>", desc = "copy url to system clipboard" },
    },
    issue = {
      close_issue = { lhs = "<localleader>ic", desc = "close issue" },
      reopen_issue = { lhs = "<localleader>io", desc = "reopen issue" },
      list_issues = { lhs = "<localleader>il", desc = "list open issues on same repo" },
      reload = { lhs = "<C-r>", desc = "reload issue" },
      open_in_browser = { lhs = "<C-b>", desc = "open issue in browser" },
      copy_url = { lhs = "<C-y>", desc = "copy url to system clipboard" },
      add_assignee = { lhs = "<localleader>aa", desc = "add assignee" },
      remove_assignee = { lhs = "<localleader>ad", desc = "remove assignee" },
      create_label = { lhs = "<localleader>lc", desc = "create label" },
      add_label = { lhs = "<localleader>la", desc = "add label" },
      remove_label = { lhs = "<localleader>ld", desc = "remove label" },
      goto_issue = { lhs = "<localleader>gi", desc = "navigate to a local repo issue" },
      add_comment = { lhs = "<localleader>ca", desc = "add comment" },
      delete_comment = { lhs = "<localleader>cd", desc = "delete comment" },
      next_comment = { lhs = "]c", desc = "go to next comment" },
      prev_comment = { lhs = "[c", desc = "go to previous comment" },
      react_hooray = { lhs = "<localleader>rp", desc = "add/remove 🎉 reaction" },
      react_heart = { lhs = "<localleader>rh", desc = "add/remove ❤️ reaction" },
      react_eyes = { lhs = "<localleader>re", desc = "add/remove 👀 reaction" },
      react_thumbs_up = { lhs = "<localleader>r+", desc = "add/remove 👍 reaction" },
      react_thumbs_down = { lhs = "<localleader>r-", desc = "add/remove 👎 reaction" },
      react_rocket = { lhs = "<localleader>rr", desc = "add/remove 🚀 reaction" },
      react_laugh = { lhs = "<localleader>rl", desc = "add/remove 😄 reaction" },
      react_confused = { lhs = "<localleader>rc", desc = "add/remove 😕 reaction" },
    },
    pull_request = {
      checkout_pr = { lhs = "<localleader>po", desc = "checkout PR" },
      merge_pr = { lhs = "<localleader>pm", desc = "merge commit PR" },
      squash_and_merge_pr = { lhs = "<localleader>psm", desc = "squash and merge PR" },
      rebase_and_merge_pr = { lhs = "<localleader>prm", desc = "rebase and merge PR" },
      list_commits = { lhs = "<localleader>pc", desc = "list PR commits" },
      list_changed_files = { lhs = "<localleader>pf", desc = "list PR changed files" },
      show_pr_diff = { lhs = "<localleader>pd", desc = "show PR diff" },
      add_reviewer = { lhs = "<localleader>va", desc = "add reviewer" },
      remove_reviewer = { lhs = "<localleader>vd", desc = "remove reviewer request" },
      close_issue = { lhs = "<localleader>ic", desc = "close PR" },
      reopen_issue = { lhs = "<localleader>io", desc = "reopen PR" },
      list_issues = { lhs = "<localleader>il", desc = "list open issues on same repo" },
      reload = { lhs = "<C-r>", desc = "reload PR" },
      open_in_browser = { lhs = "<C-b>", desc = "open PR in browser" },
      copy_url = { lhs = "<C-y>", desc = "copy url to system clipboard" },
      goto_file = { lhs = "gf", desc = "go to file" },
      add_assignee = { lhs = "<localleader>aa", desc = "add assignee" },
      remove_assignee = { lhs = "<localleader>ad", desc = "remove assignee" },
      create_label = { lhs = "<localleader>lc", desc = "create label" },
      add_label = { lhs = "<localleader>la", desc = "add label" },
      remove_label = { lhs = "<localleader>ld", desc = "remove label" },
      goto_issue = { lhs = "<localleader>gi", desc = "navigate to a local repo issue" },
      add_comment = { lhs = "<localleader>ca", desc = "add comment" },
      delete_comment = { lhs = "<localleader>cd", desc = "delete comment" },
      next_comment = { lhs = "]c", desc = "go to next comment" },
      prev_comment = { lhs = "[c", desc = "go to previous comment" },
      react_hooray = { lhs = "<localleader>rp", desc = "add/remove 🎉 reaction" },
      react_heart = { lhs = "<localleader>rh", desc = "add/remove ❤️ reaction" },
      react_eyes = { lhs = "<localleader>re", desc = "add/remove 👀 reaction" },
      react_thumbs_up = { lhs = "<localleader>r+", desc = "add/remove 👍 reaction" },
      react_thumbs_down = { lhs = "<localleader>r-", desc = "add/remove 👎 reaction" },
      react_rocket = { lhs = "<localleader>rr", desc = "add/remove 🚀 reaction" },
      react_laugh = { lhs = "<localleader>rl", desc = "add/remove 😄 reaction" },
      react_confused = { lhs = "<localleader>rc", desc = "add/remove 😕 reaction" },
      review_start = { lhs = "<localleader>vs", desc = "start a review for the current PR" },
      review_resume = { lhs = "<localleader>vr", desc = "resume a pending review for the current PR" },
      resolve_thread = { lhs = "<localleader>rt", desc = "resolve PR thread" },
      unresolve_thread = { lhs = "<localleader>rT", desc = "unresolve PR thread" },
    },
    review_thread = {
      goto_issue = { lhs = "<localleader>gi", desc = "navigate to a local repo issue" },
      add_comment = { lhs = "<localleader>ca", desc = "add comment" },
      add_suggestion = { lhs = "<localleader>sa", desc = "add suggestion" },
      delete_comment = { lhs = "<localleader>cd", desc = "delete comment" },
      next_comment = { lhs = "]c", desc = "go to next comment" },
      prev_comment = { lhs = "[c", desc = "go to previous comment" },
      select_next_entry = { lhs = "]q", desc = "move to next changed file" },
      select_prev_entry = { lhs = "[q", desc = "move to previous changed file" },
      select_first_entry = { lhs = "[Q", desc = "move to first changed file" },
      select_last_entry = { lhs = "]Q", desc = "move to last changed file" },
      close_review_tab = { lhs = "<C-c>", desc = "close review tab" },
      react_hooray = { lhs = "<localleader>rp", desc = "add/remove 🎉 reaction" },
      react_heart = { lhs = "<localleader>rh", desc = "add/remove ❤️ reaction" },
      react_eyes = { lhs = "<localleader>re", desc = "add/remove 👀 reaction" },
      react_thumbs_up = { lhs = "<localleader>r+", desc = "add/remove 👍 reaction" },
      react_thumbs_down = { lhs = "<localleader>r-", desc = "add/remove 👎 reaction" },
      react_rocket = { lhs = "<localleader>rr", desc = "add/remove 🚀 reaction" },
      react_laugh = { lhs = "<localleader>rl", desc = "add/remove 😄 reaction" },
      react_confused = { lhs = "<localleader>rc", desc = "add/remove 😕 reaction" },
      resolve_thread = { lhs = "<localleader>rt", desc = "resolve PR thread" },
      unresolve_thread = { lhs = "<localleader>rT", desc = "unresolve PR thread" },
    },
    submit_win = {
      approve_review = { lhs = "<C-a>", desc = "approve review", mode = { "n", "i" } },
      comment_review = { lhs = "<C-m>", desc = "comment review", mode = { "n", "i" } },
      request_changes = { lhs = "<C-r>", desc = "request changes review", mode = { "n", "i" } },
      close_review_tab = { lhs = "<C-c>", desc = "close review tab", mode = { "n", "i" } },
    },
    review_diff = {
      submit_review = { lhs = "<localleader>vs", desc = "submit review" },
      discard_review = { lhs = "<localleader>vd", desc = "discard review" },
      add_review_comment = { lhs = "<localleader>ca", desc = "add a new review comment", mode = { "n", "x" } },
      add_review_suggestion = { lhs = "<localleader>sa", desc = "add a new review suggestion", mode = { "n", "x" } },
      focus_files = { lhs = "<localleader>e", desc = "move focus to changed file panel" },
      toggle_files = { lhs = "<localleader>b", desc = "hide/show changed files panel" },
      next_thread = { lhs = "]t", desc = "move to next thread" },
      prev_thread = { lhs = "[t", desc = "move to previous thread" },
      select_next_entry = { lhs = "]q", desc = "move to next changed file" },
      select_prev_entry = { lhs = "[q", desc = "move to previous changed file" },
      select_first_entry = { lhs = "[Q", desc = "move to first changed file" },
      select_last_entry = { lhs = "]Q", desc = "move to last changed file" },
      close_review_tab = { lhs = "<C-c>", desc = "close review tab" },
      toggle_viewed = { lhs = "<localleader><space>", desc = "toggle viewer viewed state" },
      goto_file = { lhs = "gf", desc = "go to file" },
    },
    file_panel = {
      submit_review = { lhs = "<localleader>vs", desc = "submit review" },
      discard_review = { lhs = "<localleader>vd", desc = "discard review" },
      next_entry = { lhs = "j", desc = "move to next changed file" },
      prev_entry = { lhs = "k", desc = "move to previous changed file" },
      select_entry = { lhs = "<cr>", desc = "show selected changed file diffs" },
      refresh_files = { lhs = "R", desc = "refresh changed files panel" },
      focus_files = { lhs = "<localleader>e", desc = "move focus to changed file panel" },
      toggle_files = { lhs = "<localleader>b", desc = "hide/show changed files panel" },
      select_next_entry = { lhs = "]q", desc = "move to next changed file" },
      select_prev_entry = { lhs = "[q", desc = "move to previous changed file" },
      select_first_entry = { lhs = "[Q", desc = "move to first changed file" },
      select_last_entry = { lhs = "]Q", desc = "move to last changed file" },
      close_review_tab = { lhs = "<C-c>", desc = "close review tab" },
      toggle_viewed = { lhs = "<localleader><space>", desc = "toggle viewer viewed state" },
    },
    notification = {
      read = { lhs = "<localleader>rn", desc = "mark notification as read" },
    },
  },
})

EOF

lua << EOF
local path_actions = require('telescope_insert_path')

require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ["["] = path_actions.insert_reltobufpath_visual,
        ["]"] = path_actions.insert_abspath_visual,
        ["{"] = path_actions.insert_reltobufpath_insert,
        ["}"] = path_actions.insert_abspath_insert,
        ["-"] = path_actions.insert_reltobufpath_normal,
        ["="] = path_actions.insert_abspath_normal,
      }
    }
  }
}

-- Горячая клавиша для вызова find_files
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
EOF


lua << EOF
local lsp_signature = require("lsp_signature")

local cfg = {
  bind = true,
  hint_enable = true,
  hint_prefix = "󰊕 ",
  hint_scheme = "LspSignatureHintPrefix",
  floating_window = true,
  floating_window_above_cur_line = false,

  floating_window_off_x = function()
    local win_width = vim.api.nvim_win_get_width(0)
    local col = vim.api.nvim_win_get_cursor(0)[2]
    local max_width = 60
    local offset = win_width - col - max_width - 4
    return offset > 0 and offset or 0
  end,

  floating_window_off_y = function()
    local screen_line = vim.fn.winline()
    local win_height = vim.fn.winheight(0)
    if screen_line < 5 then
      return 1
    elseif win_height - screen_line < 5 then
      return -1
    else
      return 0
    end
  end,

  handler_opts = {
    border = "rounded",
    handler = function(sig_handler, err, result, ctx, config)
      -- Проверим, есть ли сигнатура
      if result and result.signatures and result.signatures[1] then
        local label = result.signatures[1].label or ""
        local ignore_list = { "Println", "Printf", "Print", "Errorf" }
        for _, name in ipairs(ignore_list) do
          if label:find(name) then
            return -- игнорируем
          end
        end
      end
      -- вызываем стандартный обработчик
      return sig_handler(err, result, ctx, config)
    end,
  },

  doc_lines = 2,
  max_width = 40,
  wrap = true,
}

vim.cmd([[
  highlight LspSignatureHintPrefix guifg=#ff8800 gui=bold
]])

lsp_signature.setup(cfg)
EOF



lua << EOF

local symbol_map = {
  Function  = "󰊕",
  Method    = "󰆧",
  Interface = "",
  Struct    = "󰌗",
}

-- Функция для возвращения цвета #ff8800
local function h()
  return "#ff8800"  -- Возвращаем цвет #ff8800
end

-- Настройка подсветки для разных типов символов
vim.api.nvim_set_hl(0, 'SymbolUsageHint', { fg = h(), bold = true })

-- Настройка подсветки для ссылок и других типов, не затрагивая фон
vim.api.nvim_set_hl(0, 'SymbolUsageRef', { fg = h(), bold = true })  -- только цвет текста
vim.api.nvim_set_hl(0, 'SymbolUsageRefRound', { fg = h() })  -- только цвет текста

vim.api.nvim_set_hl(0, 'SymbolUsageDef', { fg = h(), bold = true })  -- только цвет текста
vim.api.nvim_set_hl(0, 'SymbolUsageDefRound', { fg = h() })  -- только цвет текста

vim.api.nvim_set_hl(0, 'SymbolUsageImpl', { fg = h(), bold = true })  -- только цвет текста
vim.api.nvim_set_hl(0, 'SymbolUsageImplRound', { fg = h() })  -- только цвет текста

-- Функция для форматирования текста с подсветкой
local function text_format(symbol)
  local res = {}

  -- Стек символов на той же строке
  local stacked_functions_content = symbol.stacked_count > 0
      and ("+%s"):format(symbol.stacked_count)
      or ''

  -- Обработка ссылок
  if symbol.references then
    table.insert(res, { '󰆧 ' .. tostring(symbol.references), 'SymbolUsageRef' })
  end

  -- Обработка определений
  if symbol.definition then
    if #res > 0 then
      table.insert(res, { ' ', 'NonText' })
    end
    table.insert(res, { '󰍞', 'SymbolUsageDefRound' })
    table.insert(res, { '󰳽 ' .. tostring(symbol.definition), 'SymbolUsageDef' })
    table.insert(res, { '󰍟', 'SymbolUsageDefRound' })
  end

  -- Обработка реализаций
  if symbol.implementation then
    if #res > 0 then
      table.insert(res, { ' ', 'NonText' })
    end
    table.insert(res, { '󰍞', 'SymbolUsageImplRound' })
    table.insert(res, { '󰡱 ' .. tostring(symbol.implementation), 'SymbolUsageImpl' })
    table.insert(res, { '󰍟', 'SymbolUsageImplRound' })
  end

  -- Обработка стековых символов
  if stacked_functions_content ~= '' then
    if #res > 0 then
      table.insert(res, { ' ', 'NonText' })
    end
    table.insert(res, { '󰍞', 'SymbolUsageImplRound' })
    table.insert(res, { ' ' .. tostring(stacked_functions_content), 'SymbolUsageImpl' })
    table.insert(res, { '󰍟', 'SymbolUsageImplRound' })
  end

  return res
end

-- Настройка плагина
require("symbol-usage").setup({
  kinds_filter = vim.tbl_keys(symbol_map), -- использовать ключи из символов

  update_events = { "CursorHold", "InsertLeave", "BufWritePost" },
  debounce_ms = 150,
  highlight = "SymbolUsageHint",  -- Применение группы подсветки

  text_format = text_format, -- Использование нашей функции форматирования
})

EOF

lua << EOF

-- Настройка плагина gosigns.nvim
require('gosigns').setup({
  signs = {
    Interface =  "",  -- Иконка для интерфейса
    Struct    =  "󰌗",  -- Иконка для структуры
    Method    =  "",  -- Иконка для метода
  },
  show_interfaces = true,
  show_methods = true,
  show_comments = true,
})

-- Виртуальные строки над структурами, интерфейсами и методами
_G.gosigns_overlay = {}

local kind_labels = {
  [vim.lsp.protocol.SymbolKind.Interface] = "", --"интерфейс"
  [vim.lsp.protocol.SymbolKind.Struct] = "󰌗",  -- "структура реализует интерфейс"
  [vim.lsp.protocol.SymbolKind.Method] = "",  -- "метод реализует метод интерфейса"
}

-- Создание группы подсветки для цвета вишни
vim.api.nvim_set_hl(0, 'GosignCherry', { fg = '#9B111E', bg = 'NONE', bold = true })  -- Вишневый цвет для знаков

function _G.gosigns_overlay.add_comments()
  local params = { textDocument = vim.lsp.util.make_text_document_params() }
  local ns = vim.api.nvim_create_namespace("gopls_struct_tags")
  local bufnr = vim.api.nvim_get_current_buf()

  vim.lsp.buf_request(0, "textDocument/documentSymbol", params, function(err, result, _, _)
    if err or not result then return end
    vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)

    for _, item in ipairs(result) do
      local kind = item.kind
      local range = item.range

      if kind_labels[kind] then
        local line = range.start.line
        vim.api.nvim_buf_set_extmark(bufnr, ns, line, 0, {
          virt_lines = {
            { { kind_labels[kind], 'GosignCherry' } }  -- Используем группу подсветки
          },
          virt_lines_above = true,
        })
      end
    end
  end)
end

-- Автокоманда для запуска добавления комментариев
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "CursorHold" }, {
  pattern = "*.go",
  callback = function()
    _G.gosigns_overlay.add_comments()
  end,
})


EOF



lua << EOF
vim.api.nvim_set_hl(0, 'GosignCherry', { fg = '#9B111E', bg = 'NONE', bold = true })  -- Вишневый цвет для знаков

-- goplements.nvim configuration
require('goplements').setup({
  -- Префиксы, добавляемые к именам типов
  prefix = {
    interface = " interface implemented by: ",
    struct = "struct implements: ",
  },
  display_package = true,  -- Показывать полное имя пакета (например, builtins.error вместо просто error)
  
  -- Пространство имён для extmarks (обычно не нужно изменять)
  namespace_name = "goplements",
  
  highlight = "GosignCherry",  -- Убедитесь, что используется правильная группа подсветки
  
  -- Использовать nvim-treesitter для лучшего опыта
  treesitter = true,  -- Включить поддержку Treesitter для Go, если он установлен
  
  -- Если хотите отключить отображение имен интерфейсов и структур, установите в false
  show_names = true,  -- Показывать имена интерфейсов и структур рядом с определением
})
EOF



" Настройка nvim-cmp и автокоманды
lua << EOF
  local cmp = require('cmp')

  -- Настройка nvim-cmp
  cmp.setup({
    sources = {
      { name = 'go_pkgs' },  -- Источник для автодополнения Go пакетов
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
      { name = 'luasnip' },   -- Добавьте этот источник для сниппетов

    },
    formatting = {
      format = require('lspkind').cmp_format({
        menu = {
          go_pkgs = "󰏖 [pkgs]",  -- Иконка для пакетов Go
        },
      }),
    },
  })

  -- Добавляем автокоманду для инициализации пакетов Go при подключении LSP
  vim.api.nvim_create_autocmd("LspAttach", {
    pattern = { "*.go" },  -- Для Go файлов
    callback = function(args)
      -- Инициализация пакетов для автодополнения
      require("cmp_go_pkgs").init_items(args)
    end,
  })
EOF
