return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>n", ":Neotree position=current <CR>", {})
    vim.keymap.set("n", "<leader>c", ":Neotree close <CR>", {})
    vim.keymap.set("n", "<leader>ng", ":Neotree float git_status <CR>", {})
    require("neo-tree").setup({
      window = {
        width = 90,
        auto_expand_width = true
      }
    })
  end,
}
