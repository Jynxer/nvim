return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-Tab>",
      },
      color = {
        suggestion_color = "#a0a0a0",
        cterm = 244,
      },
    })
  end,
}
