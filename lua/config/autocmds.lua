-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
    vim.b.autoformat = false
  end,
})

-- Reload buffer on external file change

-- -- Make Neovim notice external file changes
-- vim.o.autoread = true
-- vim.o.updatetime = 500  -- CursorHold fires ~0.5s after you stop typing
--
-- -- Re-check file mtime on common events
-- vim.api.nvim_create_autocmd({ "CursorHold", "FocusGained", "BufEnter", "TermClose", "TermLeave" }, {
--   command = "checktime",
-- })
--
-- -- Optional: show a friendly message when a file was reloaded
-- vim.api.nvim_create_autocmd("FileChangedShellPost", {
--   callback = function()
--     vim.notify("File changed on disk. Buffer reloaded.", vim.log.levels.INFO, { title = "autoread" })
--   end,
-- })
