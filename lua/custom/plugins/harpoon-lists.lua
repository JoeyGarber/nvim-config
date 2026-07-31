return {
	"frenchef156/harpoon-lists.nvim",
	dependencies = {
		{
			"ThePrimeagen/harpoon",
			branch = "harpoon2",
		},
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("harpoon-lists"):setup()
	end,

	keys = {
		{
			"<leader>hm",
			function()
				require("harpoon-lists"):open_manager()
			end,
			desc = "Harpoon Lists Manager (create/switch/delete lists)",
		},
	},
}
