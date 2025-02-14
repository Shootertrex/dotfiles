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
  config = function ()
    local api = require("nvim-tree.api")
    require"nvim-tree".setup {
      actions = {
        open_file = {
          quit_on_open = true,
          window_picker = {
            enable = false,
          },
        },
      },
      on_attach = function (bufnr)
        local opts = { buffer = bufnr }
        api.config.mappings.default_on_attach(bufnr)
        local lefty = function ()
          local node_at_cursor = api.tree.get_node_under_cursor()
          -- node_at_cursor.nodes to checks if has nodes (is a folder) and .open to check it's open
          if node_at_cursor.nodes and node_at_cursor.open then
            -- .open.edit() toggles the node (folder) from open to closed
            api.node.open.edit()
          else
            -- if instead node_at_cursor is a file or a closed folder, jump to the parent node (folder)
            api.node.navigate.parent()
          end
        end
        local righty = function ()
          local node_at_cursor = api.tree.get_node_under_cursor()
          -- node_at_cursor.nodes to checks if has nodes (is a folder) and not .open to check it's closed
          if node_at_cursor.nodes and not node_at_cursor.open then
            -- .open.edit() toggles the node (folder) from closed to open
            api.node.open.edit()
            -- no else here, if it's an open folder or a file do nothing
          end
        end
        vim.keymap.set("n", "h", lefty , opts )
        vim.keymap.set("n", "<Left>", lefty , opts )
        vim.keymap.set("n", "<Right>", righty , opts )
        vim.keymap.set("n", "l", righty , opts )
      end,
    }
  end
}

