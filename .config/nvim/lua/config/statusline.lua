require('lualine').setup{
options = {theme = 'gruvbox_material'},
-- extensions = {'nerdtree', 'quickfix'},
sections = {
    lualine_a = {
        {
            'mode'
        }
    },
    lualine_b = {
        {
            'filename',
            file_status = true,
            path = 1
        },
        {
            'branch'
        }
    },
    lualine_c = {
        {
            'diagnostics',
            sources = {'nvim_lsp'},
            sections = {'error', 'warn', 'info', 'hint'},
            symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
        }
    },
},
--tabline = {
--  lualine_a = {},
--  lualine_b = {'branch'},
--  lualine_c = {'filename'},
--  lualine_x = {},
--  lualine_y = {},
--  lualine_z = {}
--  }
}
