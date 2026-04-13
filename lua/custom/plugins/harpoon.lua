return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	opts = {
		menu = {
			width = vim.api.nvim_win_get_width(0) - 4,
		},
		settings = {
			save_on_toggle = true,
		},
	},
	keys = function()
		local keys = {
			{
				"<leader>H",
				function()
					require("harpoon"):list():prepend()
				end,
				desc = "Harpoon File To Beginning",
			},
			{
				"<leader>L",
				function()
					require("harpoon"):list():add()
				end,
				desc = "Harpoon File To End",
			},
			{
				"<leader>h",
				function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "Harpoon Quick Menu",
			},
			{
				"<C-e>",
				function()
					local harpoon = require("harpoon")
					local conf = require("telescope.config").values
					local file_paths = {}
					for _, item in ipairs(harpoon:list().items) do
						table.insert(file_paths, item.value)
					end
					require("telescope.pickers").new({}, {
						prompt_title = "Harpoon",
						finder = require("telescope.finders").new_table({ results = file_paths }),
						previewer = conf.file_previewer({}),
						sorter = conf.generic_sorter({}),
					}):find()
				end,
				desc = "Harpoon (Telescope)",
			},
			{
				"H",
				function()
					require("harpoon"):list():prev()
				end,
				desc = "Previous Harpoon File",
			},
			{
				"L",
				function()
					require("harpoon"):list():next()
				end,
				desc = "Next Harpoon File",
			},
		}

		for i = 1, 5 do
			table.insert(keys, {
				"<leader>" .. i,
				function()
					require("harpoon"):list():select(i)
				end,
				desc = "Harpoon to File " .. i,
			})
		end
		return keys
	end,
}
