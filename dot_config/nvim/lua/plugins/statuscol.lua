return {
  "luukvbaal/statuscol.nvim",
  config = function()
    require("statuscol").setup({
      relculright = true,
      {
        sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
      },
    })
  end,
}
