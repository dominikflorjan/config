-- Escape insert mode with kj
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {});

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Moving between splits
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', {noremap = true})

-- Show UndoTree
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeShow<CR>', {noremap = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {noremap = true})

-- NerdTree
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', {noremap=true})

-- Resize
vim.api.nvim_set_keymap('n', '<leader>+', ':vertical resize +5<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>-', ':vertical resize -5<CR>',{noremap = true, silent = true})

-- Bring search results to midscreen
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', {noremap=true})
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', {noremap=true})
-- Keep it centerd
vim.api.nvim_set_keymap('n', 'J', 'mzJ`z', {noremap = true})

-- Easier moving through wrapped lines
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap=true, silent = true})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap=true, silent = true})
vim.api.nvim_set_keymap('n', '0', 'g0', {noremap=true, silent = true})
vim.api.nvim_set_keymap('n', '$', 'g$', {noremap=true, silent = true})

-- Undo break points, you can easily add other markers
vim.api.nvim_set_keymap('i', ',', ',<c-g>u', {noremap = true})

-- Move to end, beginning of the line
vim.api.nvim_set_keymap('n', 'H', '0', {noremap = true})
vim.api.nvim_set_keymap('n', 'L', '$', {noremap = true})

-- Remaps for markdown 
vim.api.nvim_set_keymap('n', '<C-p>', ':MarkdownPreviewToggle<CR>', {noremap = true})


-- In visual mode move highlighted lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")


-- Magma mappings
vim.api.nvim_set_keymap('n', '<localleader>r', ':MagmaEvaluateOperator<CR>', {noremap=true, silent = true})
vim.api.nvim_set_keymap('n', '<localleader>rr', ':MagmaEvaluateLine<CR>', {noremap=true, silent = true})
vim.api.nvim_set_keymap('n', '<localleader>ro', ':MagmaShowOutput<CR>', {noremap=true, silent = true})


