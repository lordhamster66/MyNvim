-- https://github.com/folke/tokyonight.nvim
local setup, theme = pcall(require, "tokyonight")
if setup then
	theme.setup({
		style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
		transparent = true, -- Enable this to disable setting the background color
		terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
		styles = {
			comments = { italic = true },
			keywords = { italic = true },
			functions = { bold = true },
			variables = { bold = true },
		},
		hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	})
end

-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme tokyonight-moon")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

vim.cmd("hi LineNr guifg=#fff") -- highlight linenumber
