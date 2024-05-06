return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  -- lazy = false,
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "File Tree" },
    { "<leader>E", "<cmd>NvimTreeFindFile<cr>", desc = "File Tree" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      actions = {
        open_file = {
          quit_on_open = true,
          window_picker = {
            enable = false,
          },
        },
      },
    }
  end,
}
