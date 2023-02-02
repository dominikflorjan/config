vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- For packer to work
    use 'wbthomason/packer.nvim'

    -- For lsp to work
    --
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- For better movement between files
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Colorscheme
    use { "ellisonleao/gruvbox.nvim" }

    -- For latex integration
    use { "lervag/vimtex" }

    -- Treesitter
    use ( "nvim-treesitter/nvim-treesitter" , {run = ':TSUpdate'})

    -- Undotree for file edit history
    use 'mbbill/undotree'

    -- Statusline 
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Interactive jupyter notebook inside nvim
    use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }

    -- Commentary 
    use { 'tpope/vim-commentary' }

    -- Snippets
    use({
        'L3MON4D3/LuaSnip',
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

    -- Git integration
    use 'tpope/vim-fugitive'
end)
