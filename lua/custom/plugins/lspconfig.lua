return {
	{
		"williamboman/mason.nvim",
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				"stylua",
				"lua-language-server",
				"rust-analyzer",
				"markdown-oxide",
				"typescript-language-server",
			},
		},
	},
	{ "j-hui/fidget.nvim", opts = {} },
}
