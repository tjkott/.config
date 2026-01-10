return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")
    --
    todo_comments.setup({
      keywords = {
        FIX = {
          icon = " ", -- icon used for the sign, and in search results
          color = "error", -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a list of keywords to search for
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "HINT" } },
        PERF = { icon = " ", alt = { "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      },
      -- palette for the colors
      colors = {
        error = { "LspDiagnosticsSignError", "ErrorMsg", "#DC2626" },
        warning = { "LspDiagnosticsSignWarning", "WarningMsg", "#FBBF24" },
        info = { "LspDiagnosticsSignInformation", "InfoMsg", "#2563EB" },
        hint = { "LspDiagnosticsSignHint", "HintMsg", "#10B981" },
        default = { "Identifier", "#7C3AED" },
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Previous todo comment" })
  end,
}
