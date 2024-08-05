return {
  "luukvbaal/statuscol.nvim",
  config = function()
    require("statuscol").setup({
      relculright = true,
      segments = {
        {
          sign = { maxwidth = 2, colwidth = 1 },
        },
      },
    })
  end,
}
