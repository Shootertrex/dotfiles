return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      matcher = {
        frecency = true, -- frequency bonus
      },
      sources = {
        explorer = {
          auto_close = true,
        },
      },
      win = {
        input = {
          keys = {
            ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" }},
            ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" }},
            ["<c-h>"] = { "edit_split", mode = { "i", "n" }},
          }
        }
      }
    },
  },
  keys = {
    -- Top Pickers & Explorer
    { "<leader><leader>", function() Snacks.picker.buffers() end,                                 desc = "Find buffers" },
    { "<leader>c", function() Snacks.bufdelete() end,                                 desc = "Delete Buffer" },
    { "<leader>C", function() Snacks.bufdelete.all() end,                                 desc = "Delete All Buffers" },
    -- find
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Config File" },
    { "<leader>ff", function() Snacks.picker.files() end,                                   desc = "Files" },
    { "<leader>fg", function() Snacks.picker.git_files() end,                               desc = "Git Files" },
    { "<leader>fp", function() Snacks.picker.projects() end,                                desc = "Projects" },
    { "<leader>fr", function() Snacks.picker.recent() end,                                  desc = "Recent" },
    { "<leader>fw", function() Snacks.picker.grep() end,                                    desc = "By words/grep" },
    { "<leader>fW", function() Snacks.picker.grep_word() end,                               desc = "Visual selection or word", mode = { "n", "x" } },
    { "<leader>fb", function() Snacks.picker.lines() end,                                   desc = "In Current Buffer" },
    { "<leader>fB", function() Snacks.picker.grep_buffers() end,                            desc = "In All Buffers" },
    -- git
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Checkout Branch" },
    { "<leader>gc", function() Snacks.picker.git_log() end, desc = "Checkout Commit" },
    { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
    { "<leader>go", function() Snacks.picker.git_status() end, desc = "Git Status" },
    { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
    { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
    { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git File History" },
    -- search
    { '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers" },
    { '<leader>s/', function() Snacks.picker.search_history() end, desc = "Search History" },
    { "<leader>sa", function() Snacks.picker.autocmds() end, desc = "Autocmds" },
    { "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
    { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
    { "<leader>sH", function() Snacks.picker.highlights() end, desc = "Highlights" },
    { "<leader>si", function() Snacks.picker.icons() end, desc = "Icons" },
    { "<leader>sj", function() Snacks.picker.jumps() end, desc = "Jumps" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
    { "<leader>sl", function() Snacks.picker.loclist() end, desc = "Location List" },
    { "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },
    { "<leader>sM", function() Snacks.picker.man() end, desc = "Man Pages" },
    { "<leader>sp", function() Snacks.picker.lazy() end, desc = "Search for Plugin Spec" },
    { "<leader>sq", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
    { "<leader>sR", function() Snacks.picker.resume() end, desc = "Resume" },
    { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
    { "<leader>sC", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
    -- LSP
    { "<leader>lR", function() Snacks.picker.lsp_references() end, desc = "References" },
    { "<leader>lp", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    { "<leader>lP", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
    { "<leader>ls", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "<leader>lS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
  },
}
