return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local bg = "#011628"
      local bg_dark = "#011423"
      local bg_highlight = "#143652"
      local bg_search = "#0A64AC"
      local bg_visual = "#275378"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"

      require("tokyonight").setup({
        style = "night",
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.bg_float = bg_dark
          colors.bgc_highlight = bg_highlight
          colors.bg_popup = bg_dark
          colors.bg_search = bg_search
          colors.bg_sidebar = bg_dark
          colors.bg_statusline = bg_dark
          colors.bg_visual = bg_visual
          colors.border = border
          colors.fg = fg
          colors.fg_dark = fg_dark
          colors.fg_float = fg
          colors.fg_gutter = fg_gutter
          colors.fg_sidebar = fg_dark
        end,
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local tokyonight_colors = require("tokyonight.colors").setup()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        borderless_telescope = false,
        theme = {
          highlights = {
            -- If you want to setup Telescope Highlight groups like tokyonight_colors
            -- TelescopeBorder = { fg = tokyonight_colors.border_highlight, bg = tokyonight_colors.bg_float },
            -- TelescopeNormal = { fg = tokyonight_colors.fg, bg = tokyonight_colors.bg_float },
            -- TelescopePromptBorder = { fg = tokyonight_colors.orange, bg = tokyonight_colors.bg_float },
            -- TelescopePromptTitle = { fg = tokyonight_colors.orange, bg = tokyonight_colors.bg_float },
            -- TelescopeResultsComment = { fg = tokyonight_colors.dark3 },
          },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
  {
    "mawkler/modicator.nvim",
    dependencies = "scottmckendry/cyberdream.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}
