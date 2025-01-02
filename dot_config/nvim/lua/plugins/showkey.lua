return {
  "nvchad/showkeys",
  cmd = "ShowkeysToggle",
  opts = {
    timeout = 1,
    maxkeys = 3,
    position = "bottom-center",
  },

  keys = {
    {
      "<leader>kt",
      function()
        vim.cmd("ShowkeysToggle")
      end,
      desc = "Show key presses",
    },
  },
}
