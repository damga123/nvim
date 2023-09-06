-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  use({ 'rose-pine/neovim', as = 'rose-pine' })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')

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

use {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons', -- optional
	},
	config = function()
		require("nvim-tree").setup {}
	end
}

use {"folke/which-key.nvim"}

use {"mhinz/vim-startify"}

use {"ahmedkhalf/project.nvim"}

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use {
  'antosha417/nvim-lsp-file-operations',
  requires = {
    { "nvim-lua/plenary.nvim" },
    { "kyazdani42/nvim-tree.lua" },
  }
}

use {"codethread/qmk.nvim"}

use {"tpope/vim-repeat"}

use {"tpope/vim-fugitive"}

use {"tpope/vim-surround"}

use {"ggandor/leap.nvim"}

use {"ggandor/leap-spooky.nvim"}

use {"lewis6991/gitsigns.nvim"}

use {"mfussenegger/nvim-lint"}

use {"mfussenegger/nvim-dap"}

use {"mfussenegger/nvim-dap-python"}

use {"airblade/vim-rooter"}

end)

