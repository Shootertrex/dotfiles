return {
  "folke/which-key.nvim", -- popup menu for navigating hotkeys
  version = "^2",
  event = "VeryLazy",
  config = function()
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", count = 5, hidden = true })
    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end

    local mappings = {
      --["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
      -- ["w"] = { "<cmd>w!<CR>", "Save" },
      -- ["q"] = { "<cmd>q<CR>", "Quit" },
      ["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" },
      ["L"] = { "<cmd>Lazy<CR>", "Lazy" },
      ["x"] = { "<cmd>!chmod +x %<CR>", "chmod +x" },

      f = {
        name = "Find",
      },

      g = {
        name = "Git",
        g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
        j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
        k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
        l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
        p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
        r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
        R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
        s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
        u = {
          "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
          "Undo Stage Hunk",
        },
        d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff", },
      },

      l = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to Definition" },
        f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
        j = {
          "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
          "Next Diagnostic",
        },
        k = {
          "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
          "Prev Diagnostic",
        },
        l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
        n = { "<cmd>lua require('lspconfig').markdown_oxide.setup({})<cr><cmd>LspStart markdown_oxide<cr>", "Start markdown LSP" },
        q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
      },
      s = {
        name = "Search",
      },

      t = {
        name = "Terminal",
        t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
        p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
        f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
        h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
        v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
        a = { "<cmd>1ToggleTerm size=80<cr>", "Terminal 1" },
        b = { "<cmd>2ToggleTerm size=80<cr>", "Terminal 2" },
        c = { "<cmd>3ToggleTerm size=80<cr>", "Terminal 3" },
      },
    }
    local options = {
      -- config goes here
      mode = "n", -- NORMAL mode
      prefix = "<leader>",
      buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true, -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = true, -- use `nowait` when creating keymaps
    }

    local wk = require("which-key")
    wk.register(mappings, options)
  end,
}
