return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = ...,
  config = function()
    require("gruvbox").setup({
      contrast = "hard",
      terminal_colors = true,
      palette_overrides = {
        dark0_hard = "#1d2021",
        dark0 = "#1d2021",
        dark1 = "#1d2021",
        bright_red = "#dd7575",
      },
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
