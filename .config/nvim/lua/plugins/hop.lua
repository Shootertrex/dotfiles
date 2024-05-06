return {
  'smoka7/hop.nvim', -- Easymotion-like
  version = '^2', -- optional but strongly recommended
-- Hop navigation
-- keymap("n", "<leader>w", ":HopWord<CR>", opts)
-- keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
keys = {
  { "<leader>w", ":HopWord<CR>", "Hop" },
  -- { "f", "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>" },
  -- { "F", "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>" },
},
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    -- require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } -- default config
    require'hop'.setup { keys = 'fjdketovxqpygblzhcisuran' }
  end
}
