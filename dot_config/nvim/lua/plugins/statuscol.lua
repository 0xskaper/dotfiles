return {
  "luukvbaal/statuscol.nvim",
  config = function()
    require("statuscol").setup({
      relculright = true,
      segments = {
        {
          sign = { maxwidth = 1, colwidth = 2 },
        },
      },
    })
  end,
}
