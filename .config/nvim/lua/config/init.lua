-- vim.g.mapleader="\<Space>"
-- vim.g.maplocalleader=","
print("Hello from config init nvim")
require('config.plugins')
require('config.options')
require('config.mappings')
require('telescope').setup{ defaults = { file_ignore_patterns = {"dane"}}}
require('config.statusline')
require('config.lsp')
require('config.treesitter')
require('config.vimtex')
