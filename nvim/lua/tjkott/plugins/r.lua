-- R support (RStudio-like features)
return {
  "R-nvim/R.nvim",
  lazy = false,
  config = function()
    -- Create a table with settings for R.nvim
    local opts = {
      R_args = { "--quiet", "--no-save" },
      min_editor_width = 72,
      rconsole_width = 40,
    }
    require("r").setup(opts)

    -- Reliable keymaps for R and Rmd files
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "r", "rmd", "quarto" },
      callback = function()
        local bufopts = { noremap = false, silent = true, buffer = true }
        -- Run line with Enter
        vim.keymap.set("n", "<Enter>", "<Plug>RDSendLine", bufopts)
        vim.keymap.set("v", "<Enter>", "<Plug>RSendSelection", bufopts)
        -- Run entire chunk (Space + r + c)
        vim.keymap.set("n", "<leader>rc", "<Plug>RSendChunk", bufopts)
        -- Run current line (Space + r + l)
        vim.keymap.set("n", "<leader>rl", "<Plug>RDSendLine", bufopts)
      end,
    })
  end,
}
