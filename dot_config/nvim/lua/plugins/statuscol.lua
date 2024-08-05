return {
  "luukvbaal/statuscol.nvim",
  config = function()
    require("statuscol").setup({
      relculright = true,
      segments = {
        {
          sign = { maxwidth = 0, colwidth = 0 },
        },
      },
    })
  end,
}
