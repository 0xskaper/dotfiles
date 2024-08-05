return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
      terminal_colors = true,
      contrast = "hard",
      palette_override = {
        dark3 = "#1d2021",
      }
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
