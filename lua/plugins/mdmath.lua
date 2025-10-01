return {
  "Thiago4532/mdmath.nvim",
  ft = { "markdown" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    filetypes = { "markdown" },
    foreground = "Normal", -- or "#ffffff"
    anticonceal = true,
    hide_on_insert = true,
    dynamic = true, -- larger, crisp display for $$ blocks
    dynamic_scale = 1.0,
    update_interval = 300,
    internal_scale = 1.2,
  },
}
