return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = ...,
  config = function()
    require("gruvbox").setup({
      contrast = "hard",
      terminal_colors = true,
      italic = {
        strings = false,
      },
      overrides = {
        CursorLineNr = { fg = "#000000" },
        Keyword = { fg = "#B33F40", bold = true },
      },
      palette_overrides = {
        dark0_hard = "#0d1316",
        dark0 = "#0d1316",
        dark1 = "#0d1316",
        bright_red = "#B33F40",
        light0_hard = "#F2E5BC",
        light0_soft = "#F2E5BC",
        light1 = "#F2E5BC",
      },
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
