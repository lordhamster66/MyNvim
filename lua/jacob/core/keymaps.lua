-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- without copying into register
keymap.set("n", "x", '"_x')
keymap.set("n", "c", '"_c')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Scroll
keymap.set("n", "<C-u>", "9k")
keymap.set("n", "<C-d>", "9j")

-- Window
keymap.set("n", "s|", ":vsp<CR>")
keymap.set("n", "s-", ":sp<CR>")
keymap.set("n", "sc", "<C-w>c")
keymap.set("n", "so", "<C-w>o")

----------------------
-- Plugin Keybinds
----------------------

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- Buffer Switch
keymap.set("n", "H", ":BufferLineCyclePrev<CR>")
keymap.set("n", "L", ":BufferLineCycleNext<CR>")

-- Hop (like easymotion)
keymap.set("n", "f", "<cmd>HopChar1<CR>")
keymap.set("n", "<leader><leader>l", "<cmd>HopLineStart<CR>")
keymap.set("n", "<leader><leader>w", "<cmd>HopWord<CR>")
