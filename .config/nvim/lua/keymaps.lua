local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

function toggleWrap()
  if vim.opt.wrap._value == true then
    print("wrap set to true")
    vim.opt.wrap = false
  else
    print("wrap set to false")
    vim.opt.wrap = true
  end
end

-- Shorten key mapping function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-------------------------------------
-- there are more remaps in whichkey
-- they are held there so there are hints next to them in the ribbon
------------------------------------

-- Normal --
-- keymap("n", "<M-w>", "<cmd>set wrap<cr>", opts)
keymap("n", "<M-w>", ":lua toggleWrap()<CR>", opts)
-- Easy window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Easy buffer navigation
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
-- don't seem to work properly. works like 'f'
-- vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
-- vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
keymap("n", "J", "mzJ`z", opts) -- keeps cursor in place as moving new lines to current line
-- clipboard
-- keybinds to put something into system clipboard
-- TODO: doesn't seem to work...
keymap("n", "<leader>y", "\"+y", opts)
keymap("n", "<leader>Y", "\"+Y", opts)
keymap("v", "<leader>y", "\"+y", opts)

keymap("n", "Q", "<nop>", opts)

-- Resize panes with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Git --
keymap("n", "<M-j>", ":Gitsigns next_hunk<CR>", opts)
keymap("n", "<M-k>", ":Gitsigns prev_hunk<CR>", opts)
keymap("n", "<M-d>", ":Gitsigns preview_hunk<CR>", opts)

-- Shows the LSP diagnostic window
keymap("n", "L", ":lua vim.diagnostic.open_float()<cr>", opts)


-- Insert --
-- Press jj to return to normal mode
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down -- requires stay in indent mode
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts) -- keeps the buffer from being overwritten when pasting

-- Visual Block --
-- Move text up and down -- requires stay in indent mode
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
