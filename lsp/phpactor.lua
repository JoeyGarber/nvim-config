return {
	cmd = { "phpactor", "language-server" },
	cmd_env = {
		PATH = vim.env.PATH .. ":/opt/homebrew/bin:/usr/local/bin",
	},
	filetypes = { "php" },
	root_markers = { "composer.json", ".git" },
	init_options = {
		-- Stop Phpactor from writing a local .phpactor.json into the project root
		-- when settings change. Preferences live in ~/.config/phpactor/phpactor.json.
		["language_server_configuration.auto_config"] = false,
	},
	capabilities = {
		textDocument = {
			completion = vim.NIL,
			hover = vim.NIL,
			diagnostic = vim.NIL,
			publishDiganostics = vim.NIL,
		},
	},
}
