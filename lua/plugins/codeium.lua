return {
  {

    "Exafunction/codeium.nvim",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("codeium").setup({})
    end,
  },
}
