return {
	cmd = { "laravel-lsp" },
	filetypes = { "php" }, -- Removed blade
	root_dir = function(bufnr, on_dir)
		-- Look for the standard '.git' directory to identify your repository root
		local root = vim.fs.root(bufnr, ".git")
		if root then
			on_dir(root)
		end
	end,
}
