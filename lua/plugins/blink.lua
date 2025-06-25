return {
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      local disabled = false
      -- Disable in Markdown files
      disabled = disabled or (vim.bo.filetype == "markdown")
      return not disabled
    end,
  },
}
