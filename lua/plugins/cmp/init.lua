return {
	"hrsh7th/nvim-cmp",
	config = function()
		require("plugins.cmp.setup")
	end,
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
	},
}
