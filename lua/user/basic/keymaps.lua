-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- Use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>")

-- Without copying into register
keymap.set("n", "x", '"_x')
keymap.set("n", "c", '"_c')

-- Scroll
keymap.set("n", "<C-u>", "9kzz")
keymap.set("n", "<C-d>", "9jzz")

-- Window
keymap.set("n", "<C-w>\\", ":vsp<CR>")
keymap.set("n", "<C-w>-", ":sp<CR>")

----------------------
-- Plugin Keybinds
----------------------

-- Buffer Switch
keymap.set("n", "H", ":BufferLineCyclePrev<CR>")
keymap.set("n", "L", ":BufferLineCycleNext<CR>")
