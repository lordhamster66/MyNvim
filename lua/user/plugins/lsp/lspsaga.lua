-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	ui = {
		kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
	},
	outline = {
		keys = {
			expand_or_jump = "l",
		},
	},
})
