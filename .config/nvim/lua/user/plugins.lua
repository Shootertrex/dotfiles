-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins

-- Install your plugins here
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "akinsho/toggleterm.nvim" -- creates a floating, toggable terminal
  use "nvim-telescope/telescope.nvim" -- Telescope
  -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- makes Telescope search sort algorithm faster "apparently"
  use "akinsho/bufferline.nvim" -- add better buffer tabs
  use "kyazdani42/nvim-web-devicons" -- provides file icons, etc.
  use "kyazdani42/nvim-tree.lua" -- file browser
  use "moll/vim-bbye"
  use "vlime/vlime"
  -- use "kovisoft/slimv"
  -- use 'feline-nvim/feline.nvim'
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }  
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'phaazon/hop.nvim', -- Easymotion-like
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      -- require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } -- default config
      require'hop'.setup { keys = 'fjdketovxqpygblzhcisuran' }
    end
  }
  use {
  "folke/which-key.nvim", -- popup menu for navigating hotkeys
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  -- Colorschemes
  use "lunarvim/colorschemes"
  use "EdenEast/nightfox.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua" -- snippets for nvim config

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use "p00f/nvim-ts-rainbow"

  -- Git
  use "lewis6991/gitsigns.nvim"

end)
