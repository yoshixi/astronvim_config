-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "gopls",
        -- "biome",
        "tailwindcss"
      })

     local nvim_lsp = require "lspconfig"
     nvim_lsp.gopls.setup {
       settings = {
         gopls = {
           analyses = {
             unusedparams = true,
           },
           staticcheck = true,
         },
         completeUnimported = true,
       },
     }
     -- nvim_lsp.tailwindcss.setup {}

    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "go",
        -- "goimports",
        -- "gomodifytags", "gofumpt", "iferr", "impl", "goimports",
        -- "prettier",
        -- "biome"
        -- "stylua",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "delve",
        -- "python",
      })
    end,
  },
}
