-- import hop plugin safely
local setup, hop = pcall(require, "hop")
if not setup then
	return
end

local directions = require("hop.hint").HintDirection
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader><leader>s", "<cmd>HopChar1<CR>")
keymap.set("", "<leader><leader>l", "<cmd>HopLineStart<CR>")
keymap.set("", "<leader><leader>w", "<cmd>HopWord<CR>")
keymap.set("", "<leader><leader>T", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

-- enable hop
hop.setup({ keys = "etovxqpdygfblzhckisuran" })
