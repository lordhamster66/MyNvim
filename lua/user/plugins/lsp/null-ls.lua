local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ disabled_filetypes = { "css", "css" } }),
		formatting.black.with({ extra_args = { "--fast", "--skip-string-normalization" } }),
		formatting.isort, -- Python utility / library to sort imports alphabetically and automatically separate them into sections and by type.
		formatting.stylua,
		formatting.stylelint.with({ filetypes = { "css", "scss" } }),
		diagnostics.stylelint.with({ filetypes = { "css", "scss" } }),
		diagnostics.eslint,
		-- diagnostics.mypy, -- Mypy is an optional static type checker for Python that aims to combine the benefits of dynamic (or "duck") typing and static typing.
	},
})
