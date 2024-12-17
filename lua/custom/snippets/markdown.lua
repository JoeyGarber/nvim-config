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
	-- s("kleb", fmt("[Kleb](kleb-rogov) {}", { i(0) })),
	--
	-- s("liam", fmt("[Yakov](<characters#Liam: Yakov>) {}", { i(0) })),
	-- s("yakov", fmt("[Yakov](<characters#Liam: Yakov>) {}", { i(0) })),
	--
	-- s("rob", fmt("[Leo](<characters#Rob: Leo>) {}", { i(0) })),
	-- s("leo", fmt("[Leo](<characters#Rob: Leo>) {}", { i(0) })),
	--
	-- s("anson", fmt("[Inessa](<characters#Anson: Inessa>) {}", { i(0) })),
	-- s("inessa", fmt("[Inessa](<characters#Anson: Inessa>) {}", { i(0) })),

	s("kleb", fmt("[[kleb-rogov|Kleb]] {}", { i(0) })),

	s("liam", fmt("[[characters#Liam: Yakov|Yakov]] {}", { i(0) })),
	s("yakov", fmt("[[characters#Liam: Yakov|Yakov]] {}", { i(0) })),

	s("rob", fmt("[[characters#Rob: Leo|Leo]] {}", { i(0) })),
	s("leo", fmt("[[characters#Rob: Leo|Leo]] {}", { i(0) })),

	s("anson", fmt("[[characters#Anson: Inessa|Inessa]] {}", { i(0) })),
	s("inessa", fmt("[[characters#Anson: Inessa|Inessa]] {}", { i(0) })),

	-- -- NPCs
	s("mogev", fmt("[[characters#Mogev|Mogev]] {}", { i(0) })),
	s("polechev", fmt("[[characters#Polechev|Polechev]] {}", { i(0) })),
	s("dmitri", fmt("[[characters#Dmitri Krasnov|Dmitri]] {}", { i(0) })),
	s("ana", fmt("[[characters#Anastasia Krasnov|Anastasia]] {}", { i(0) })),
	s("ofelya", fmt("[[characters#Ofelya|Ofelya]] {}", { i(0) })),
	s("ogi", fmt("[[characters#Ogi Byrelin|Ogi]] {}", { i(0) })),
	s("mayor", fmt("[[characters#Ogi Byrelin|Ogi]] {}", { i(0) })),
	s("kane", fmt("[[characters#Kane Lier|Kane]] {}", { i(0) })),
	s("lerin", fmt("[[characters#Lerin|Lerin]] {}", { i(0) })),
	s("hat man", fmt("[[characters#Cloaked man smoking a pipe in the corner|Hat Man]] {}", { i(0) })),
	s("viktor", fmt("[[characters#Viktor Orlov|Viktor]] {}", { i(0) })),
	-- -- Need to update these:
})
