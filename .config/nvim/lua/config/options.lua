local opt = vim.opt

vim.o.background="dark"
vim.cmd([[colorscheme gruvbox]]) -- set colorscheme

opt.title = true
-- opt.encoding = "utf-8" -- Default in nvim
opt.belloff = "all" -- turn the bell off
opt.mouse = "n" -- enable mouse in normal mode

opt.completeopt = {'menuone', 'noselect'} -- for autocompletion menu

opt.pumheight = 15 -- height of option menu

opt.colorcolumn = {'90'}

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

-- Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = "/home/dominik/.config/.nvim/undodir"
opt.undofile = true -- enable undofile

opt.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true
