return {
  -- Render markdown in the buffer (Visual Mode look)
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    ft = { "markdown", "rmd" },
    opts = {
      file_types = { "markdown", "rmd" },
      latex = {
        enabled = true,
        -- Use a cleaner style for math blocks
        top_pad = 0,
        bottom_pad = 0,
      },
    },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      -- Ensure conceal is on for these filetypes
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "markdown", "rmd" },
        callback = function()
          vim.opt_local.conceallevel = 2
        end,
      })
    end,
  },

  -- Live preview in web browser
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown", "rmd" }
    end,
    ft = { "markdown", "rmd" },
  },
}
