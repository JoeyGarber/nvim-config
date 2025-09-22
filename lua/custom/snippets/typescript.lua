require("luasnip.session.snippet_collection").clear_snippets("typescript")

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

ls.add_snippets("typescript", {
	s("con", fmt(addMetadata, { i(0) })),
})

local handleResponse = [[
.then(res => handleResponse(res{}))
]]

ls.add_snippets("typescript", {
	s("han", fmt(handleResponse, { i(0) })),
})
