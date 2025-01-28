return {

  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup()
      vim.keymap.set("n", "<leader>cp", ":CompetiTest run<CR>", { desc = "run problem" })
      vim.keymap.set("n", "<leader>cpa", ":CompetiTest add_testcase<CR>", { desc = "add_testcase" })
      vim.keymap.set("n", "<leader>cpe", ":CompetiTest edit_testcase<CR>", { desc = "edit_testcase" })
      vim.keymap.set("n", "<leader>cps", ":CompetiTest show_ui<CR>", { desc = "show_ui" })
      vim.keymap.set("n", "<leader>cpp", ":CompetiTest receive problem<CR>", { desc = "Fetch a problem" })
      vim.keymap.set("n", "<leader>cpc", ":CompetiTest receive contest<CR>", { desc = "Fetch contest" })
    end,
  },
}
