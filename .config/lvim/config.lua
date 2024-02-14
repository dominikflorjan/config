-- Idk why but this has to be on the very top to work 
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

ls = require("luasnip")
ls.config.set_config({
  enable_autosnippets = true,
})
