-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    use 'rstacruz/vim-closer'

    -- Lazy loading:
    -- Load on specific commands
    use {
        'tpope/vim-dispatch',
        opt = true,
        cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
    }

    -- Load on an autocommand event
    use {'andymass/vim-matchup', event = 'VimEnter'}

    -- Load on a combination of conditions: specific filetypes or commands
    -- Also run code after load (see the "config" key)
    use {
        'w0rp/ale',
        ft = {
            'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown',
            'racket', 'vim', 'tex'
        },
        cmd = 'ALEEnable',
        config = 'vim.cmd[[ALEEnable]]'
    }

    -- Plugins can have dependencies on other plugins
    use {
        'haorenW1025/completion-nvim',
        opt = true,
        requires = {
            {'hrsh7th/vim-vsnip', opt = true},
            {'hrsh7th/vim-vsnip-integ', opt = true}
        }
    }

    -- Plugins can have post-install/update hooks
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && yarn install',
        cmd = 'MarkdownPreview'
    }

    -- Post-install/update hook with neovim command
    -- TSInstallInfo 
    -- TSInstall javascript
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Post-install/update hook with call of vimscript function with argument
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end
    }

    -- Use dependency and run lua function after load
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula'}

    use 'joshdick/onedark.vim'
    use {"ellisonleao/gruvbox.nvim"}
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true}
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use "lukas-reineke/indent-blankline.nvim"
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {'voldikss/vim-floaterm'}
    use {
        'goolord/alpha-nvim',
        config = function()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

end)
