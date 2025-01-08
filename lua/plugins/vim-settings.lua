-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- My keymap suggestions
vim.keymap.set("n", "<c-l>", "<cmd>bn<cr>", { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<c-h>", "<cmd>bp<cr>", { silent = true, desc = "Previous buffer" })

-- gF is a more useful default than gf
vim.keymap.set("n", "gf", "gF", { silent = true, desc = "Go to file" })

-- I like to turn search highlight on, and remove highlight whenever I press escape
vim.o.hlsearch = true
vim.keymap.set("n", "<esc>", "<cmd>noh<cr><esc>", { silent = true })

-- I use J and K to go up and down quickly, while keeping jump list clean
vim.keymap.set("n", "}", '<cmd><c-u>execute "keepjumps norm! " . v:count1 . "}"<cr>', { silent = true })
vim.keymap.set("n", "{", '<cmd><c-u>execute "keepjumps norm! " . v:count1 . "{"<cr>', { silent = true })
vim.keymap.set("n", "J", "}", { silent = true })
vim.keymap.set("n", "K", "{", { silent = true })

-- Remap for joining lines, since J is now a motion. But you can also leave this off and do :j as a command
-- vim.keymap.set("n", "gJ", "<cmd>join<cr>", { silent = true })

-- I have weird Emacs muscle memory, so you probably should use a different keybind for deleting buffers
vim.keymap.set("n", "<c-x><c-k>", "<cmd>bd<cr>", { silent = true })

-- I prefer cursor in the center
vim.o.scrolloff = 999

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank() end,
  group = highlight_group,
  pattern = "*",
})
