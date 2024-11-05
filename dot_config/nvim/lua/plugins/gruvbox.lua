return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
      contarst = "hard",
			palette_overrides = {
        dark0_hard = "#252525",
        dark1 = "#252525",
				bright_red = "#dd7575",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
