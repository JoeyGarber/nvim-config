require("luasnip.session.snippet_collection").clear_snippets("php")

local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

local addMetadata = [[
/** @var {} */
]]

ls.add_snippets("php", {
	s("typehint", fmt(addMetadata, { i(0) })),
})
