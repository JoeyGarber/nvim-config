return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue" },
	root_markers = { "tsconfig.json", "jsconfig.json", "package.json" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.expand(
					"~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/typescript-plugin"
				),
				languages = { "vue" },
			},
		},
	},
}
