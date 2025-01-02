local lazy = require("lazy")

lazy.setup({
	-- Other plugins...

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	{
		"joshuadanpeterson/typewriter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("typewriter").setup()
		end,
		opts = {},
	},
})
