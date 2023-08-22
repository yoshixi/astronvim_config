return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
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
}
