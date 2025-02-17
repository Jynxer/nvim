return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    on_highlights = function(hl, c)
      hl.AlphaHeader = { fg = c.green }
    end,
  },
}
