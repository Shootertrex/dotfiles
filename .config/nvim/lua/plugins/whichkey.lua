local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", count = 5, hidden = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

return {
  "folke/which-key.nvim", -- popup menu for navigating hotkeys
  version = "^3",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>c", "<cmd>Bdelete!<CR>", desc = "Close Buffer", icon = "" },
      { "<leader>L", "<cmd>Lazy<CR>", desc = "Lazy", icon = "󰒲" },

      { "<leader>f", group = "Find...", icon = "󰍉" }, -- group

      { "<leader>g", group = "Git...", icon = "" }, -- group
      -- { "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", group = "Git...", icon = "" },
      { "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", desc = "Next Hunk" },
      { "<leader>gj", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", desc = "Prev Hunk" },
      { "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", desc = "Blame" },
      { "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc = "Preview Hunk" },
      { "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc = "Reset Hunk" },
      { "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc = "Reset Buffer" },
      { "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc = "Stage Hunk" },
      { "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "Undo Stage Hunk", },
      { "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", desc = "Diff", },

      { "<leader>l", group = "LSP...", icon = "" }, -- group
      { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
      { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to Definition" },
      { "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", desc = "Format" },
      { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
      { "<leader>lI", "<cmd>LspInstallInfo<cr>", desc = "Installer Info" },
      { "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", desc = "Next Diagnostic", },
      { "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic", },
      { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
      { "<leader>ln", "<cmd>lua require('lspconfig').markdown_oxide.setup({})<cr><cmd>LspStart markdown_oxide<cr>", desc = "Start markdown LSP" },
      { "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", desc = "Quickfix" },
      { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },

      { "<leader>s", group = "Search...", icon = "󰍉" }, -- group

      { "<leader>t", group = "Terminal...", icon = "" }, -- group
      { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Float" },
      { "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Horizontal" },
      { "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Vertical" },
      { "<leader>ta", "<cmd>1ToggleTerm size=80<cr>", desc = "Terminal 1" },
      { "<leader>tb", "<cmd>2ToggleTerm size=80<cr>", desc = "Terminal 2" },
      { "<leader>tc", "<cmd>3ToggleTerm size=80<cr>", desc = "Terminal 3" },
    })
  end,
}
