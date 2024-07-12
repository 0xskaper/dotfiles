return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"fredrikaverpil/neotest-golang",
    "nvim-neotest/neotest-python",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-golang"),
        require("neotest-python"),
			},
		})
	end,
	keys = {
		{
			"<leader>td",
			function()
				require("neotest").run.run({ suite = false })
			end,
			desc = "Debug nearest test",
		},
		{
			"<leader>tn",
			function()
				require("neotest").run.run(vim.fn.expand("%"))
			end,
		},
		{
			"<leader>ts",
			function()
				require("neotest").run.stop()
			end,
		},
		{
			"<leader>ta",
			function()
				require("neotest").run.attach()
			end,
		},
		{
			"<leader>tS",
			function()
				require("neotest").summary.open()
			end,
		},
	},
}
