return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default",
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "left",

        mappings = {
          ["t"] = false, -- disable space until we figure out which-key disabling
        },
        position = "float",
        popup = { -- settings that apply to float position only
            size = { height = "80", width = "80" },
            position = "50%", -- 50% means center it
         },
      },
    },
}

