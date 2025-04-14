return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  config = function()
    vim.keymap.set("n", "<leader>mdp", ":MarkdownPreviewToggle<CR>")
  end,
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
}
