return {
  "mfussenegger/nvim-dap",
  dependecies = {
    "leoluz/nvim-dap-go",
  },
  config = function()
    local dap = require("dap")

    require('dap-go').setup()

    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
  end,
}
