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
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Buffer Switch
keymap.set("n", "H", ":BufferLineCyclePrev<CR>")
keymap.set("n", "L", ":BufferLineCycleNext<CR>")

----------------------
-- Plugin Keybinds
-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
