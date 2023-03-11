vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'sumneko_lua',
    'texlab',
    'rust_analyzer',
    'pyright'
})

-- Function for luasnip tab mechanism
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end


-- Lsp-zero nvim cmp configuration
-- luasnip 
local luasnip = require('luasnip')
local cmp = require('cmp')

lsp.setup_nvim_cmp({
    mapping = lsp.defaults.cmp_mappings({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Tab>'] = vim.NIL,
        -- go to next placeholder in the snippet
        ['<C-l>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(1) then
                luasnip.jump(1)
            else
                fallback()
            end
        end, {'i', 's'}),
        -- go to previous placeholder in the snippet
        ['<C-d>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i', 's'}),
    })
})


lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
})
