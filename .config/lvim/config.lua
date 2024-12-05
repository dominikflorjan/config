-- Idk why but this has to be on the very top to work :q:Q
vim.g.maplocalleader = ","
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.leader = "space"
--
lvim.colorscheme = "codemonkey"
--
lvim.plugins = {
  { "tommason14/lammps.vim" },
  {"lunarvim/colorschemes"},
  {"lervag/vimtex"},
  {
  "ray-x/lsp_signature.nvim",
  event = "BufRead",
  config = function() require"lsp_signature".on_attach() end,
  },
  { "evesdropper/luasnip-latex-snippets.nvim" },
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {},
},
}

-- Set parent dir as telescope working directory, set it as a mapping 
local telescope = require('telescope.builtin')

-- Function to get the parent directory
function Parent_dir()
  return vim.fn.expand("%:p:h:h")
end

-- Telescope with parent directory as cwd
function Telescope_parent_dir_picker()
  telescope.find_files({ cwd = Parent_dir() })
end

-- Telescope replacement mappings
lvim.builtin.which_key.mappings = {
  f = {
    name = "Telescope",
    f = {"<cmd>lua require('telescope.builtin').find_files()<cr>", "Telescope find files"},
    g = {"<cmd>lua require('telescope.builtin').live_grep()<cr>", "Live grep"},
    b = {"<cmd>lua require('telescope.builtin').buffers({sort_mru = true})<cr>", "Buffers"},
    h = {"<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help Tags"},
    d = {"<cmd>lua Telescope_parent_dir_picker()<cr>", "Change working dir to parent dir"}
  },
}

-- Vimtex options
vim.cmd [[
    set foldmethod=expr
    set foldexpr=vimtex#fold#level(v:lnum)
]]

vim.opt.conceallevel=2
vim.g.tex_conceal = 'abdmg'

-- Enable LaTeX conceal with vimtex
vim.g.vimtex_syntax_conceal = {
    accents = 1,      -- Conceal accents
    cites = 1,        -- Conceal citations
    fancy = 1,        -- Conceal fancy elements (e.g., \alpha)
    spacing = 1,      -- Conceal spaces
    greek = 1,        -- Conceal Greek letters
    math_bounds = 1,  -- Conceal math boundary symbols
}

vim.g.vimtex_compiler_latexmk = {
    executable = 'latexmk',
    aut_dir = 'aux',
    out_dir = "out",
}

lvim.builtin.which_key.mappings["v"] = {
  name = "Vimtex",
  v = { "<cmd>:VimtexCompile<cr>", "Compile file" },
  c = { "<cmd>:VimtexClean<cr>", "Clean" },
}


-- LuaSnip optiosn

ls = require("luasnip")
ls.config.set_config({
  enable_autosnippets = true,
})

-- New Luasnip keybinds so to not use tab
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

-- default sources for all buffers
local cmp = require('cmp')
local default_cmp_sources = cmp.config.sources({
	{ name = 'nvim_lsp' },
	{ name = 'nvim_lsp_signature_help' },
}, {
	{ name = 'vsnip' },
	{ name = 'path' }
})
-- If a file is too large, I don't want to add to it's cmp sources treesitter, see:
-- https://github.com/hrsh7th/nvim-cmp/issues/1522
vim.api.nvim_create_autocmd('BufReadPre', {
	callback = function(t)
		local sources = default_cmp_sources
		if not bufIsBig(t.buf) then
			sources[#sources+1] = {name = 'treesitter', group_index = 2}
		end
	cmp.setup.buffer {
		sources = sources
	}
	end
})

bufIsBig = function(bufnr)
	local max_filesize = 100 * 1024 -- 100 KB
	local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(bufnr))
	if ok and stats and stats.size > max_filesize then
		return true
	else
		return false
	end
end
