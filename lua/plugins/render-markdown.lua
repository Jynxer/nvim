return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-mini/mini.nvim",
  },
  ft = { "markdown" },
  opts = {
    heading = {
      sign = false,
      icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },
      backgrounds = {
        "Headline1Bg",
        "Headline2Bg",
        "Headline3Bg",
        "Headline4Bg",
        "Headline5Bg",
        "Headline6Bg",
      },
    },
    bullet = {
      -- Turn on / off list bullet rendering
      enabled = true,
    },
    checkbox = {
      -- Turn on / off checkbox state rendering
      enabled = true,
      -- Determines how icons fill the available space:
      --  inline:  underlying text is concealed resulting in a left aligned icon
      --  overlay: result is left padded with spaces to hide any additional text
      position = "inline",
      unchecked = {
        -- Replaces '[ ]' of 'task_list_marker_unchecked'
        icon = " 󰄱 ",
        -- Highlight for the unchecked icon
        highlight = "RenderMarkdownUnchecked",
        -- Highlight for item associated with unchecked checkbox
        scope_highlight = nil,
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'
        icon = " 󰱒 ",
        -- Highlight for the checked icon
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox
        scope_highlight = nil,
      },
    },
    html = {
      -- Turn on / off all HTML rendering
      enabled = true,
      comment = {
        -- Turn on / off HTML comment concealing
        conceal = false,
      },
    },
  },

  init = function()
    local colors = {
      H1 = "#82aaff", -- blue
      H2 = "#ffc777", -- orange
      H3 = "#c3e88d", -- green
      H4 = "#c099ff", -- purple
      H5 = "#4fd6be", -- teal
      H6 = "#fca7ea", -- magenta
      Base = "#ffffff", -- white
    }

    -- Define heading highlight groups
    -- vim.cmd(string.format("highlight Headline1Bg guibg=%s guifg=%s gui=bold", colors.H1, colors.Base))
    -- vim.cmd(string.format("highlight Headline2Bg guibg=%s guifg=%s gui=bold", colors.H2, colors.Base))
    -- vim.cmd(string.format("highlight Headline3Bg guibg=%s guifg=%s gui=bold", colors.H3, colors.Base))
    -- vim.cmd(string.format("highlight Headline4Bg guibg=%s guifg=%s gui=bold", colors.H4, colors.Base))
    -- vim.cmd(string.format("highlight Headline5Bg guibg=%s guifg=%s gui=bold", colors.H5, colors.Base))
    -- vim.cmd(string.format("highlight Headline6Bg guibg=%s guifg=%s gui=bold", colors.H6, colors.Base))

    vim.cmd(string.format("highlight Headline1Bg guibg=NONE guifg=%s gui=bold", colors.H1))
    vim.cmd(string.format("highlight Headline2Bg guibg=NONE guifg=%s gui=bold", colors.H2))
    vim.cmd(string.format("highlight Headline3Bg guibg=NONE guifg=%s gui=bold", colors.H3))
    vim.cmd(string.format("highlight Headline4Bg guibg=NONE guifg=%s gui=bold", colors.H4))
    vim.cmd(string.format("highlight Headline5Bg guibg=NONE guifg=%s gui=bold", colors.H5))
    vim.cmd(string.format("highlight Headline6Bg guibg=NONE guifg=%s gui=bold", colors.H6))
  end,
}
