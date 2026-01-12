return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = vim.split(
        [[
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠚⠉⠑⠢⣄⡀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠊⠉⠓⠦⣀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⢸⡙⠢⢄⡀⠀⠀⠀⠉⠒⢤⣀⢀⡤⠖⠉⠀⠀⠀⢀⣠⠔⠚⡇⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠉⠓⢤⣀⠀⠀⠀⠈⠁⠀⠀⠀⣀⡤⠒⠉⠀⠀⢈⡇⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠀⢀⡤⠞⠉⠀⠀⠀⠀⠀⠀⠉⠳⢤⡀⠀⠀⠀⠠⡇⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⢸⢄⣠⠴⠚⠁⠀⠀⠀⢀⡤⠺⡗⢤⣀⠀⠀⠀⠈⠑⠦⣄⢰⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀    ⠀⠀⢀⡠⢾⠿⢄⡀⠀⠀⣠⠴⠊⠁⠀⠘⡅⠀⠈⠑⠢⣄⡀⠀⢀⡠⠿⡷⢤⡀⠀⠀⠀⠀⠀
   ⠀⠀⣀⠴⠚⠁⠀⢸⡂⠀⠉⢳⠋⠀⠀⠀⠀⠀⢈⡇⠀⠀⠀⠀⠀⠉⡞⠉⠀⠰⡇⠀⠈⠓⠦⣄⠀⠀
   ⣰⢯⡁⠀⠀⠀⠀⢸⡄⠀⠀⢸⠀⠀⠀⠀⠀⠀⢈⡇⠀⠀⠀⠀⠀⠀⡇⠀⠀⠐⡇⠀⠀⠀⠀⢀⡽⡆
   ⢼⠀⠈⠑⠦⣄⠀⢸⡆⠀⠀⢸⠀⠀⠀⠀⠀⣀⡬⠧⣀⠀⠀⠀⠀⠀⡇⠀⠀⠨⡇⠀⣠⠴⠚⠁⠀⡇
   ⠻⣄⡀⠀⠀⠀⠙⠺⡄⠀⠀⢸⠀⢀⣠⠔⠊⠁⠀⠀⠈⠙⠢⣄⡀⠀⡇⠀⠀⢘⠗⠋⠀⠀⠀⠀⣠⠏
   ⠀⠀⠉⠲⢤⣀⠀⠀⠀⠀⠀⠸⣞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣳⠯⠀⠀⠀⠀⠀⢀⡤⠖⠉⠀⠀
⠀⠀    ⠀⠀⠈⠑⢦⠄⠀⠀⠀⠀⠙⠲⢄⡀⠀⠀⠀⠀⢀⡠⠔⠋⠀⠀⠀⠀⠠⡴⠊⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀    ⢸⡁⠀⠀⢤⡀⠀⠀⠀⠈⠓⢦⡤⠚⠉⠀⠀⠀⢀⡄⠀⠀⠐⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀    ⠀⠀⠀⢸⡁⠀⠀⢸⠈⠓⠦⣀⠀⠀⢠⡇⠀⠀⣀⠴⠚⠁⡇⠀⠀⢈⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀    ⢸⡁⠀⠀⢸⠀⠀⠀⠀⠙⠲⢴⡧⠖⠋⠀⠀⠀⠀⡇⠀⠀⠠⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀    ⢸⡄⠀⠀⢸⠀⠀⠀⣀⠤⠚⠁⠈⠓⠦⣀⠀⠀⠀⡇⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀    ⠉⠲⢤⣸⡠⠔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠙⠲⢄⣇⡤⠖⠉⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    ⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀
                            _
      _ __   ___  _____   _(_)_ __ ___  
     | '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
     | | | |  __/ (_) \ V /| | | | | | |
     |_| |_|\___|\___/ \_/ |_|_| |_| |_|⠀⠀⠀⠀⠀⠀⠀
]],
        "\n",
        {}
      )

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", "<cmd> lua LazyVim.pick()() <cr>"),
        dashboard.button("n", " " .. " New file", [[<cmd> ene <BAR> startinsert <cr>]]),
        dashboard.button("r", " " .. " Recent files", [[<cmd> lua LazyVim.pick("oldfiles")() <cr>]]),
        dashboard.button("g", " " .. " Find text", [[<cmd> lua LazyVim.pick("live_grep")() <cr>]]),
        dashboard.button("c", " " .. " Config", "<cmd> lua LazyVim.pick.config_files()() <cr>"),
        dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("x", " " .. " Lazy Extras", "<cmd> LazyExtras <cr>"),
        dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
        dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
      }

      -- Footer setup
      local function setup_footer()
        vim.api.nvim_create_autocmd("User", {
          pattern = "LazyVimStarted",
          callback = function()
            local lazy = require("lazy").stats()
            dashboard.section.footer.val =
              string.format("⚡ Loaded %d/%d plugins in %.2fms", lazy.loaded, lazy.count, lazy.startuptime)
            pcall(vim.cmd.AlphaRedraw)
          end,
        })
      end

      setup_footer()

      alpha.setup(dashboard.opts)
    end,
  },
}
