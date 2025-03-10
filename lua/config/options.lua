-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.diagnostic.enable(false)
    -- vim.diagnostic.config({
    --   virtual_text = false, -- Hide inline linting messages for Markdown
    --   signs = true, -- Keep signs in the gutter
    --   underline = true, -- Keep underlines for issues
    -- }, vim.api.nvim_get_current_buf()) -- Apply only to the current buffer
  end,
})
