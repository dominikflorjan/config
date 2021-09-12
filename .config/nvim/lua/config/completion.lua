require'compe'.setup {
    source = {
        -- omni = {
            -- filetypes = {'tex'},
        -- },
        path = true;
        buffer = true;
        calc = true;
        nvim_lsp = true;
        nvim_lua = true;
        vsnip = true;
        ultisnips = true;
    },
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = {
        border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
        winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
        max_width = 120,
        min_width = 60,
        max_height = math.floor(vim.o.lines * 0.3),
        min_height = 1,
    },
}

-- require('tabout').setup {
    -- tabkey = '<Tab>', -- key to trigger tabout
    -- act_as_tab = true, -- shift content if tab out is not possible
    -- completion = true, -- if the tabkey is used in a completion pum
    -- tabouts = {
        -- {open = "'", close = "'"},
        -- {open = '"', close = '"'},
        -- {open = '`', close = '`'},
        -- {open = '(', close = ')'},
        -- {open = '[', close = ']'},
        -- {open = '{', close = '}'}
    -- },
    -- ignore_beginning = true, [> if the cursor is at the beginning of a filled element it will rather tab out than shift the content <]
    -- exclude = {} -- tabout will ignore these filetypes
-- }
