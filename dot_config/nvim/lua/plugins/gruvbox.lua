return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = ...,
  config = function()
    require("gruvbox").setup({
      transparent_mode = true,
      terminal_colors = true,
      palette_overrides = {
        light0_hard = "#fbf1c7",
        light0 = "#fbf1c7",
        light1 = "#fbf1c7",
        bright_red = "#dd7575",
      },
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
