local ts_config = require("nvim-treesitter.configs")
local defaults = {
	highlight = { enable = true, additional_vim_regex_highlighting = false },
	indent = { enable = true },
}
ts_config.setup(defaults)
