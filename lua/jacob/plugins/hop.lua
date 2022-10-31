-- https://github.com/phaazon/hop.nvim
-- import hop plugin safely
local setup, hop = pcall(require, "hop")
if not setup then
	return
end

local keymap = vim.keymap -- for conciseness

keymap.set("n", "s", "<cmd>HopChar1<CR>")
keymap.set("n", "<leader><leader>l", "<cmd>HopLineStart<CR>")
keymap.set("n", "<leader><leader>w", "<cmd>HopWord<CR>")

-- enable hop
hop.setup({ keys = "etovxqpdygfblzhckisuran" })
-- changed the color on hints:
vim.cmd("hi HopNextKey guifg=#ff9900")
vim.cmd("hi HopNextKey1 guifg=#ff9900")
vim.cmd("hi HopNextKey2 guifg=#ff9900")
