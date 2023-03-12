local cmp_did_load, cmp = load_package("cmp")
if not cmp_did_load then
	return
end

-- Setting the highlihgting for our compeltion menu
local winhighlight = {
	winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
}
-------- testing: deprioritising emmet
cmp.setup({
	window = {
		completion = cmp.config.window.bordered(winhighlight),
		documentation = cmp.config.window.bordered(winhighlight),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	sources = { -- registering our sources
		{ name = "luasnip" },
	},

	mapping = require("user.mappings.cmp_map"),
})
