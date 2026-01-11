-- bufferline / tabs

return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
      close_command = function(bufnum)
        if vim.fn.tabpagenr("$") > 1 then
          vim.cmd("tabclose")
        end
      end,
    },
  },
}
