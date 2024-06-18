return {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "deep",
      code_style = {
        keywords = "bold",
      },
      colors = {
        black = "#14161b",
        bg0 = "#14161b",
        bg1 = "#313844",
        bg2 = "#313844",
        bg3 = "#313844",
        bg_d = "#14161b",
        green = "#fd8f3f",
        red = "#bcbec4",
        yellow = "#5dd8ff",
        purple = "#fc6fa3",
        fg = "#bcbec4",
        cyan = "#d0a8ff",
      },
    })
    require("onedark").load()
  end,
}
