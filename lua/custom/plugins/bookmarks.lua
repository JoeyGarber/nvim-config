-- with lazy.nvim
return {
  enabled = false,
  "LintaoAmons/bookmarks.nvim",
  -- pin the plugin at specific version for stability
  -- backup your bookmark sqlite db when there are breaking changes (major version change)
  tag = "v4.0.0",
  dependencies = {
    {"kkharji/sqlite.lua"},
    {"nvim-telescope/telescope.nvim"}, -- set picker.picker_backend = "telescope" to use
  },
  config = function()
    local opts = {
	  picker = {
		picker_backend = "telescope"
	  },
	  signs = {
		mark = {
		  icon = "●",
		  color = "#00BFFF",
		  line_bg = false,
		},
	  desc_format = function(bookmark)
		local _, sep_end = bookmark.name:find(" - ", 1, true)
		if not sep_end then
		  return ""
		end
		return bookmark.name:sub(sep_end + 1)
	  end,
	  },
	  treeview = {
		render_bookmark = function(node)
		  local linked_icon = #node.linked_bookmarks > 0 and "🔗" or ""
		  local name = node.name

		  if name == "" then
			name = "[Untitled]"
		  elseif name:find(" - ", 1, true) then
			local separator = " - "
			if name:sub(-#separator) == separator then
			  name = name:sub(1, -#separator - 1)
			end
		  else
			name = name .. " - " .. node.location.line
		  end

		  return name .. " " .. linked_icon
		end,
	  },
	} -- check the "./lua/bookmarks/default-config.lua" file for all the options
    require("bookmarks").setup(opts) -- you must call setup to init sqlite db
  end,
  keys = {
    {
      "<leader>H",
      function()
        local Service = require("bookmarks.domain.service")
        local Sign = require("bookmarks.sign")
        local Tree = require("bookmarks.tree.operate")

        Service.toggle_mark(vim.fn.expand("%:t"))
        Sign.safe_refresh_signs()
        pcall(Tree.refresh)
      end,
      desc = "Quick Bookmark (Filename Only)",
    },
    {
      "<leader>L",
      function()
        local Service = require("bookmarks.domain.service")
        local Sign = require("bookmarks.sign")
        local Tree = require("bookmarks.tree.operate")

        local existing = Service.find_bookmark_by_location()
        local default = existing and existing.name or (vim.fn.expand("%:t") .. " - ")

        vim.ui.input({ prompt = "[Bookmarks Toggle]", default = default }, function(input)
          if input then
            Service.toggle_mark(input)
            Sign.safe_refresh_signs()
            pcall(Tree.refresh)
          end
        end)
      end,
      desc = "Bookmark Line To List (Named)",
    },
    {
      "<leader>hh",
      function()
        require("bookmarks.tree").toggle()

        local ctx = vim.g.bookmark_tree_view_ctx
        if ctx then
          ctx.sort_ascending = true
          vim.g.bookmark_tree_view_ctx = ctx
          pcall(require("bookmarks.tree.operate").refresh)
        end
      end,
      desc = "Bookmarks Tree (Quick Menu)",
    },
    {
      "<C-e>",
      "<cmd>BookmarksGoto<cr>",
      desc = "Bookmarks (Telescope)",
    },
    {
      "H",
      "<cmd>BookmarksGotoPrevInList<cr>",
      desc = "Previous Bookmark In List",
    },
    {
      "L",
      "<cmd>BookmarksGotoNextInList<cr>",
      desc = "Next Bookmark In List",
    },
    {
      "<leader>hm",
      "<cmd>BookmarksLists<cr>",
      desc = "Bookmark Lists Manager (switch list)",
    },
    {
      "<leader>hn",
      "<cmd>BookmarksNewList<cr>",
      desc = "New Bookmark List",
    },
  },
}

-- run :BookmarksInfo to see the running status of the plugin
