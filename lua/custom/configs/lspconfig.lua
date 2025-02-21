local base = require("configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig.clangd.setup {
	on_attach = function(client, bufnr)
		client.server_capabilities.signatureHelpProvider = false
		on_attach(client, bufnr)
	end,
	capabilities = capabilities,
}