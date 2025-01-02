local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.o.runtimepath = vim.fn.stdpath('data')..'/site/pack*/start/*,'..vim.o.runtimepath
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    -- Apperance
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use {"lewis6991/gitsigns.nvim"}
    use {"folke/which-key.nvim"}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { "RRethy/nvim-base16" }
    use { "norcalli/nvim-colorizer.lua"}


    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {"mfussenegger/nvim-lint"}

    -- Navigation
    use { "nvim-tree/nvim-tree.lua" }
    use {'theprimeagen/harpoon'}
    use {"ggandor/leap.nvim"}
    use {"ggandor/leap-spooky.nvim"}

    -- Autocompletion
    use {"mhinz/vim-startify"}

    use {"ahmedkhalf/project.nvim"}

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {"github/copilot.vim"}
    use {"windwp/nvim-autopairs"}

    -- Git
    use {"tpope/vim-fugitive"}

    -- Debugging
    use {"mfussenegger/nvim-dap"}
    use {"rcarriga/nvim-dap-ui"}
    use {"nvim-neotest/nvim-nio"}
    use {"mfussenegger/nvim-dap-python"}

    -- tmux
    use {"aserowy/tmux.nvim"}

    -- Misc
    use {"codethread/qmk.nvim"}
    use {"airblade/vim-rooter"}
    use {"tpope/vim-repeat"}
    use {"tpope/vim-surround"}
    use {"voldikss/vim-floaterm"}

    if packer_bootstrap then
        require('packer').sync()
    end
end)

