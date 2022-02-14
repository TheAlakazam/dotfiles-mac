vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- LSP Stuff
    use 'neovim/nvim-lspconfig'

    -- Telescope
    use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- Nvim-CMP
    use 'hrsh7th/nvim-cmp'
    use {'hrsh7th/cmp-nvim-lsp', requires = {'hrs7th/nvim-cmp'}}
    use {'hrsh7th/cmp-buffer', requires = {'hrs7th/nvim-cmp'}}
    use {'hrsh7th/cmp-path', requires = {'hrs7th/nvim-cmp'}}
    use {'hrsh7th/cmp-cmdline', requires = {'hrs7th/nvim-cmp'}}

    -- Snippets
    use 'hrsh7th/vim-vsnip'
    use {
        'hrsh7th/cmp-vsnip',
        requires = {'hrsh7th/vim-vsnip', 'hrsh7th/nvim-cmp'}
    }

    -- Theming
    use 'folke/tokyonight.nvim'
    use 'feline-nvim/feline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    -- Git Stuff
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'}
        -- tag = 'release' -- To use the latest release
    }
    -- Utility
    use 'tpope/vim-surround'
    use 'folke/which-key.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons' -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
end)
