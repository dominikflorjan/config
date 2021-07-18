-- Escape insert mode with kj
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', {});

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


-- " Remaps TO DO
-- nnoremap <leader>y "+y
-- vnoremap <leader>y "+y
-- nnoremap <leader>Y gg"+G
-- 
-- nnoremap <leader>d "_d
-- vnoremap <leader>d "_d
-- 
-- nnoremap <leader>sv :source /home/dominik/.config/nvim/init.vim<CR>
