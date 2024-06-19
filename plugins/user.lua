return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "theHamsta/nvim-dap-virtual-text",
    event = "User AstroFile",
  },
  {
    "github/copilot.vim",
    event = "User AstroFile",
  },
  {
    "Pocco81/auto-save.nvim",
    event = "User AstroFile",
    config = function()
      require("auto-save").setup {
        enabled = true,
        trigger_events = {"InsertLeave"},
      }
    end,
  },
  -- {
  --   "ray-x/go.nvim",
  --   dependencies = {
  --     "ray-x/guihua.lua",
  --     "neovim/nvim-lspconfig",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   opts = {},
  --   event = { "CmdlineEnter" },
  --   ft = { "go", "gomod" },
  --   build = ':lua require("go.install").update_all_sync()',
  -- },
  -- {
  --   "nvim-neotest/neotest",
  --   ft = { "go", "rust", "python" },
  --   dependencies = {
  --     "nvim-neotest/neotest-go",
  --     "nvim-neotest/neotest-python",
  --     "rouge8/neotest-rust",
  --     {
  --       "folke/neodev.nvim",
  --       opts = function(_, opts)
  --         opts.library = opts.library or {}
  --         if opts.library.plugins ~= true then
  --           opts.library.plugins = require("astronvim.utils").list_insert_unique(opts.library.plugins, "neotest")
  --         end
  --         opts.library.types = true
  --       end,
  --     },
  --   },
  --   opts = function()
  --     return {
  --       -- your neotest config here
  --       adapters = {
  --         require "neotest-go",
  --         require "neotest-rust",
  --         require "neotest-python",
  --       },
  --     }
  --   end,
  --   config = function(_, opts)
  --     -- get neotest namespace (api call creates or returns namespace)
  --     local neotest_ns = vim.api.nvim_create_namespace "neotest"
  --     vim.diagnostic.config({
  --       virtual_text = {
  --         format = function(diagnostic)
  --           local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
  --           return message
  --         end,
  --       },
  --     }, neotest_ns)
  --     require("neotest").setup(opts)
  --   end,
  -- },
  {
    "catppuccin/nvim",
    optional = true,
    opts = { integrations = { neotest = true } },
  },
}
