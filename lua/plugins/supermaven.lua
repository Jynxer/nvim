return {
  "supermaven-inc/supermaven-nvim",
  lazy = true, -- Prevents auto-loading
  cmd = { "SupermavenStart", "SupermavenStop" }, -- Loads only when these commands are used
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
