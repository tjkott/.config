return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },

      -- bypass file explorer from being saved as last used session
      bypass_session_save_file_types = { "alpha", "dashboard", "NvimTree" },

      -- close NvimTree before saving session
      pre_save_cmds = {
        function()
          local nvim_tree_api = pcall(require, "nvim-tree.api")
          if nvim_tree_api then
            vim.cmd("NvimTreeClose")
          end
        end,
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
  end,
}
