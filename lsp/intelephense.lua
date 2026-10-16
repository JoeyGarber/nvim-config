return {
	cmd = { "intelephense", "--stdio" },
	filetypes = { "php" },
	root_markers = { "composer.json", ".git" }, -- Reuses LSP instances for shared project roots
	-- Optional: pass user profile premium licensing natively if purchased
	-- init_options = {
	-- 	licenceKey = "YOUR_LICENSE_KEY_OR_PATH",
	-- },
	settings = {
		intelephense = {
			completion = {
				parameterCase = "camel",
				propertyCase = "camel",
			},
		},
	},
}
