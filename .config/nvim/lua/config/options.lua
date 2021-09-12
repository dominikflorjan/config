local opt = vim.opt

vim.cmd('colorscheme gruvbox') -- set colorscheme

opt.title = true
-- opt.encoding = "utf-8" -- Default in nvim
opt.belloff = "all" -- turn the bell off
opt.mouse = "n" -- enable mouse in normal mode

opt.completeopt = {'menuone', 'noselect'} -- for autocompletion menu

-- opt.pumblend = 17 -- this is weird, opacity for popup menu
opt.pumheight = 15 -- height of option menu

opt.colorcolumn = {'90'}

-- opt.wildmode = {"longest", "list", "full"}
-- opt.wildmode = opt.wildmode - "list"
-- opt.wildmode = opt.wildmode + { "longest", "full" }
-- opt.wildoptions = "pum"

opt.updatetime = 500
opt.timeoutlen = 500
opt.incsearch = true
opt.showmatch = true

opt.ignorecase = true
opt.smartcase = true
opt.hidden = true
opt.cursorline = true

opt.relativenumber = true
opt.number = true

opt.scrolloff = 10 -- scroll 10 lines before the end of window

opt.wrap = false -- do not wrap lines

opt.clipboard = "unnamedplus"

opt.swapfile = false

-- Tabs
opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.undofile = true -- enable undofile

opt.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true

opt.formatoptions = opt.formatoptions
    - 'a' -- no auto formatting
    - 'o' -- O and o doesnt't trigger comments NOT WORKING
    + 'c'
    + 'q'
    + 'r' -- continue comments when pressing enter

--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false

-- Another way of setting things:
-- vim.api.nvim_set_option('updatetime', 1000)
