return {
  "nvim-pack/nvim-spectre",
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
  },
  config = true,
  keys = {
    { "<leader>S", "<CMD>Spectre<CR>", "Search/Replace" }
  },
}
