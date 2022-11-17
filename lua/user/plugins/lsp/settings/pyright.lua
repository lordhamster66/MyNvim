local function organize_imports()
	local params = {
		command = "pyright.organizeimports",
		arguments = { vim.uri_from_bufnr(0) },
	}
	vim.lsp.buf.execute_command(params)
end

return {
	default_config = {
		cmd = { "pyright-langserver", "--stdio" },
		filetypes = { "python" },
		single_file_support = true,
		settings = {
			python = {
				analysis = {
					autoSearchPaths = true,
					useLibraryCodeForTypes = true,
					diagnosticMode = "workspace",
				},
			},
		},
	},
	commands = {
		PyrightOrganizeImports = {
			organize_imports,
			description = "Organize Imports",
		},
	},
}
