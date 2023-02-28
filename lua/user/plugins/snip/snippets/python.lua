local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- splits the string of the comma separated argument list into the arguments
-- and returns the text-/insert- or restore-nodes

-- create the actual snippet
local snippets = {
	s("shebang", {
		t({ "#!/usr/bin/env python", "" }),
		i(0),
	}),
	s("ti", {
		t({ "# type: ignore" }),
		i(0),
	}),
}

return snippets
