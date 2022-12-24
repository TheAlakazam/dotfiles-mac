vim.cmd [[packadd packer.nvim]]

local conf = {
    profile = {enable = true, threshold = 0},
    display = {
        open_fn = function()
            return require('packer.util').float {border = "rounded"}
        end
    }
}
-- Check if packer.nvim is installed
-- Run PackerCompile if there are changes in this file
local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" ..
                             "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        packer_bootstrap = fn.system {
            "git", "clone", "--depth", "1",
            "https://github.com/wbthomason/packer.nvim", install_path
        }
        vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
end

local function plugins(use)
    use 'wbthomason/packer.nvim'

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- LSP Stuff
    use 'neovim/nvim-lspconfig'
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
    use 'MunifTanjim/prettier.nvim'

    -- Telescope
    use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use {'nvim-telescope/telescope-ui-select.nvim'}
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
    use 'rafamadriz/friendly-snippets'

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

    -- Markdown
    use {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
        ft = "markdown",
        cmd = {"MarkdownPreview"}
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
    use {
        "numToStr/Comment.nvim",
        opt = true,
        keys = {"gc", "gcc", "gbc"},
        config = function() require("Comment").setup {} end
    }
    -- IndentLine
    use {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufReadPre",
        config = function() require("indent_blankline").setup {} end
    }

    -- Autopairs
    use {"windwp/nvim-autopairs", wants = "nvim-treesitter"}
    -- Autotag
    use {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        config = function()
            require('nvim-ts-autotag').setup {enable = true}
        end
    }
    use {"akinsho/toggleterm.nvim"}
    use {"tami5/lspsaga.nvim", branch = "nvim6.0"}
    use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
    use {'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'}

    -- Rust
    use {"simrat39/rust-tools.nvim", requires = 'nvim-lua/plenary.nvim'}

    -- Latex
    use "lervag/vimtex"
end

packer_init()
local packer = require('packer')
packer.init(conf)
packer.startup(plugins)
