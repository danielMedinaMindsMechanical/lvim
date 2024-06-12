-- EDITOR
lvim.colorscheme = "gruvbox-material"
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.builtin.alpha.mode = "startify"
lvim.builtin.alpha.startify.section.header.val = ""
lvim.builtin.telescope.theme = "ivy"
lvim.builtin.nvimtree.setup.filters.dotfiles = true
lvim.builtin.nvimtree.setup.filters.dotfiles = false
lvim.builtin.bufferline.options.numbers = "ordinal"

vim.opt.numberwidth = 1
vim.opt.timeoutlen = 400
vim.opt.colorcolumn = "120"
vim.opt.cursorline = false
vim.opt.cursorcolumn = true
vim.opt.scrolloff = 0
vim.opt.showmode = true
vim.opt.wrap = true
vim.opt.linebreak = true

-- USER CONFIGS
require("user.plugins")
require("user.keybinds")
require("user.whichkey")
require("user.autocommands")
require("user.laravel")
require("user.lspconfig")

-- Fix for deprecated nvim-tree config
require('ts_context_commentstring').setup {}
vim.g.skip_ts_context_commentstring_module = true

-- WSL CLIPBOARD
vim.cmd([[
    let g:clipboard = {
    \   'name': 'WslClipboard',
    \   'copy': {
    \      '+': 'clip.exe',
    \      '*': 'clip.exe',
    \    },
    \   'paste': {
    \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    \   },
    \   'cache_enabled': 0,
    \ }
]])

-- Ensure Blade files are correctly recognized
vim.cmd([[
  au BufRead,BufNewFile *.blade.php set filetype=blade
]])

-- Configure Treesitter
require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "html", "javascript", "css", "php", "blade" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Optional: Add custom Blade directives
vim.cmd([[
  let g:blade_custom_directives = ['component', 'endcomponent']
]])
