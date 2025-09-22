require("luasnip.session.snippet_collection").clear_snippets("typescriptreact")

local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

local addMetadata = [[
context: {{
	metadata: {{
		successText: {}
	}},
}},
]]

ls.add_snippets("typescriptreact", {
	s("con", fmt(addMetadata, { i(0) })),
})

local handleResponse = [[
.then(res => handleResponse(res{}))
]]

ls.add_snippets("typescriptreact", {
	s("han", fmt(handleResponse, { i(0) })),
})
