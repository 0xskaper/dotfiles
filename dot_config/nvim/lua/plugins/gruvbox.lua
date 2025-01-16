return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
			contrast = "soft",
			terminal_colors = true,
			italic = {
				strings = false,
			},
			overrides = {
				CursorLineNr = { fg = "#000000" },
				Keyword = { fg = "#B33F40", bold = true },
			},
			palette_overrides = {
				dark0 = "#1d2021",
				dark1 = "#1d2021",
				bright_red = "#B33F40",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
