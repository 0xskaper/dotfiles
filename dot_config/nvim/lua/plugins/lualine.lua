local colors = {
  bg = "#1b2021",
  fg = "#fbf1c7",
  yellow = "#ECBE7B",
  cyan = "#008080",
  darkblue = "#081633",
  green = "#98be65",
  orange = "#FF8800",
  violet = "#a9a1e1",
  magenta = "#c678dd",
  blue = "#51afef",
  red = "#ec5f67",
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

local getGithubUsername = function()
  local handle = io.popen("git config user.name")
  local result = handle:read("*a")
  return string.sub(result, 1, -2)
end

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = "",
    section_separators = "",
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  tabline = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(tabline)
  table.insert(config.sections.lualine_c, tabline)
end

-- Inserts a tabline in lualine_x at right section
local function ins_right(tabline)
  table.insert(config.sections.lualine_x, tabline)
end

ins_left({
  function ()
    return " "
  end,
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [""] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ["r?"] = colors.cyan,
      ["!"] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()], gui = "bold" }
  end,

  icons_enabled = true,
  padding = { left = 1 },
})

ins_left({
  -- filesize tabline
  "filesize",
  icons_enabled = true,
  cond = conditions.buffer_not_empty,
})

ins_left({
  "filetype",
  icon_only = true,
  colored = true,
})

ins_left({
  "filename",
  cond = conditions.buffer_not_empty,
  color = { fg = colors.fg },
})

ins_left({
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = "✘ ", warn = " ", info = " ", hint = " " },
  colored = true,
  diagnostics_color = {
    -- Same values as the general color option can be used here.
    error = { fg = colors.red }, -- Changes diagnostics' error color.
    warn = { fg = colors.yellow }, -- Changes diagnostics' warn color.
    info = { fg = colors.cyan }, -- Changes diagnostics' info color.
    hint = { fg = colors.green }, -- Changes diagnostics' hint color.
  },
})

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left({
  function()
    return "%="
  end,
})

ins_right({
  "copilot",
  show_running = true,
  symbols = {
    status = {
      enable = "",
      disable = "",
    },
  },
})

ins_right({
  -- Lsp server name .
  function()
    local msg = "No Active Lsp"
    local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  color = { fg = colors.fg },
})

ins_right({
  getGithubUsername,
  icons_enabled = false,
  color = { fg = colors.fg },
})

ins_right({
  "branch",
  color = { fg = colors.fg },
  icons = " ",
})

ins_right({
  "diff",
  symbols = { added = " ", modified = " ", removed = " " },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
})

return {
  { "ofseed/copilot-status.nvim" },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup(config)
    end,
  },
}
