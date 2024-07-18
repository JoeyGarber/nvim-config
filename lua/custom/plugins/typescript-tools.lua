return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	event = { "VimEnter" },
	opts = {},
	-- Setting keys causes a plugin to lazy load until one of the keys is clicked.
	-- This can be worked around by specifying the loading event.
	keys = {
		{
			"<leader>tsa",
			"<cmd>TSToolsAddMissingImports<cr>",
			{ desc = "[T]ype[Script] Tools [A]dd Missing Imports" },
		},
		{
			"<leader>tso",
			"<cmd>TSToolsOrganizeImports<cr>",
			{ desc = "[T]ype[Script] Tools Organize Imports" },
		},
	},
}
