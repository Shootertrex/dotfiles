return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  event = "BufEnter *.md",
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
  config = function ()
    require('render-markdown').setup({
      -- heading = { border = true },
      indent = {
        enabled = true,
        skip_heading = true,
      },
    })
  end
}
