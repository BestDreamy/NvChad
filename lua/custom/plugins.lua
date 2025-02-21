local plugins = {
	{
		"neovim/nvim-lspconfig",
		config = function ()
			require "configs.lspconfig"
			require "custom.configs.lspconfig"
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clangd"
			}
		}
	}
}

return plugins