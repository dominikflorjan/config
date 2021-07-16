local opt = vim.opt

opt.title = true
opt.encoding = "utf-8"
opt.belloff = "all" -- turn the bell off
opt.mouse = "n"

opt.pumblend = 15

opt.wildmode = {"longest", "list", "full"}
opt.wildmode = opt.wildmode - "list"
opt.wildmode = opt.wildmode + { "longest", "full" }

opt.wildoptions = "pum"

opt.updatetime = 1000
opt.timeoutlen = 500
opt.incsearch = true
opt.showmatch = true

opt.ignorecase = true
opt.smartcase = true
opt.hidden = true 
opt.cursorline = true

opt.relativenumber = true 
opt.number = true

opt.ignorecase = true
opt.scrolloff = 10

opt.wrap = false

opt.clipboard = "unnamedplus"

opt.swapfile = false

-- Tabs
opt.autoindent = true
opt.tabstop = 4 
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.breakindent = true

opt.undofile = true
