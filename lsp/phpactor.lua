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
	on_init = function(client)
		-- Intelephense owns these; Phpactor keeps code actions, rename, implementation, type definition
		local caps = client.server_capabilities
		caps.completionProvider = nil
		caps.hoverProvider = nil
		caps.signatureHelpProvider = nil
		caps.definitionProvider = nil
		caps.referencesProvider = nil
		caps.documentSymbolProvider = nil
		caps.workspaceSymbolProvider = nil
		caps.documentHighlightProvider = nil
	end,
}
