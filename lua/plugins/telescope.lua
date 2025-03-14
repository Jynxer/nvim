return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules/.*",
        ".api/.*",
      },
    },
  },
}

-- return {
--   "nvim-telescope/telescope.nvim",
--   keys = {
--     {
--       "<leader>fp",
--       function()
--         require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
--       end,
--       desc = "Find Plugin File",
--     },
--   },
--   opts = {
--     defaults = {
--       layout_strategy = "horizontal",
--       layout_config = {
--         prompt_position = "bottom",
--         vertical = { width = 0.5 },
--       },
--       sorting_strategy = "ascending",
--       winblend = 0,
--       borderchars = {
--         prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
--         results = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
--         preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
--       },
--       window = {
--         border = true,
--       },
--       pickers = {
--         find_files = {
--           theme = "dropdown",
--         },
--       },
--     },
--   },
-- }
