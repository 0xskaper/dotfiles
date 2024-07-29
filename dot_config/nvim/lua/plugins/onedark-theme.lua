return {
   "navarasu/onedark.nvim",
   config = function()
     require("onedark").setup({
       style = "deep",
       code_style = {
         keywords = "bold",
       },
       colors = {
         black = "#0c0e15",
         bg0 = "#0c0e15",
         bg1 = "#313844",
         bg2 = "#313844",
         bg3 = "#313844",
         bg_d = "#0c0e15",
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
