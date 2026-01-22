return {
	"L3MON4D3/LuaSnip",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node

		-- Load existing snippets
		require("luasnip.loaders.from_vscode").lazy_load()

		-- Add custom snippets
		ls.add_snippets("markdown", {
			s("geminiskill", {
				t({ "---", "name: " }),
				i(1, "my-skill"),
				t({ "", "description: " }),
				i(2, "Helps with a specific task. Use when you need to do X or Y."),
				t({ "", "---", "", "# " }),
				i(3, "My Skill"),
				t({
					"",
					"",
					"Detailed instructions for the agent go here.",
					"",
					"## When to use this skill",
					"",
					"- Use this when...",
				}),
				i(4, "- This is helpful for..."),
				t({
					"",
					"",
					"## How to use it",
					"",
					"Step-by-step guidance, conventions, and patterns the agent should follow.",
				}),
			}),
		})
	end,
}
