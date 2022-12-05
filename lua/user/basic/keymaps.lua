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
-- keymap.set("n", "sc", "<C-w>c")
-- keymap.set("n", "so", "<C-w>o")
-- keymap.set("n", "sw", "<C-w>w")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sl", "<C-w>l")

----------------------
-- Plugin Keybinds
----------------------

-- Buffer Switch
keymap.set("n", "H", ":BufferLineCyclePrev<CR>")
keymap.set("n", "L", ":BufferLineCycleNext<CR>")

-- Hop (like easymotion)
-- keymap.set("n", "f", "<cmd>HopChar1<CR>")
-- keymap.set("n", "<leader><leader>l", "<cmd>HopLineStart<CR>")
-- keymap.set("n", "<leader><leader>w", "<cmd>HopWord<CR>")
