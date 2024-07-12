return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"fredrikaverpil/neotest-golang",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-golang"), -- Registration
				require("neotest-python"),
			},
		})
	end,
	keys = {
		{
			"<leader>td",
			function()
				require("neotest").run.run()
			end,
			desc = "Debug nearest test",
		},
		{
			"<leader>ts",
			function()
				require("neotest").run.stop()
			end,
			desc = "Debug nearest test",
		},
		{
			"<leader>ta",
			function()
				require("neotest").run.attach()
			end,
			desc = "Debug nearest test",
		},
		{
			"<leader>tn",
			function()
				require("neotest").run.run(vim.expand("%"))
			end,
			desc = "Debug nearest test",
		},
		{
			"<leader>lf",
			function()
				require("neotest.logging"):get_filename()
			end,
			desc = "Debug nearest test",
		},
	},
}
