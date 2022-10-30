local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("jacob.plugins.lsp.mason")
require("jacob.plugins.lsp.handlers").setup()
require("jacob.plugins.lsp.null-ls")
require("jacob.plugins.lsp.lspsaga")
