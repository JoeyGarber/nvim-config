-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup({
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).

	-- NOTE: Plugins can also be added by using a table,
	-- with the first argument being the link and the following
	-- keys can be used to configure plugin behavior/loading/etc.
	--
	-- Use `opts = {}` to force a plugin to be loaded.
	--
	--  This is equivalent to:
	--    require('Comment').setup({})
	--
	-- Detect tabstop and shiftwidth automatically
	require("kickstart.plugins.vim-sleuth"),

	-- "gc" to comment visual regions/lines
	require("kickstart.plugins.comment"),

	-- Plugin to show pending keybinds
	require("kickstart.plugins.which-key"),

	-- Fuzzy Finder (files, lsp, etc)
	require("kickstart.plugins.telescope"),

	-- LSP Configuration & Plugins
	require("kickstart.plugins.lspconfig"),

	-- Autoformat
	require("kickstart.plugins.conform"),

	-- Autocompletion
	require("kickstart.plugins.nvim-cmp"),

	-- Colorscheme.
	require("kickstart.plugins.colorschemes"),

	-- Highlight todo, notes, etc in comments
	require("kickstart.plugins.todo-comments"),

	-- Collection of various small independent plugins/modules
	require("kickstart.plugins.mini"),

	-- Highlight, edit, and navigate code
	require("kickstart.plugins.treesitter"),

	-- Debuffer plugin
	require("kickstart.plugins.debug"),

	-- Add indentation guides even on blank lines
	require("kickstart.plugins.indent_line"),

	-- Automatically adds symbol pairs
	require("kickstart.plugins.autopairs"),

	-- Adds git related signs to the gutter, as well as utilities for managing changes
	require("kickstart.plugins.gitsigns"),

	-- Linting
	-- require("kickstart.plugins.lint"),

	-- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
	--    This is the easiest way to modularize your config.
	--
	--  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
	--    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
	{ import = "custom.plugins" },
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et
