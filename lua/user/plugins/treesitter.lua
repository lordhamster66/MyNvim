-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = { enable = true },
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"python",
		"json",
		"javascript",
		"typescript",
		"yaml",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"astro",
	},
	-- auto install above language parsers
	auto_install = true,
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = true,
})

local s, _ = pcall(vim.cmd, "set nofoldenable")
if not s then
	print("set nofoldenable error")
	return
end
