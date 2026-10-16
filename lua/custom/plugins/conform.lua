return { -- Autoformat
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
		{
			"<leader>fe",
			function()
				vim.cmd("FormatEnable")
			end,
			mode = "",
			desc = "[F]ormat [E]nable",
		},
		{
			"<leader>fd",
			function()
				vim.cmd("FormatDisable")
			end,
			mode = "",
			desc = "[F]ormat [D]isable",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local disable_filetypes = { c = true, cpp = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters = {
			eslint_d = {
				command = "eslint_d",
				args = { "--fix-to-stdout", "--fix-type", "layout", "--stdin", "--stdin-filename", "$FILENAME" },
				stdin = true,
			},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			-- javascript = { "eslint_d", stop_after_first = true },
			-- typescript = { "eslint_d", stop_after_first = true },
			-- vue = { "eslint_d", stop_after_first = true },
			-- php = { "php_cs_fixer" },
		},
	},
	config = function(_, opts)
		vim.g.disable_autoformat = true

		require("conform").setup(opts)

		vim.api.nvim_create_user_command("FormatDisable", function()
			vim.g.disable_autoformat = true
		end, { desc = "Disable autoformat-on-save" })

		vim.api.nvim_create_user_command("FormatEnable", function()
			vim.g.disable_autoformat = false
		end, { desc = "Re-enable autoformat-on-save" })
	end,
}
