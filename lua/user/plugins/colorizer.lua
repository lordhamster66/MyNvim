-- https://github.com/norcalli/nvim-colorizer.lua
-- http://neovimcraft.com/plugin/NvChad/nvim-colorizer.lua/index.html
local setup, colorizer = pcall(require, "colorizer")
if not setup then
	return
end

colorizer.setup({
	filetypes = { "css", "scss", "html" },
	user_default_options = {
		RGB = true, -- #RGB hex codes
		RRGGBB = true, -- #RRGGBB hex codes
		names = true, -- "Name" codes like Blue or blue
		RRGGBBAA = false, -- #RRGGBBAA hex codes
		AARRGGBB = false, -- 0xAARRGGBB hex codes
		rgb_fn = false, -- CSS rgb() and rgba() functions
		hsl_fn = false, -- CSS hsl() and hsla() functions
		css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
		css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
		mode = "background", -- Set the display mode.Available modes for `mode`: foreground,background,virtualtext
		virtualtext = "■",
	},
})
