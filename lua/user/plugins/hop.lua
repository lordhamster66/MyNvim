-- https://github.com/phaazon/hop.nvim
-- import hop plugin safely
local setup, hop = pcall(require, "hop")
if not setup then
	return
end

-- enable hop
hop.setup({ keys = "etovxqpdygfblzhckisuran" })
-- changed the color on hints:
vim.cmd("hi HopNextKey guifg=#ffffff")
vim.cmd("hi HopNextKey1 guifg=#ff9900")
vim.cmd("hi HopNextKey2 guifg=#ff9900")
