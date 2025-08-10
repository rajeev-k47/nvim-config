return {
  "kawre/leetcode.nvim",
  dependencies = {
    -- include a picker of your choice, see picker section for more details
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  plugins = {
    non_standalone = false,
  },
  config = function()
    require("leetcode").setup()
    vim.keymap.set("n", "<leader>lu", ":Leet<CR>", { desc = "Start leetcode" })
    vim.keymap.set("n", "<leader>lc", ":Leet console<CR>", { desc = "Open leetcode console" })
    vim.keymap.set("n", "<leader>li", ":Leet info<CR>", { desc = "Info" })
    vim.keymap.set("n", "<leader>lt", ":Leet tabs<CR>", { desc = "Tabs" })
    vim.keymap.set("n", "<leader>ll", ":Leet lang<CR>", { desc = "Lang" })
    vim.keymap.set("n", "<leader>lr", ":Leet run<CR>", { desc = "Run" })
    vim.keymap.set("n", "<leader>ls", ":Leet submit<CR>", { desc = "Submit" })
  end,
  opts = {
    -- configuration goes here
    arg = "l",
  },
}
