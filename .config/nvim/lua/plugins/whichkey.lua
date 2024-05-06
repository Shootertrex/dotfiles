return {
  "folke/which-key.nvim", -- popup menu for navigating hotkeys
  event = "VeryLazy",
  config = function()
    local mappings = {
      --["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
      -- ["w"] = { "<cmd>w!<CR>", "Save" },
      -- ["q"] = { "<cmd>q<CR>", "Quit" },
      ["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" },
      ["L"] = { "<cmd>Lazy<CR>", "Lazy" },
      ["x"] = { "<cmd>!chmod +x %<CR>", "chmod +x" },

      f = {
        name = "Find",
        f = { "<cmd>Telescope find_files<cr>", "Find files" },
        F = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
        w = { "<cmd>Telescope live_grep<cr>", "Find words/grep" },
        b = { "<cmd>Telescope buffers<cr>", "Find buffers" },
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
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
        o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
        S = { "<cmd>Telescope git_stash<cr>", "Stash" },
        d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff", },
      },

      l = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        w = {
          "<cmd>Telescope lsp_workspace_diagnostics<cr>",
          "Workspace Diagnostics",
        },
        d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to Definition" },
        D = { "<cmd>Telescope diagnostics<cr>", "Document Diagnostics", },
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
        R = { "<cmd>Telescope lsp_references<cr>", "References" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
        S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols", },
      },
      s = {
        name = "Search",
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope commands<cr>", "Commands" },
        C = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        h = { "<cmd>Telescope help_tags<cr>", "Search Help" },
        M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        R = { "<cmd>Telescope registers<cr>", "Registers" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
      },

      t = {
        name = "Terminal",
        -- n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
        -- u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
        t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
        p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
        f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
        h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
        v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
        a = { "<cmd>2ToggleTerm size=80<cr>", "Terminal 2" },
        b = { "<cmd>3ToggleTerm size=80<cr>", "Terminal 3" },
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
