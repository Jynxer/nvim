-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Custom Keymaps:

vim.keymap.set("n", "<leader>a", "gg0vG$", { desc = "Select entire file" }) -- Visually select entire file
vim.keymap.set("n", "<leader>r", "<cmd>checktime<CR>", { desc = "Refresh buffer" })

-- Harpoon:

local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "Harpoon: Add file to list" })

vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon: Toggle quick menu" })

vim.keymap.set("n", "<leader>h1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon: Go to file 1" })

vim.keymap.set("n", "<leader>h2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon: Go to file 2" })

vim.keymap.set("n", "<leader>h3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon: Go to file 3" })

vim.keymap.set("n", "<leader>h4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon: Go to file 4" })

vim.keymap.set("n", "<leader>hp", function()
  harpoon:list():prev()
end, { desc = "Harpoon: Go to previous file" })

vim.keymap.set("n", "<leader>hn", function()
  harpoon:list():next()
end, { desc = "Harpoon: Go to next file" })

-- Which Key:

local wk = require("which-key")

wk.add({
  { "<leader>h", group = "Harpoon" },
})
