-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- This command manually loads the 'packer.nvim' plugin, which is required to use packer
vim.cmd [[packadd packer.nvim]]

-- Set FloatBorder's background to be transparent
vim.cmd("highlight FloatBorder guibg=NONE")

-- The main packer function.
-- The 'use' keyword is used to specify plugins, and each plugin can have various options specified.
require('packer').startup(function(use)
  
  -- Packer can manage itself as a plugin
  use 'wbthomason/packer.nvim'

  use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
})

  -- The 'telescope.nvim' plugin, which is used for fuzzy finding and similar tasks.
  -- It requires the 'plenary.nvim' library to work properly
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- The 'nvim-treesitter' plugin, which is used for improved syntax highlighting and other features.
  -- The 'run' command updates the treesitter definitions when the plugin is installed.
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
  }

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

-- Configuring display settings for packer
require('packer').config = {
  display = {
    -- When packer's display is opened, it will open in a floating window with a single line border
    open_fn = function()
      return require('packer.util').float({
        border = { -- Add a more complex border
          {'╭', 'FloatBorder'},
          {'─', 'FloatBorder'},
          {'╮', 'FloatBorder'},
          {'│', 'FloatBorder'},
          {'╯', 'FloatBorder'},
          {'─', 'FloatBorder'},
          {'╰', 'FloatBorder'},
          {'│', 'FloatBorder'}
        },
        -- Add some padding to the window
        width = math.ceil(vim.o.columns * 0.8),
        height = math.ceil(vim.o.lines * 0.8)
      })
    end
  }
}
end)
