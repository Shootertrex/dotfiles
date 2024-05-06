return {
  {
    "lunarvim/colorschemes",
    priority = 1000,
    lazy=false,
    config = function()
      vim.cmd [[colorscheme codemonkey]]
      vim.cmd[[hi Comment guifg = Gray]]
      vim.cmd[[hi CursorLine guibg=#444444]]
      vim.cmd[[hi DiagnosticVirtualTextError guifg=#c94f6d guibg=#3c2c3c]]
      vim.cmd[[hi DiagnosticVirtualTextWarn  guifg=#dbc074 guibg=#40423e]]
      vim.cmd[[hi DiagnosticVirtualTextInfo  guifg=#719cd6 guibg=#2b3b51]]
      vim.cmd[[hi DiagnosticVirtualTextHint  guifg=#81b29a guibg=#2e4045]]
      -- DiagnosticVirtualTextError xx guifg=#c94f6d guibg=#3c2c3c
      -- DiagnosticVirtualTextWarn xxx guifg=#dbc074 guibg=#40423e
      -- DiagnosticVirtualTextInfo xxx guifg=#719cd6 guibg=#2b3b51
      -- DiagnosticVirtualTextHint xxx guifg=#81b29a guibg=#2e4045
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    lazy=false,
    priority = 1000,
    -- config = function()
    --   vim.cmd [[colorscheme nightfox]]
    -- end,
  },
}
