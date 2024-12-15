return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = ...,
  config = function()
    require("gruvbox").setup({
      terminal_colors = true,
      contrast = "hard",
      palette_overrides = {
        dark0_hard = "#3c3836",
        darlk1 = "#3c3836",
        bright_red = "#dd7575",
      },
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
