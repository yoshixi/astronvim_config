-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-f>"] = { ":Telescope find_files<CR>", desc = "Find Files" },  -- change description but the same command
    ["<C-k>"] = { ":Telescope live_grep<CR>", desc = "Find Files" },  -- change description but the same command
    ["<leader>vv"] = { ":Telescope registers<CR>", desc = "Find registers" },  -- change description but the same command
    -- resize window
    ["tl"] = { ":vertical resize -10<CR>" },
    ["th"] = { ":vertical resize +20<CR>" },
    ["tj"] = { ":resize +10<CR>" },
    ["tk"] = { ":resize -10<CR>" },
    ["t=>"] = { "<C-w>=", desc = "Resize equal" },
    -- quick chat with Copilot
    ["<leader>ccq"] = {
      function()
        local input = vim.fn.input("Quick Chat: ")
         if input ~= "" then
           require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
         end 
      end,
      desc = "Quick Chat",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
