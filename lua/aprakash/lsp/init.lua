local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("aprakash.lsp.lsp-installer")
require("aprakash.lsp.handlers").setup()
require "aprakash.lsp.null-ls"
