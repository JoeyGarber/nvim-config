require("luasnip.session.snippet_collection").clear_snippets("markdown")

local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("markdown", {
	s("tag", fmt("[{}]({}) {}", { i(1), i(2), i(0) })),
	-- CoC snippets

	-- Player characters
	-- s("I", fmt("[I](kleb-rogov) {}", { i(0) })),
	s("kleb", fmt("[Kleb](kleb-rogov) {}", { i(0) })),

	s("liam", fmt("[Yakov](<characters#Liam: Yakov>) {}", { i(0) })),
	s("yakov", fmt("[Yakov](<characters#Liam: Yakov>) {}", { i(0) })),

	s("rob", fmt("[Leo](<characters#Rob: Leo>) {}", { i(0) })),
	s("leo", fmt("[Leo](<characters#Rob: Leo>) {}", { i(0) })),

	s("anson", fmt("[Inessa](<characters#Anson: Inessa>) {}", { i(0) })),
	s("inessa", fmt("[Inessa](<characters#Anson: Inessa>) {}", { i(0) })),

	-- NPCs
	s("ofelya", fmt("[Ofelya](<characters#Ofelya>) {}", { i(0) })),
	s("ogi", fmt("[Ogi](<characters#Ogi Byrelin>) {}", { i(0) })),
	s("kane", fmt("[Kane](<characters#Kane Lier>) {}", { i(0) })),
	s("lerin", fmt("[Lerin](<characters#Lerin>) {}", { i(0) })),
	s("strange man", fmt("[strange man](<characters#Cloaked man smoking a pipe in the corner>) {}", { i(0) })),
	s("dmitri", fmt("[Dmitri Krasnov](<characters#Dmitri Krasnov>) {}", { i(0) })),
	s("ana", fmt("[Anastasia Krasnov](<characters#Anastasia Krasnov>) {}", { i(0) })),
	s("mayor", fmt("[mayor](<characters#Ogi Byrelin>) {}", { i(0) })),
	s("viktor", fmt("[Viktor](<characters#Viktor Orlov>) {}", { i(0) })),
	s("mogev", fmt("[mogev](<characters#Mogev>) {}", { i(0) })),
})
