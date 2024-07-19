-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Conceal links in markup
vim.api.nvim_create_autocmd({ "FileType" }, {
	desc = "Hide formatting in markdown",
	pattern = { "markdown" },
	callback = function()
		vim.opt_local.conceallevel = 2
	end,
})

-- vim: ts=2 sts=2 sw=2 et
