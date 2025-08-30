return {
  'nanozuki/tabby.nvim',
  lazy = false,
  keys = {
    { "<tab>", ":tabn<CR>", desc = "Next Tab" },
    { "<S-tab>", ":tabp<CR>", desc = "Previous Tab" },
    { "<leader>Bn", ":$tabnew<CR>", desc = "New Tab" },
    { "<leader>Br", ":Tabby rename_tab ", desc = "Rename Tab" },
    { "<leader>Bc", ":tabclose<CR>", desc = "Close Tab" },
    { "<leader>Bo", ":tabonly<CR>", desc = "Close Other Tabs" },
    { "<leader>Bh", ":-tabmove<CR>", desc = "Move Tab Left" },
    { "<leader>Bl", ":+tabmove<CR>", desc = "Move Tab Right" },
  },
  config = function()
    require('tabby').setup({
      preset = 'active_wins_at_tail',
      option = {
        theme = {
          fill = 'TabLineFill',       -- tabline background
          head = 'TabLine',           -- head element highlight
          current_tab = 'TabLineSel', -- current tab label highlight
          tab = 'TabLine',            -- other tab label highlight
          win = 'TabLine',            -- window highlight
          tail = 'TabLine',           -- tail element highlight
        },
        nerdfont = true,              -- whether use nerdfont
        lualine_theme = nil,          -- lualine theme name
        tab_name = {
          name_fallback = function(tabid)
            return tabid
          end,
        },
        buf_name = {
          mode = 'unique', -- or 'relative', 'tail', 'shorten'
        },
      },
    })
  end,
}
