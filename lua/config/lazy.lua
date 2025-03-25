local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    -- import/override with your plugins
    { import = "plugins" },

    { "hrsh7th/nvim-cmp", enabled = true },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
  highlight = { enable = true },
  indent = { enable = true },
})

require("competitest").setup() -- to use default configuration:
local cmp = require("cmp")
cmp.setup({
  enabled = true, -- false if disabled initially
  sources = {
    { name = "codeium" },
  },
  enable_cmp_source = false,
  virtual_text = {
    enabled = true,

    -- These are the defaults

    -- Set to true if you never want completions to be shown automatically.
    manual = false,
    -- A mapping of filetype to true or false, to enable virtual text.
    filetypes = {},
    -- Whether to enable virtual text of not for filetypes not specifically listed above.
    default_filetype_enabled = true,
    -- How long to wait (in ms) before requesting completions after typing stops.
    idle_delay = 75,
    -- Priority of the virtual text. This usually ensures that the completions appear on top of
    -- other plugins that also add virtual text, such as LSP inlay hints, but can be modified if
    -- desired.
    virtual_text_priority = 65535,
    -- Set to false to disable all key bindings for managing completions.
    map_keys = true,
    -- The key to press when hitting the accept keybinding but no completion is showing.
    -- Defaults to \t normally or <c-n> when a popup is showing.
    accept_fallback = nil,
    -- Key bindings for managing completions in virtual text mode.
    key_bindings = {
      -- Accept the current completion.
      accept = "<Tab>",
      -- Accept the next word.
      accept_word = false,
      -- Accept the next line.
      accept_line = false,
      -- Clear the virtual text.
      clear = false,
      -- Cycle to the next completion.
      next = "<M-]>",
      -- Cycle to the previous completion.
      prev = "<M-[>",
    },
  },
})

require("cyberdream").setup({
  -- Set light or dark variant
  variant = "light", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

  -- Enable transparent background
  transparent = true,
})
require("window-picker").pick_window({
  hint = "floating-big-letter",
})
