return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({})
  end,
  vim.cmd("colorscheme rose-pine"),
}
