return {
	"tpope/vim-dotenv",
	config = function()
		if vim.fn.exists(":Dotenv") > 0 then
			vim.fn.execute(":Dotenv! ~/.config/nvim/.env")
		end
	end,
}
