return {
	"nvchad/showkeys",
	cmd = "ShowkeysToggle",
	opts = {
		timeout = 1,
		maxkeys = 3,
		-- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
		position = "bottom-center",
	},

	keys = {
		{
			"<leader>kt",
			function()
				vim.cmd("ShowkeysToggle")
			end,
			desc = "Show key presses",
		},
	},
}
