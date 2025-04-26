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
"				Plug 'vim-airline/vim-airdevelop/misc/line-themes'
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

        Plug 'Ramilito/kubectl.nvim'
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
        Plug 'edolphin-ydf/goimpl.nvim' ":GoImpl  И выбираешь: Тип: MyBot , Интерфейс: mypkg.Greeter ,Плагин автоматически вставит в буфер нужные методы:
        " Установка плагина gopher.nvim
        Plug 'olexsmir/gopher.nvim'
        Plug 'maxandron/goplements.nvim'
        Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }  "Ui 
        Plug 'rcarriga/nvim-dap-ui'  "Ui 
        Plug 'someone-stole-my-name/yaml-companion.nvim'
        Plug 'beargruug/skipper.nvim'
        Plug 'chomosuke/typst-preview.nvim', {'tag': 'v1.*'}
        " for mini.snippets
        Plug 'echasnovski/mini.snippets'
        Plug 'abeldekat/cmp-mini-snippets'

        " for ultisnips
       Plug 'SirVer/ultisnips'
       Plug 'quangnguyen30192/cmp-nvim-ultisnips'

       " for snippy
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
       " plagins for test code
       Plug 'vim-test/vim-test'
       Plug 'nvim-neotest/neotest'
       Plug 'nvim-telescope/telescope.nvim'
       Plug 'stevearc/aerial.nvim'
        " test generation
       Plug 'cweill/gotests'
        Plug 'nvim-neotest/neotest-go'
        "  Go Playground
        Plug 'tpope/vim-dispatch' "  vim-dispatch for send Go-кода to Go Playground
        "Allows convenient display of all available keys and their combinations..
        Plug 'folke/which-key.nvim'
        "Highlights important comments, such as TODO, FIXME, and others.
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
         " must have for diffview
         Plug 'nvim-lua/plenary.nvim'
         Plug 'sindrets/diffview.nvim'
         " for work with  SQL databases
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
        " Plug 'Saghen/kubectl.nvim'
         Plug 'edwardtheharris/kube-utils-nvim'
         Plug 'Ramilito/kubectl.nvim'

         "posibility to work with tekst
    "     Plug 'andymass/vim-matchup'
        " Source additional plugin configuration file  ---- not work
"source /home/mehanic/.config/nvim/vim-plug/vimplugin2.vim

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

"change of the default colorscheme

let mapleader = ";"
set mouse=a
set filetype=helm

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Go Language Settings
let g:goplements_enabled = 1    " Enable the plugin
let g:goplements_autocomplete = 1   " Enable autocompletion
let g:goplements_lint_on_save = 1    " Enable linting on save

" Optional: Specify the path to `gopls` if it's not in the default location
" Adjust path if needed
let g:goplements_gopls_path = '/home/mehanic/.gvm/pkgsets/go1.23.0/global/bin/gopls'


"Remap Alt + w to save the current file.
nnoremap <A-w> :w<CR>

" Show documentation with K
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
nnoremap <Leader>b :echo "Leader key works!"<CR>

" Go to definition
nmap <silent> gd <Plug>(coc-definition)

" Format on save
autocmd BufWritePre *.go :silent! CocCommand editor.action.formatDocument
autocmd TermOpen * setlocal modifiable

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

" install lualine в pluginvim.vim  runes from scandinafic culture
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
  
"----------------------------------------------------

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
      analyses = { unusedparams = true },
      staticcheck = true,
      hoverKind = "FullDocumentation", -- Полная документация при наведении
      completionDocumentation = true,  -- Описание при автодополнении
    },
  },
})

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
EOF




lua << EOF
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
EOF



lua << EOF
local dap = require('dap')
-- DAP (Debug Adapter Protocol) for Go, a Delve debugger
-- Go debug configuration using Delve
dap.adapters.go = {
  type = 'server',
  port = 38697,  -- Default port for delve
  executable = {
    command = 'dlv',  -- This is the Delve command
    args = { 'dap', '--listen=:38697', '--headless=true', '--api-version=2' },
  },
}

dap.configurations.go = {
  {
    name = 'Launch file',  -- Configuration name
    type = 'go',           -- Type of debugger
    request = 'launch',    -- Launch the program
    program = '${file}',   -- Current file to debug
  },
}

-- Key mappings for DAP (adjust as needed)
vim.api.nvim_set_keymap('n', '<F5>', ':lua require"dap".continue()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', ':lua require"dap".step_over()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F11>', ':lua require"dap".step_into()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', ':lua require"dap".step_out()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>b', ':lua require"dap".toggle_breakpoint()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', ':lua require"dap".repl.open()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>dl', ':lua require"dap".run_last()<CR>', { noremap = true })
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

"commented show in terminal
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
local nvim_lsp = require'lspconfig'

nvim_lsp.ansiblels.setup {
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yml" },
  root_dir = nvim_lsp.util.root_pattern('.git', 'ansible.cfg', 'requirements.yml', 'hosts'),

  -- Additional LSP settings
  settings = {
    ansible = {
      ansibleBin = "ansible",  -- Path to ansible binary (can be customized)
      ansibleLint = "ansible-lint",  -- Path to ansible-lint (optional)
    }
  },

  -- Autocompletion and Hover functionality
  on_attach = function(client, bufnr)
    -- Key mappings for LSP
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })

    -- Formatting on save (updated to use `server_capabilities`)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
    end
  end
}
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

lua << EOF
  -- goplements.nvim configuration
  require('goplements').setup({
    -- The prefixes prepended to the type names
    prefix = {
      interface = "implemented by: ",
      struct = "implements: ",
    },
    -- Whether to display the package name along with the type name
    display_package = true,  -- Display full package name (e.g., builtins.error instead of just error)
    
    -- The namespace to use for the extmarks (for internal use, usually no need to change this)
    namespace_name = "goplements",
    
    -- The highlight group to use for visualizing implemented structs and interfaces
    -- You can change this to any highlight group of your choice
    highlight = "Goplements",
    
    -- Optionally use nvim-treesitter for faster experience
    treesitter = true,  -- Enable Treesitter support for Go if installed
    
    -- If you want to disable displaying the interface/struct names, set to false
    show_names = true,  -- Show the names of interfaces and structs next to the definition
  })
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
  -- Убедитесь, что установлены парсеры для Go, Python, JavaScript и SQL
  ensure_installed = {
    "go",        -- Go
    "python",    -- Python
    "javascript",-- JavaScript
    "sql",       -- SQL
    "lua",       -- Lua (для настройки самого Neovim и работы с Lua кодом)
    "html",      -- HTML (для работы с веб-технологиями)
    "css",       -- CSS
    "typescript",-- TypeScript
    "bash",      -- Bash
    "yaml",       -- yaml 
    "gotmpl",    --  Go templates
  },

  sync_install = false,  -- Асинхронная установка парсеров
  auto_install = true,   -- Автоматическая установка парсеров при открытии новых типов файлов

  highlight = {
    enable = true,   -- Включение подсветки синтаксиса с использованием Treesitter
    additional_vim_regex_highlighting = false,  -- Отключаем подсветку на основе регулярных выражений
  },

  indent = {
    enable = true,   -- Включение умного выравнивания с использованием Treesitter
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",   -- Начать выбор с помощью Enter
      node_incremental = "<CR>", -- Увеличить выбор на один синтаксический узел
      node_decremental = "<BS>", -- Уменьшить выбор на один узел
      scope_incremental = "<TAB>", -- Расширить выбор на область (например, на всю функцию)
    },
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,  -- Сделать выбор более "умным" (выбор будет учитывать контекст)
      keymaps = {
        ["af"] = "@function.outer",  -- Выбрать всю функцию
        ["if"] = "@function.inner",  -- Выбрать только тело функции
        ["ac"] = "@class.outer",     -- Выбрать весь класс
        ["ic"] = "@class.inner",     -- Выбрать только тело класса
        ["aa"] = "@parameter.outer", -- Выбрать весь параметр (например, в функции)
        ["ia"] = "@parameter.inner", -- Выбрать только имя параметра
      },
    },
  },
  -- Дополнительные возможности для улучшенной навигации
  playground = {
    enable = true,
    updatetime = 25,  -- Минимальное время обновления дерева
    persist_queries = false,  -- Не сохранять запросы между сессиями
  },

  -- Для взаимодействия с другим кодом
  textsubjects = {
    enable = true,
    keymaps = {
      ["<leader>c"] = "textsubjects-smart",  -- Умная выборка контекста при использовании <leader>c
    },
  },

  -- Для отображения контекста функций
  context_commentstring = {
    enable = true,
    enable_autocmd = false,  -- Отключаем автокоманды (по желанию)
  },
}

EOF


lua << EOF
require'lspconfig'.sqls.setup{
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
require("sshfs").setup {
  mnt_base_dir = vim.fn.expand("$HOME") .. "/mnt",
  width = 0.6, -- host window width
  height = 0.5, -- host window height
  connection_icon = "✓", -- icon for connection indication
}
EOF


lua << EOF
-- Deployment configuration
return {
  ["my_remote"] = {
    host = "192.168.1.5",  -- Replace with your remote host
    username = "me",  -- Replace with your username on the remote host
    mappings = {
      {
        ["local"] = "src",  -- Local directory relative to your project root
        ["remote"] = "/var/www/html/project",  -- Remote directory to upload/download to/from
      },
    },
    excludedPaths = {  -- Optional: Directories or files to exclude from syncing
      ".git",
      "node_modules",
    },
  },
}
EOF


lua << EOF
-- Load the conform plugin configuration
local conform = require("conform")

-- Setup for conform plugin
conform.setup({
  -- Define formatters by file type
  formatters_by_ft = {
    sql = { "sql-formatter" },         -- Use sql-formatter for SQL files
    go = { "gofmt", "goimports" },     -- Use gofmt for Go, goimports for imports cleanup
    python = { "black" },              -- Use black for Python files
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
"lua << EOF
"require('mason').setup()
"require('mason-lspconfig').setup({
"ensure_installed = { "gopls", "golangci-lint", "gofumpt", "revive" },
"})
"EOF

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
require("oil").setup({
  default_file_explorer = true,
  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,
  prompt_save_on_select_new_entry = true,

  columns = {
    "icon",
    "permissions",
    "size",
    "mtime",
  },

  view_options = {
    show_hidden = true,
    is_hidden_file = function(name)
      return vim.startswith(name, ".")
    end,
    natural_order = true,
  },

  float = {
    padding = 2,
    max_width = 80,
    max_height = 20,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },

})
EOF


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

lua << EOF
require('kubectl').setup({
  log_level = vim.log.levels.INFO,
  auto_refresh = {
    enabled = true,
    interval = 300, -- milliseconds
  },
  diff = {
    bin = "kubediff" -- or any other binary
  },
  kubectl_cmd = { cmd = "kubectl", env = {}, args = {}, persist_context_change = false },
  terminal_cmd = nil, -- Exec will launch in a terminal if set, i.e. "ghostty -e"
  namespace = "All",
  namespace_fallback = {}, -- If you have limited access, you can list all the namespaces here
  hints = true,
  context = true,
  heartbeat = true,
  lineage = {
    enabled = false, -- This feature is in beta at the moment
  },
  logs = {
    prefix = true,
    timestamps = true,
    since = "5m"
  },
  alias = {
    apply_on_select_from_history = true,
    max_history = 5,
  },
  filter = {
    apply_on_select_from_history = true,
    max_history = 10,
  },
  float_size = {
    width = 0.9,
    height = 0.8,
    col = 10,
    row = 5,
  },
  obj_fresh = 5, -- highlight if creation newer than number (in minutes)
  skew = {
    enabled = true,
    log_level = vim.log.levels.INFO,
  }
})

EOF
