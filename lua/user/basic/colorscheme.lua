-- https://github.com/rebelot/kanagawa.nvim
local setup, theme = pcall(require, "kanagawa")
if setup then
	theme.setup({
		undercurl = true, -- enable undercurls
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = true },
		statementStyle = { bold = true },
		typeStyle = {},
		variablebuiltinStyle = { italic = true },
		specialReturn = true, -- special highlight for the return keyword
		specialException = true, -- special highlight for exception handling keywords
		transparent = true, -- do not set background color
		dimInactive = true, -- dim inactive window `:h hl-NormalNC`
		globalStatus = false, -- adjust window separators highlight for laststatus=3
		terminalColors = true, -- define vim.g.terminal_color_{0,17}
		colors = {},
		overrides = {},
		theme = "default", -- Load "default" theme or the experimental "light" theme
	})
end

-- set colorscheme with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme kanagawa")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

local highlight_linenumber, _ = pcall(vim.cmd, "hi LineNr guifg=#fff")
if not highlight_linenumber then
	print("Set linenumber highlight wrong!")
	return
end
