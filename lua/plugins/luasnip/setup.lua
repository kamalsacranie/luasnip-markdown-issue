local luasnip_did_load, ls = load_package("luasnip")
if not luasnip_did_load then
	return
end
local ls_ft = require("luasnip.extras.filetype_functions")
-- Set path to load snippets from. Very important to lazy load if you want a reasonable stratup
require("luasnip.loaders.from_lua").load({
	paths = {
		"./after/ftsnippets/lua",
	},
})

local defaults = {
	history = true,
	update_events = "TextChanged,TextChangedI",
	enable_autosnippets = true,
	ft_func = ls_ft.from_cursor_pos
}

require("user.mappings.luasnip_map")
ls.config.setup(defaults)
