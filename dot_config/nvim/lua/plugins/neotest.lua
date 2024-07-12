return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"fredrikaverpil/neotest-golang", -- Installation
	},
	config = function()
		vim.keymap.set("n", "<leader>tn", ":lua require('neotest').run.run() <CR>", {})
		vim.keymap.set("n", "<leader>mo", ":lua require('neotest').output.open({ enter = true }) <CR>", {})
		require("neotest").setup({
			adapters = {
				require("neotest-golang"), -- Registration
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
	},
}
