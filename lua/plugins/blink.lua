return {
  "saghen/blink.cmp",
  opts = {
    -- Other configuration options...
    enabled = function()
      local disabled = false
      -- Disable in Markdown files
      disabled = disabled or (vim.bo.filetype == "markdown")
      -- Disable in prompt buffers
      -- disaled = disabled or (vim.bo.buftype == "prompt")
      -- Add any additional conditions here
      return not disabled
    end,
  },
}
