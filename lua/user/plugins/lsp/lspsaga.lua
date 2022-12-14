-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.init_lsp_saga({
	-- keybinds for navigation in lspsaga window
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	-- use enter to open file with finder
	finder_action_keys = {
		open = "<CR>",
	},
	-- use enter to open file with definition preview
	definition_action_keys = {
		edit = "<CR>",
	},
	-- same as nvim-lightbulb but async
	code_action_lightbulb = {
		enable = true,
		enable_in_insert = true,
		cache_code_action = true,
		sign = false,
		update_time = 150,
		sign_priority = 20,
		virtual_text = true,
	},
})
