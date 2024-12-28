return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = ...,
  config = function()
    require("gruvbox").setup({
      transparent_mode = true,
      contrast = "soft",
      terminal_colors = true,
      palette_overrides = {
        bright_red = "#dd7575",
      },
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
