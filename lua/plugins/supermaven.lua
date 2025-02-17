return {
  "supermaven-inc/supermaven-nvim",
  cmd = { "SupermavenStart" },
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      color = {
        suggestion_color = "#a0a0a0",
        cterm = 244,
      },
    })
  end,
}
