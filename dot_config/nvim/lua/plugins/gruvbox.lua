return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
			terminal_colors = true,
			italic = {
				strings = false,
			},
			overrides = {
				CursorLineNr = { fg = "yellow" },
				Keyword = { bold = true },
			},
			palette_overrides = {
				light0_soft = "#1d2021",
				dark0 = "#1d2021",
				dark1 = "#1d2021",
				bright_red = "#B33F40",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
