-- "gc" to comment visual regions/lines
return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			pre_hook = function()
				require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
				return vim.bo.commentstring
			end,
		})
	end,
	lazy = false,
	dependencies = {
		"joosepAlviste/nvim-ts-context-commentstring",
		"nvim-treesitter/nvim-treesitter",
	},
}
