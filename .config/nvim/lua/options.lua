--vim.loader.enable()                           -- is supposed to make start time faster. not noticeable
vim.opt.shortmess:append({ I = true })          -- removes the home scree. some plugins for some reason break it anyway, so just remove it so there is no flashing
-- vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
-- vim.opt.updatetime = 300                        -- faster completion (4000ms default)

vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.softtabstop = 2                         -- insert 2 spaces for a tab

vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again

vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.incsearch = true                        -- incrementally highlight search as it's typed

-- vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = false                  -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                             -- display lines as one long line
vim.opt.scrolloff = 8                           -- always keep 8 lines on the screen as page is scrolled
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
