return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = "VeryLazy",
    build  = ':TSUpdate',
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "html",
          "javascript",
          "lua",
          "query",
          "rust",
          "vim",
          "vimdoc",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
  }
}

