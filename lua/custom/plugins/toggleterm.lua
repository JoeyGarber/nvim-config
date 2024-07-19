return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		function _G.set_terminal_keymaps(term)
			local opts = { noremap = true }
			-- If the terminal is LazyGit don't map this. q to quit, <esc> to go back
			-- Otherwise hitting <esc> enters normal mode.
			if term.cmd ~= "lazygit" then
				vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<esc>", [[<C-\><C-n>]], opts)
			end
			vim.keymap.set("t", "<C-h>", [[<cmd>wincmd h<cr>]], opts)
			vim.keymap.set("t", "<C-j>", [[<cmd>wincmd j<cr>]], opts)
			vim.keymap.set("t", "<C-k>", [[<cmd>wincmd k<cr>]], opts)
			vim.keymap.set("t", "<C-l>", [[<cmd>wincmd l<cr>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end

		require("toggleterm").setup({
			on_open = set_terminal_keymaps,
		})

		-- Terminal opening and closing
		vim.keymap.set(
			"n",
			"<leader>ttw",
			"<cmd>1ToggleTerm direction=horizontal dir=~/coding/ftevolve/<cr>",
			{ desc = "[Toggle] [Terminal]" }
		)
		vim.keymap.set(
			"n",
			"<leader>ttm",
			"<cmd>2ToggleTerm direction=horizontal dir=~/coding/ftevolve/<cr>",
			{ desc = "[Toggle] [Terminal]" }
		)
		vim.keymap.set(
			"n",
			"<leader>ttb",
			"<cmd>3ToggleTerm direction=horizontal dir=~/coding/ftevolve/<cr>",
			{ desc = "[Toggle] [Terminal]" }
		)

		local Terminal = require("toggleterm.terminal").Terminal

		-- LazyGit
		local lazygit = Terminal:new({
			cmd = "lazygit",
			hidden = true,
			dir = "git_dir",
			direction = "float",
			float_opts = {
				border = "double",
			},

			-- function to run on opening the terminal
			on_open = function(term)
				-- Enter insert mode
				vim.cmd("startinsert!")
				-- Within this buffer, make hitting q in normal mode close the buffer
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<cr>", { noremap = true, silent = true })
			end,

			-- function to run on opening the terminal
			on_close = function()
				vim.cmd("startinsert!")
			end,
		})

		-- This works kinda but it needs more work
		vim.keymap.set("n", "<leader>lg", function()
			lazygit:toggle()
		end, { noremap = true, silent = true, desc = "Toggle [L]azy [G]it" })

		-- Yarn format
		local yarnformat = Terminal:new({
			cmd = "yarn format",
			hidden = true,
			dir = vim.api.nvim_buf_get_name(0),

			-- function to run on opening the terminal
			on_open = function(term)
				-- Within this buffer, make hitting q in normal mode close the buffer
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<cr>", { noremap = true, silent = true })
			end,
		})

		vim.keymap.set("n", "<leader>tsf", function()
			yarnformat:toggle()
		end, { noremap = true, silent = true, desc = "[T]ype[S]cript Yarn [F]ormat" })
	end,
}
