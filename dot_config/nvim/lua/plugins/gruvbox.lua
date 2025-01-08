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
			override = {
				CursorLineNr = { fg = "yellow" },
				Keyword = { bold = true },
			},
			palette_overrides = {
				light0_soft = "#282828",
				dark0 = "#282828",
				dark1 = "#282828",
				bright_red = "#9d0006",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
