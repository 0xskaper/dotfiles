return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>o", builtin.find_files, {})
			vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				pickers = {
					find_files = {
						theme = "ivy",
					},
					live_grep = {
						theme = "ivy",
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
