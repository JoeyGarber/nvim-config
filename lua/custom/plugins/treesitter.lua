return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
		require("nvim-treesitter").install({
			"bash",
			"c",
			"c_sharp",
			"csv",
			"diff",
			"gitcommit",
			"gitignore",
			"html",
			"javascript",
			"json",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"php",
			"python",
			"rust",
			"scss",
			"sql",
			"ssh_config",
			"tmux",
			"tsx",
			"typescript",
			"vim",
			"vimdoc",
			"vue",
			"xml",
			"yaml",
		})

		-- Start treesitter highlighting and indent for any buffer that has a parser
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local started = pcall(vim.treesitter.start, args.buf)
				if started then
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
