return {
	"seblyng/roslyn.nvim",
	ft = "cs",
	init = function()
		-- Pre-set capabilities so they're ready on the first ft=cs load. Without this,
		-- filewatching="off" (below) applies too late when lazy-loaded, causing Roslyn to
		-- fall back to DefaultFileChangeWatcher which stack-overflows on WSL2.
		vim.lsp.config("roslyn", {
			capabilities = {
				workspace = {
					didChangeWatchedFiles = { dynamicRegistration = true },
				},
			},
		})
	end,
	---@module 'roslyn.config'
	---@type RoslynNvimConfig
	opts = {
		broad_search = true,
		filewatching = "off",
	},
}
