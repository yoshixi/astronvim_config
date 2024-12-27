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
     "nvim-lua/plenary.nvim",
     event = "User AstroFile",
   },
   {
     "CopilotC-Nvim/CopilotChat.nvim",
     branch = "canary",
     dependencies = {
       { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
       { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
     },
     opts = {
       debug = true, -- Enable debugging
       -- See Configuration section for rest
     },
     event = "User AstroFile",
   },
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   lazy = false,
  --   version = false, -- set this if you want to always pull the latest change
  --   opts = {
  --     -- add any opts here
  --   },
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = "make",
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     "stevearc/dressing.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     --- The below dependencies are optional,
  --     {
  --       -- support for image pasting
  --       "HakonHarnes/img-clip.nvim",
  --       event = "VeryLazy",
  --       opts = {
  --         -- recommended settings
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --           -- required for Windows users
  --           use_absolute_path = true,
  --         },
  --       },
  --     },
  --     {
  --       -- Make sure to set this up properly if you have lazy=true
  --       'MeanderingProgrammer/render-markdown.nvim',
  --       opts = {
  --         file_types = { "markdown", "Avante" },
  --       },
  --       ft = { "markdown", "Avante" },
  --     },
  --   },
  -- },
  {
    "Pocco81/auto-save.nvim",
    event = "User AstroFile",
    config = function()
      require("auto-save").setup {
        enabled = true,
        trigger_events = {"InsertLeave"},
        debounce_delay = 5000 -- 1000ms=1s
      }
    end,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    event = "BufWritePost",
    config = function()
      -- vim.diagnostic.config({
      --   virtual_text = false,
      --   virtual_lines = false,
      -- })
      require("lsp_lines").setup()
    end,
  },
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
  {
    "linrongbin16/gitlinker.nvim",
    cmd = "GitLink",
    opts = {},
    keys = {
      { "<leader>gy", "<cmd>GitLink<cr>", mode = { "n", "v" }, desc = "Yank git link" },
      { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
    },
  },
  {
    "klen/nvim-test",
    event = "User AstroFile",
    config = function()
      require('nvim-test').setup()
    end
  },
}
