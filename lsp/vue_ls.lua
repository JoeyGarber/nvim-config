return {
	cmd = { "vue-language-server", "--stdio" },
	filetypes = { "vue" },
	root_markers = { "package.json", "vite.config.ts", "vite.config.js", "nuxt.config.ts" },
	init_options = {
		vue = {
			hybridMode = true,
		},
		typescript = {
			tsdk = vim.fn.expand(
				"~/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib"
			),
		},
	},
}
