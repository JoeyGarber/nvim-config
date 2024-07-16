return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()
		local opts = { buffer = 0 }
		-- Terminal opening and closing
		vim.keymap.set(
			"n",
			"<leader>tt",
			"<cmd>ToggleTerm direction=horizontal dir=~/coding/ftevolve/<cr>",
			{ desc = "[Toggle] [Terminal]" }
		)
		-- Window navigation
		vim.keymap.set("t", "<esc>", [[<C-\><C-n]], opts)
		vim.keymap.set("t", "<C-h>", [[<cmd>wincmd h<cr>]], opts)
		vim.keymap.set("t", "<C-j>", [[<cmd>wincmd j<cr>]], opts)
		vim.keymap.set("t", "<C-k>", [[<cmd>wincmd k<cr>]], opts)
		vim.keymap.set("t", "<C-l>", [[<cmd>wincmd l<cr>]], opts)

		local Terminal = require("toggleterm.terminal").Terminal
		local currentDirectory = function()
			return vim.fn.getcwd()
		end

		local lazygit = Terminal:new({
			cmd = "lazygit",
			hidden = true,
			dir = currentDirectory(),
		})

		vim.keymap.set("n", "<leader>lg", function()
			lazygit:toggle()
		end, { noremap = true, silent = true, desc = "Toggle [L]azy [G]it" })
	end,
}
