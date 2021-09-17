-- vim.g.mapleader="\<Space>"
-- vim.g.maplocalleader=","

require('config.options')
require('config.mappings')
require('config.statusline')
require('config.lsp')
require('config.treesitter')
require('config.completion')
require('telescope').setup{ defaults = { file_ignore_patterns = {"dane"}}}
