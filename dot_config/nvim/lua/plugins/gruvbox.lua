return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
      terminal_colors = true,
      contrast = "hard",
      palette_overrides = {
        dark1 = "#1d2021",
        dark3 = "#1d2021",
      }
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
