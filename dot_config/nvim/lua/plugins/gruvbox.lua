return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = ...,
  config = function()
    require("gruvbox").setup({
      transparent_mode = true,
      contrast = "hard",
      terminal_colors = true,
      palette_overrides = {
        light0_hard = "#f2e5bc",
        light0 = "#f2e5bc",
        light1 = "#f2e5bc",
        bright_red = "#dd7575",
      },
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
