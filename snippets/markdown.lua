local ls = require("luasnip")

local extend_decorator = require("luasnip.util.extend_decorator")

local s = extend_decorator.apply(ls.s, {})

local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local snippets = {
	s({
		trig = "daily",
		name = "Daily Note Template",
		desc = "Template for daily work log",
	}, {
		t({
			"---",
			"tags:",
			"    - 📅Daily",
			"---",
			"",
			"# DAILY NOTE - ",
		}),
		i(1, "todays date"),
		t({
			"",
			"***",
			"## Work Log",
			"",
			"### Tasks/Tickets:",
			"",
			"### Meetings:",
			"",
			"### Miscellaneous:",
			"",
			"## Notes",
			"- ",
		}),
	}),
	s({
		trig = "meeting",
		name = "Meeting Task Snippet",
		desc = "Task template specifically for meeting log layout",
	}, {
		t("- [ ] "),
		i(1, "meeting name"),
		t(" - "),
		i(2, "time elapsed"),
		t({
			"",
			"",
		}),
	}),
	s({
		trig = "sr",
		name = "Sales Reporting Task",
		desc = "Quick way to add Sales Reporting as a task",
	}, {
		t("- [ ] Sales Reporting"),
		t({
			"",
			"",
		}),
	}),
}

ls.add_snippets("markdown", snippets)
